FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install && npm install -g http-server
COPY . .
RUN npm run build
WORKDIR /app/dist
EXPOSE 8080
CMD ["http-server", "-p", "8080"]
