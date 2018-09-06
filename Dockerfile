FROM alpine
MAINTAINER D119 <contact@moonbear.cn>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update && apk upgrade \
    && apk add --no-cache musl-dev caddy yarn nodejs go git \
    && rm -rf /var/cache/apk/*

ENV GOPATH /root/go
ENV PATH $GOPATH/bin:$PATH