package com.aotter.net.volley;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/NetworkError.class */
public class NetworkError extends VolleyError {
    public NetworkError() {
    }

    public NetworkError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public NetworkError(Throwable th) {
        super(th);
    }
}
