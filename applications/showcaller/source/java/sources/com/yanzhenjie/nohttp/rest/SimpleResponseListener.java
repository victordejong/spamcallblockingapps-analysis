package com.yanzhenjie.nohttp.rest;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/rest/SimpleResponseListener.class */
public abstract class SimpleResponseListener<T> implements OnResponseListener<T> {
    @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
    public void onFailed(int i, Response<T> response) {
    }

    @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
    public void onFinish(int i) {
    }

    @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
    public void onStart(int i) {
    }

    @Override // com.yanzhenjie.nohttp.rest.OnResponseListener
    public void onSucceed(int i, Response<T> response) {
    }
}
