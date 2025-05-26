FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.h1elzlg.mongodb.net
ENV MONGODB_USERNAME gurrakotavikas
ENV MONGODB_PASSWORD GCV2Ywo04I5HRR0U

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]