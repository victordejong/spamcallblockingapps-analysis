package com.yanzhenjie.nohttp.rest;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/OnResponseListener.class */
public interface OnResponseListener<T> {
    void onFailed(int i, Response<T> response);

    void onFinish(int i);

    void onStart(int i);

    void onSucceed(int i, Response<T> response);
}
