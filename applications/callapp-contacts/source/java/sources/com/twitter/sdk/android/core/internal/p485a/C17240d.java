package com.twitter.sdk.android.core.internal.p485a;

import com.twitter.sdk.android.core.C17278l;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.C17266b;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* renamed from: com.twitter.sdk.android.core.internal.a.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/d.class */
public final class C17240d implements Interceptor {

    /* renamed from: a */
    final C17278l<? extends TwitterAuthToken> f60989a;

    /* renamed from: b */
    final TwitterAuthConfig f60990b;

    public C17240d(C17278l<? extends TwitterAuthToken> c17278l, TwitterAuthConfig twitterAuthConfig) {
        this.f60989a = c17278l;
        this.f60990b = twitterAuthConfig;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        HttpUrl url = request.url();
        HttpUrl.Builder query = url.newBuilder().query(null);
        int querySize = url.querySize();
        for (int i = 0; i < querySize; i++) {
            query.addEncodedQueryParameter(C17242f.m5678b(url.queryParameterName(i)), C17242f.m5678b(url.queryParameterValue(i)));
        }
        Request build = newBuilder.url(query.build()).build();
        Request.Builder newBuilder2 = build.newBuilder();
        new C17266b();
        TwitterAuthConfig twitterAuthConfig = this.f60990b;
        TwitterAuthToken twitterAuthToken = (TwitterAuthToken) this.f60989a.f61035a;
        String method = build.method();
        String httpUrl = build.url().toString();
        HashMap hashMap = new HashMap();
        if ("POST".equals(build.method().toUpperCase(Locale.US))) {
            RequestBody body = build.body();
            if (body instanceof FormBody) {
                FormBody formBody = (FormBody) body;
                for (int i2 = 0; i2 < formBody.size(); i2++) {
                    hashMap.put(formBody.encodedName(i2), formBody.value(i2));
                }
            }
        }
        return chain.proceed(newBuilder2.header("Authorization", C17266b.m5648a(twitterAuthConfig, twitterAuthToken, null, method, httpUrl, hashMap)).build());
    }
}
