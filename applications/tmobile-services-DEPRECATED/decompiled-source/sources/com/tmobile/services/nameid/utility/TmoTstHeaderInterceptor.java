package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.model.TmoUserStatus;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/TmoTstHeaderInterceptor.class */
public class TmoTstHeaderInterceptor implements Interceptor {

    /* renamed from: a */
    private String f14456a;

    /* renamed from: b */
    private String f14457b;

    /* renamed from: c */
    private String f14458c;

    /* renamed from: d */
    private String f14459d;

    /* renamed from: e */
    private String f14460e;

    public TmoTstHeaderInterceptor(String str, String str2, String str3, String str4, String str5) {
        this.f14456a = str;
        this.f14457b = str2;
        this.f14458c = str3;
        this.f14459d = str4;
        this.f14460e = str5;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        return chain.proceed(request.newBuilder().headers(request.headers()).addHeader("username", "fonameid").addHeader("password", this.f14459d).addHeader("UTC", this.f14460e).addHeader("serviceType", TmoUserStatus.CUSTOMER_TYPE_PREPAID).addHeader("apiVersion", TmoUserStatus.CUSTOMER_TYPE_PREPAID).addHeader("clientVersion", "4.2.0.3336").addHeader("Authorization", "serviceNames tmobile-labs").addHeader("SIT", this.f14456a).addHeader("TMO-IMEI", this.f14457b).addHeader("MSISDN", this.f14458c).build());
    }
}
