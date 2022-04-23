package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.oauth.b;
import com.twitter.sdk.android.core.l;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/d.class */
public final class d implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final l<? extends TwitterAuthToken> f35142a;

    /* renamed from: b  reason: collision with root package name */
    final TwitterAuthConfig f35143b;

    public d(l<? extends TwitterAuthToken> lVar, TwitterAuthConfig twitterAuthConfig) {
        this.f35142a = lVar;
        this.f35143b = twitterAuthConfig;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request.Builder newBuilder = request.newBuilder();
        HttpUrl url = request.url();
        HttpUrl.Builder query = url.newBuilder().query(null);
        int querySize = url.querySize();
        for (int i = 0; i < querySize; i++) {
            query.addEncodedQueryParameter(f.b(url.queryParameterName(i)), f.b(url.queryParameterValue(i)));
        }
        Request build = newBuilder.url(query.build()).build();
        Request.Builder newBuilder2 = build.newBuilder();
        new b();
        TwitterAuthConfig twitterAuthConfig = this.f35143b;
        TwitterAuthToken twitterAuthToken = (TwitterAuthToken) this.f35142a.f35184a;
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
        return chain.proceed(newBuilder2.header("Authorization", b.a(twitterAuthConfig, twitterAuthToken, null, method, httpUrl, hashMap)).build());
    }
}
