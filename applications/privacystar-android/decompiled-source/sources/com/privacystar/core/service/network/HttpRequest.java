package com.privacystar.core.service.network;

import com.privacystar.core.service.network.HttpConnection;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/HttpRequest.class */
public class HttpRequest {
    private static final int DEFAULT_CONN_TIMEOUT = -1;
    private static final int DEFAULT_READ_TIMEOUT = -1;
    HttpConnection mConnection;

    public HttpRequest(String str, HttpConnection.Method method) {
        this(str, method, -1, -1, null);
    }

    public HttpRequest(String str, HttpConnection.Method method, int i, int i2, Map<String, String> map) {
        this(str, method, i, i2, map, null, null);
    }

    public HttpRequest(String str, HttpConnection.Method method, int i, int i2, Map<String, String> map, String str2, String str3) {
        Map<String, String> addDefaultHeaders = HttpConnection.addDefaultHeaders(map);
        this.mConnection = new HttpConnection(str, method, i, i2, str2, str3);
        this.mConnection.addExtraHeaders(addDefaultHeaders);
    }

    public HttpResponse makeRequest() {
        try {
            return this.mConnection.connect();
        } finally {
            this.mConnection.disconnect();
        }
    }
}
