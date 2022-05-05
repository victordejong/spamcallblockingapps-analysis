package com.tmobile.services.nameid.utility;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/AnalyticsInterceptor.class */
public class AnalyticsInterceptor implements Interceptor {

    /* renamed from: a */
    private String f14231a;

    public AnalyticsInterceptor(String str) {
        this.f14231a = str;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        return chain.proceed(chain.request().newBuilder().addHeader("X-PSA-DIGEST", this.f14231a).build());
    }
}
