package com.aotter.net.volley;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/RetryPolicy.class */
public interface RetryPolicy {
    int getCurrentRetryCount();

    int getCurrentTimeout();

    void retry(VolleyError volleyError);
}
