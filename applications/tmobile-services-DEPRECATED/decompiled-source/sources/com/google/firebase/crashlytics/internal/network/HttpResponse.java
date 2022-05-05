package com.google.firebase.crashlytics.internal.network;

import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Response;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/network/HttpResponse.class */
public class HttpResponse {
    private String body;
    private int code;
    private Headers headers;

    HttpResponse(int i, String str, Headers headers) {
        this.code = i;
        this.body = str;
        this.headers = headers;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpResponse create(Response response) throws IOException {
        return new HttpResponse(response.code(), response.body() == null ? null : response.body().string(), response.headers());
    }

    public String body() {
        return this.body;
    }

    public int code() {
        return this.code;
    }

    public String header(String str) {
        return this.headers.get(str);
    }
}
