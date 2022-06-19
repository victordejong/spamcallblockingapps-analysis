package com.mopub.volley;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/NetworkError.class */
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
