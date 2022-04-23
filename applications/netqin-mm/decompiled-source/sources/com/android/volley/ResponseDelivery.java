package com.android.volley;
/* loaded from: classes-dex2jar.jar:com/android/volley/ResponseDelivery.class */
public interface ResponseDelivery {
    void postError(Request<?> request, VolleyError volleyError);

    void postResponse(Request<?> request, Response<?> response);

    void postResponse(Request<?> request, Response<?> response, Runnable runnable);
}
