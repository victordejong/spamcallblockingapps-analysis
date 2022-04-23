package com.amazonaws.internal.config;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/HttpClientConfig.class */
public class HttpClientConfig {
    public final String serviceName;

    public HttpClientConfig(String str) {
        this.serviceName = str;
    }

    public String getServiceName() {
        return this.serviceName;
    }

    public String toString() {
        return "serviceName: " + this.serviceName;
    }
}
