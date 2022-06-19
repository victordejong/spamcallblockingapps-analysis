package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {

    /* renamed from: a */
    protected int f60288a;

    /* renamed from: b */
    protected int f60289b;

    /* renamed from: c */
    protected int f60290c;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f60288a;
    }

    public int getRetryCount() {
        return this.f60289b;
    }

    public boolean hasAttemptRemaining() {
        return this.f60289b < this.f60290c;
    }
}
