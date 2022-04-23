package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {

    /* renamed from: a  reason: collision with root package name */
    protected int f34720a;

    /* renamed from: b  reason: collision with root package name */
    protected int f34721b;

    /* renamed from: c  reason: collision with root package name */
    protected int f34722c;

    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return this.f34720a;
    }

    public int getRetryCount() {
        return this.f34721b;
    }

    public boolean hasAttemptRemaining() {
        return this.f34721b < this.f34722c;
    }
}
