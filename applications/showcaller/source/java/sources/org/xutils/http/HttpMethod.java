package org.xutils.http;

import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/HttpMethod.class */
public enum HttpMethod {
    GET("GET"),
    POST("POST"),
    PUT(OkHttpUtils.METHOD.PUT),
    PATCH(OkHttpUtils.METHOD.PATCH),
    HEAD(OkHttpUtils.METHOD.HEAD),
    MOVE("MOVE"),
    COPY("COPY"),
    DELETE(OkHttpUtils.METHOD.DELETE),
    OPTIONS("OPTIONS"),
    TRACE("TRACE"),
    CONNECT("CONNECT");
    
    private final String value;

    HttpMethod(String str) {
        this.value = str;
    }

    public static boolean permitsCache(HttpMethod httpMethod) {
        return httpMethod == GET || httpMethod == POST;
    }

    public static boolean permitsRequestBody(HttpMethod httpMethod) {
        return httpMethod == null || httpMethod == POST || httpMethod == PUT || httpMethod == PATCH || httpMethod == DELETE;
    }

    public static boolean permitsRetry(HttpMethod httpMethod) {
        return httpMethod == GET;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
