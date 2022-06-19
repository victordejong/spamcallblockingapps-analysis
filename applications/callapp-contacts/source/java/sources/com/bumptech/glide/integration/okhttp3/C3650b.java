package com.bumptech.glide.integration.okhttp3;

import android.util.Log;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.p116g.C3633c;
import com.bumptech.glide.p116g.C3643j;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* renamed from: com.bumptech.glide.integration.okhttp3.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/integration/okhttp3/b.class */
public final class C3650b implements AbstractC3673d<InputStream>, Callback {

    /* renamed from: a */
    private final Call.Factory f13759a;

    /* renamed from: b */
    private final GlideUrl f13760b;

    /* renamed from: c */
    private InputStream f13761c;

    /* renamed from: d */
    private ResponseBody f13762d;

    /* renamed from: e */
    private AbstractC3673d.AbstractC3674a<? super InputStream> f13763e;

    /* renamed from: f */
    private volatile Call f13764f;

    public C3650b(Call.Factory factory, GlideUrl glideUrl) {
        this.f13759a = factory;
        this.f13760b = glideUrl;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cancel() {
        Call call = this.f13764f;
        if (call != null) {
            call.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cleanup() {
        try {
            InputStream inputStream = this.f13761c;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e) {
        }
        ResponseBody responseBody = this.f13762d;
        if (responseBody != null) {
            responseBody.close();
        }
        this.f13763e = null;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final EnumC3658a getDataSource() {
        return EnumC3658a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super InputStream> abstractC3674a) {
        Request.Builder url = new Request.Builder().url(this.f13760b.toStringUrl());
        for (Map.Entry<String, String> entry : this.f13760b.getHeaders().entrySet()) {
            url.addHeader(entry.getKey(), entry.getValue());
        }
        Request build = url.build();
        this.f13763e = abstractC3674a;
        this.f13764f = this.f13759a.newCall(build);
        this.f13764f.enqueue(this);
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.f13763e.onLoadFailed(iOException);
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        this.f13762d = response.body();
        if (!response.isSuccessful()) {
            this.f13763e.onLoadFailed(new HttpException(response.message(), response.code()));
            return;
        }
        InputStream m37598a = C3633c.m37598a(this.f13762d.byteStream(), ((ResponseBody) C3643j.m37588a(this.f13762d, "Argument must not be null")).contentLength());
        this.f13761c = m37598a;
        this.f13763e.onDataReady(m37598a);
    }
}
