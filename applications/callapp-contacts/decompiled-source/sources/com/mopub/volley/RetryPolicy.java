package com.mopub.volley;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/RetryPolicy.class */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError) throws VolleyError;
}
