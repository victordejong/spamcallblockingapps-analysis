package com.twitter.sdk.android.core.internal.oauth;

import android.os.Build;
import com.google.gson.C15965f;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.p485a.C17241e;
import java.io.IOException;
import java.text.Normalizer;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.p604a.p605a.C21037a;
/* renamed from: com.twitter.sdk.android.core.internal.oauth.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/d.class */
public abstract class AbstractC17268d {

    /* renamed from: a */
    private final C17288r f61026a;

    /* renamed from: b */
    private final C17254g f61027b;

    /* renamed from: c */
    private final String f61028c;

    /* renamed from: d */
    private final Retrofit f61029d = new Retrofit.C21029a().m100a(getApi().f61007a).m97a(new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth._$$Lambda$d$gk1xLIV8KoOOOd_2JRTYWkaVDBM
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response m5638a;
            m5638a = AbstractC17268d.this.m5638a(chain);
            return m5638a;
        }
    }).certificatePinner(C17241e.m5684a()).build()).m96a(C21037a.m94a(new C15965f())).m101a();

    public AbstractC17268d(C17288r c17288r, C17254g c17254g) {
        this.f61026a = c17288r;
        this.f61027b = c17254g;
        String m5624b = C17288r.m5624b();
        this.f61028c = C17254g.m5660a(Normalizer.normalize("TwitterAndroidSDK/" + m5624b + ' ' + Build.MODEL + '/' + Build.VERSION.RELEASE + " (" + Build.MANUFACTURER + ';' + Build.MODEL + ';' + Build.BRAND + ';' + Build.PRODUCT + ')', Normalizer.Form.NFD));
    }

    /* renamed from: a */
    public /* synthetic */ Response m5638a(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().header("User-Agent", getUserAgent()).build());
    }

    public C17254g getApi() {
        return this.f61027b;
    }

    public Retrofit getRetrofit() {
        return this.f61029d;
    }

    public C17288r getTwitterCore() {
        return this.f61026a;
    }

    protected String getUserAgent() {
        return this.f61028c;
    }
}
