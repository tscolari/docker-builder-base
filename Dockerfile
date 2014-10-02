# RUBY MACHINE
FROM tscolari/base
MAINTAINER Tiago Scolari <tscolari@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --force-yes \
                         build-essential \
                         openssl \
                         ca-certificates \
                         git-core \
                         autoconf \
                         gawk \
                         libreadline6-dev \
                         libyaml-dev \
                         libgdbm-dev \
                         libncurses5-dev \
                         automake \
                         libtool \
                         bison \
                         pkg-config \
                         curl \
                         libxslt-dev \
                         libxml2-dev \
                         make && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
