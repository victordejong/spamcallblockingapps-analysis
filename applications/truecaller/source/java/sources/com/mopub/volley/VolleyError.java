package com.mopub.volley;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyError.class */
public class VolleyError extends Exception {

    /* renamed from: a */
    public long f9305a;
    public final NetworkResponse networkResponse;

    public VolleyError() {
        this.networkResponse = null;
    }

    public VolleyError(NetworkResponse networkResponse) {
        this.networkResponse = networkResponse;
    }

    public VolleyError(String str) {
        super(str);
        this.networkResponse = null;
    }

    public VolleyError(String str, Throwable th) {
        super(str, th);
        this.networkResponse = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.networkResponse = null;
    }

    public long getNetworkTimeMs() {
        return this.f9305a;
    }
}
