package com.mopub.network;

import com.mopub.volley.VolleyError;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/BackoffPolicy.class */
public abstract class BackoffPolicy {
    public abstract void backoff(VolleyError volleyError) throws VolleyError;

    public int getBackoffMs() {
        return 0;
    }

    public int getRetryCount() {
        return 0;
    }

    public boolean hasAttemptRemaining() {
        return false;
    }
}
