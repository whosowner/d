FROM node:18-alpine

RUN apk add --no-cache openssh-client

RUN npm install -g wetty

ENV PORT=3000
EXPOSE 3000

CMD ["wetty", "--port", "3000", "--ssh-host", "localhost"]
