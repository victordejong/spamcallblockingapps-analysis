package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {

    /* renamed from: a */
    public int f5390a;

    /* renamed from: b */
    public int f5391b;

    /* renamed from: c */
    public int f5392c;

    public abstract void backoff(VolleyError volleyError);

    public int getBackoffMs() {
        return this.f5390a;
    }

    public int getRetryCount() {
        return this.f5391b;
    }

    public boolean hasAttemptRemaining() {
        return this.f5391b < this.f5392c;
    }
}
