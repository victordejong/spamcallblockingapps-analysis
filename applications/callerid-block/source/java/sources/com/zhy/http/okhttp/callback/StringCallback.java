package com.zhy.http.okhttp.callback;

import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/callback/StringCallback.class */
public abstract class StringCallback extends Callback<String> {
    @Override // com.zhy.http.okhttp.callback.Callback
    public String parseNetworkResponse(Response response, int i) {
        return response.body().string();
    }
}
