package com.google.firebase.perf.network;

import com.google.firebase.perf.e.a;
import com.google.firebase.perf.p084g.C2431k;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
/* renamed from: com.google.firebase.perf.network.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/g.class */
public class C2438g implements Callback {

    /* renamed from: a */
    private final Callback f10678a;

    /* renamed from: b */
    private final a f10679b;

    /* renamed from: c */
    private final long f10680c;

    /* renamed from: d */
    private final Timer f10681d;

    public C2438g(Callback callback, C2431k c2431k, Timer timer, long j) {
        this.f10678a = callback;
        this.f10679b = a.c(c2431k);
        this.f10680c = j;
        this.f10681d = timer;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        Request request = call.request();
        if (request != null) {
            HttpUrl url = request.url();
            if (url != null) {
                this.f10679b.x(url.url().toString());
            }
            if (request.method() != null) {
                this.f10679b.l(request.method());
            }
        }
        this.f10679b.p(this.f10680c);
        this.f10679b.v(this.f10681d.m3587b());
        C2439h.m3589d(this.f10679b);
        this.f10678a.onFailure(call, iOException);
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        FirebasePerfOkHttpClient.m3650a(response, this.f10679b, this.f10680c, this.f10681d.m3587b());
        this.f10678a.onResponse(call, response);
    }
}
