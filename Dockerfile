FROM centos:7
LABEL maintainer="3020456227@qq.com"
COPY ./nginx.repo/etc/yum.repos.d
RUN yum makecache
Run yum install -y nginx
RUN echo "Hello! This is nginx server " >/usr/share/nginx/html/index.html
EXPOSE 80
