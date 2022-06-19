package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/NetworkError.class */
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
