FROM openjdk:8u191-jre-alpine3.9

COPY target/uberjar/salttoday.jar /opt/salttoday.jar
COPY server/prod-config.edn /opt/prod-config.edn

EXPOSE 3000

CMD ["java", "-Dconf=\"/opt/prod-config.edn\"", "-jar", "/opt/salttoday.jar"]
