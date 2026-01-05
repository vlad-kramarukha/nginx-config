FROM nginx:alpine
LABEL authors="Vlad Kramarukha"

VOLUME ./nginx.conf:/etc/nginx/nginx.conf
VOLUME /etc/letsencrypt:/etc/letsencrypt

EXPOSE 80/tcp
EXPOSE 443/tcp

ENTRYPOINT ["nginx", "-g", "daemon off;"]