package com.zhy.http.okhttp.callback;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/callback/BitmapCallback.class */
public abstract class BitmapCallback extends Callback<Bitmap> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.zhy.http.okhttp.callback.Callback
    public Bitmap parseNetworkResponse(Response response, int i) {
        return BitmapFactory.decodeStream(response.body().byteStream());
    }
}
