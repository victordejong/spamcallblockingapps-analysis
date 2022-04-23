package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {

    /* renamed from: a */
    public int f9420a;

    /* renamed from: b */
    public int f9421b;

    /* renamed from: c */
    public int f9422c;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f9420a;
    }

    public int getRetryCount() {
        return this.f9421b;
    }

    public boolean hasAttemptRemaining() {
        return this.f9421b < this.f9422c;
    }
}
