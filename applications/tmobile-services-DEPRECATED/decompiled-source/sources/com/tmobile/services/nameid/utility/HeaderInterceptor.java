package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.MainApplication;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.annotation.Nonnull;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/HeaderInterceptor.class */
public class HeaderInterceptor implements Interceptor {

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/HeaderInterceptor$MissingMsisdnException.class */
    public static class MissingMsisdnException extends IOException {
        public MissingMsisdnException() {
            super("MSISDN Missing");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/HeaderInterceptor$MissingTokenException.class */
    public static class MissingTokenException extends IOException {
        public MissingTokenException() {
            super("SIT Token Missing");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/HeaderInterceptor$WsgError.class */
    public static class WsgError {

        /* renamed from: a */
        private boolean f14309a;
        @Nonnull

        /* renamed from: b */
        private String f14310b;

        private WsgError() {
            this.f14309a = false;
            this.f14310b = "";
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/HeaderInterceptor$WsgSitAuthException.class */
    public static class WsgSitAuthException extends IOException {
        public WsgSitAuthException() {
            super("AUTH_SIT error was found in the body of a WSG response, therefore it failed. The request should be retried with a new SIT.");
        }
    }

    public HeaderInterceptor(String str) {
    }

    @Nonnull
    /* renamed from: a */
    private WsgError m5692a(Response response) {
        WsgError wsgError = new WsgError();
        try {
            String string = response.peekBody(Long.MAX_VALUE).string();
            wsgError.f14309a = string.contains("AUTH_SIT");
            wsgError.f14310b = string;
            return wsgError;
        } catch (Exception e) {
            LogUtil.m5641f("HeaderInterceptor", "tried to get response body", e);
            wsgError.f14309a = false;
            wsgError.f14310b = response.message();
            return wsgError;
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        if (!PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN").isEmpty()) {
            String g = PreferenceUtils.m5390g("PREF_SIT");
            if (!g.isEmpty()) {
                Request.Builder headers = request.newBuilder().headers(request.headers());
                try {
                    Response proceed = chain.proceed(headers.addHeader("Authorization", "SIT=" + g).addHeader("Authorization", "serviceNames=cnam").build());
                    boolean z = request.url().encodedPath().contains("bulklookupstatuscheck") && proceed.code() == 404;
                    WsgError a = m5692a(proceed);
                    if (!proceed.isSuccessful() && !z) {
                        AnalyticsWrapper.m5857w(proceed.code(), a.f14310b);
                        if (a.f14309a) {
                            MainApplication.m7553C("sit_auth_exception", new String[]{"code", "message"}, new String[]{String.valueOf(proceed.code()), a.f14310b});
                            throw new WsgSitAuthException();
                        }
                    }
                    return proceed;
                } catch (SocketTimeoutException | UnknownHostException e) {
                    AnalyticsWrapper.m5856x();
                    throw e;
                }
            } else {
                throw new MissingTokenException();
            }
        } else {
            throw new MissingMsisdnException();
        }
    }
}
