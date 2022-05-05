package com.tmobile.services.nameid.utility;

import com.facebook.stetho.server.http.HttpHeaders;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.HeaderInterceptor;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/TmoHeaderInterceptor.class */
public class TmoHeaderInterceptor implements Interceptor {

    /* renamed from: a */
    private String f14451a;

    /* renamed from: b */
    private String f14452b;

    /* renamed from: c */
    private String f14453c;

    /* renamed from: d */
    private String f14454d;

    /* renamed from: e */
    private String f14455e;

    public TmoHeaderInterceptor(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f14451a = str2;
        this.f14452b = str3;
        this.f14453c = str4;
        this.f14454d = str5;
        this.f14455e = str6;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        if (this.f14452b.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
            this.f14452b = this.f14452b.substring(1);
        }
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        if (!g.isEmpty()) {
            String g2 = PreferenceUtils.m5390g("PREF_SIT");
            if (!g2.isEmpty()) {
                Request.Builder addHeader = request.newBuilder().headers(request.headers()).addHeader("serviceType", TmoUserStatus.CUSTOMER_TYPE_PREPAID).addHeader("apiVersion", TmoUserStatus.CUSTOMER_TYPE_PREPAID).addHeader("clientVersion", "4.2.0.3336").addHeader("username", "fonameid").addHeader("UTC", this.f14454d).addHeader("password", this.f14453c).addHeader("SIT", g2).addHeader("MSISDN", g).removeHeader(AbstractSpiCall.HEADER_ACCEPT).removeHeader(HttpHeaders.CONTENT_TYPE).removeHeader("Accept-Encoding").addHeader(AbstractSpiCall.HEADER_ACCEPT, "*/*").addHeader(HttpHeaders.CONTENT_TYPE, "text/plain").addHeader("Accept-Encoding", "identity");
                String str = this.f14455e;
                Request.Builder builder = addHeader;
                if (str != null) {
                    builder = addHeader;
                    if (!str.isEmpty()) {
                        builder = addHeader.addHeader("customerType", this.f14455e);
                    }
                }
                Request.Builder builder2 = builder;
                if (!BuildUtils.m5847g()) {
                    builder2 = builder.addHeader("TMO_SRVC_LVL", "default-tmobile").addHeader("TMO-IMEI", this.f14451a);
                }
                try {
                    Response proceed = chain.proceed(builder2.build());
                    if (!proceed.isSuccessful()) {
                        AnalyticsWrapper.m5860t(proceed.code(), proceed.message());
                    }
                    TmoApiWrapper.f13248b = proceed.code();
                    return proceed;
                } catch (SocketTimeoutException | UnknownHostException e) {
                    AnalyticsWrapper.m5859u();
                    throw e;
                }
            } else {
                throw new HeaderInterceptor.MissingTokenException();
            }
        } else {
            throw new HeaderInterceptor.MissingMsisdnException();
        }
    }
}
