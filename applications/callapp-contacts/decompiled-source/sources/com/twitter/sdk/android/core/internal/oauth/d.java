package com.twitter.sdk.android.core.internal.oauth;

import android.os.Build;
import com.google.gson.f;
import com.twitter.sdk.android.core.internal.a.e;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.r;
import java.io.IOException;
import java.text.Normalizer;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import retrofit2.Retrofit;
import retrofit2.a.a.a;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/d.class */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private final r f35175a;

    /* renamed from: b  reason: collision with root package name */
    private final g f35176b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35177c;

    /* renamed from: d  reason: collision with root package name */
    private final Retrofit f35178d = new Retrofit.a().a(getApi().f35159a).a(new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.twitter.sdk.android.core.internal.oauth._$$Lambda$d$gk1xLIV8KoOOOd_2JRTYWkaVDBM
        @Override // okhttp3.Interceptor
        public final Response intercept(Interceptor.Chain chain) {
            Response a2;
            a2 = d.this.a(chain);
            return a2;
        }
    }).certificatePinner(e.a()).build()).a(a.a(new f())).a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(r rVar, g gVar) {
        this.f35175a = rVar;
        this.f35176b = gVar;
        String b2 = r.b();
        this.f35177c = g.a(Normalizer.normalize("TwitterAndroidSDK/" + b2 + ' ' + Build.MODEL + '/' + Build.VERSION.RELEASE + " (" + Build.MANUFACTURER + ';' + Build.MODEL + ';' + Build.BRAND + ';' + Build.PRODUCT + ')', Normalizer.Form.NFD));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Response a(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().header("User-Agent", getUserAgent()).build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g getApi() {
        return this.f35176b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Retrofit getRetrofit() {
        return this.f35178d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public r getTwitterCore() {
        return this.f35175a;
    }

    protected String getUserAgent() {
        return this.f35177c;
    }
}
