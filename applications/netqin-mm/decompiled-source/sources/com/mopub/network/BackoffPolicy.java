package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {

    /* renamed from: a */
    public int f35018a;

    /* renamed from: b */
    public int f35019b;

    /* renamed from: c */
    public int f35020c;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f35018a;
    }

    public int getRetryCount() {
        return this.f35019b;
    }

    public boolean hasAttemptRemaining() {
        return this.f35019b < this.f35020c;
    }
}
