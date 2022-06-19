package com.mopub.volley;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/VolleyError.class */
public class VolleyError extends Exception {

    /* renamed from: a */
    public long f5500a;
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

    /* renamed from: a */
    public void m3158a(long j) {
        this.f5500a = j;
    }

    public long getNetworkTimeMs() {
        return this.f5500a;
    }
}
