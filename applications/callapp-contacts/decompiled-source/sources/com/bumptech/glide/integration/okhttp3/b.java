package com.bumptech.glide.integration.okhttp3;

import android.util.Log;
import com.bumptech.glide.g.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.h;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/b.class */
public final class b implements d<InputStream>, Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f7362a;

    /* renamed from: b  reason: collision with root package name */
    private final GlideUrl f7363b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f7364c;

    /* renamed from: d  reason: collision with root package name */
    private ResponseBody f7365d;
    private d.a<? super InputStream> e;
    private volatile Call f;

    public b(Call.Factory factory, GlideUrl glideUrl) {
        this.f7362a = factory;
        this.f7363b = glideUrl;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
        Call call = this.f;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cleanup() {
        try {
            InputStream inputStream = this.f7364c;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e) {
        }
        ResponseBody responseBody = this.f7365d;
        if (responseBody != null) {
            responseBody.close();
        }
        this.e = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final a getDataSource() {
        return a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void loadData(h hVar, d.a<? super InputStream> aVar) {
        Request.Builder url = new Request.Builder().url(this.f7363b.toStringUrl());
        for (Map.Entry<String, String> entry : this.f7363b.getHeaders().entrySet()) {
            url.addHeader(entry.getKey(), entry.getValue());
        }
        Request build = url.build();
        this.e = aVar;
        this.f = this.f7362a.newCall(build);
        this.f.enqueue(this);
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.e.onLoadFailed(iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.f7365d = response.body();
        if (response.isSuccessful()) {
            InputStream a2 = c.a(this.f7365d.byteStream(), ((ResponseBody) j.a(this.f7365d, "Argument must not be null")).contentLength());
            this.f7364c = a2;
            this.e.onDataReady(a2);
            return;
        }
        this.e.onLoadFailed(new HttpException(response.message(), response.code()));
    }
}
