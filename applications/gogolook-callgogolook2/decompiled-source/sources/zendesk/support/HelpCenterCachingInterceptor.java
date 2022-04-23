package zendesk.support;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterCachingInterceptor.class */
public class HelpCenterCachingInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        Response response = proceed;
        if (C10862d.m10390b(proceed.headers().get("X-ZD-Cache-Control"))) {
            Response.Builder newBuilder = proceed.newBuilder();
            newBuilder.header("Cache-Control", proceed.header("X-ZD-Cache-Control"));
            response = newBuilder.build();
        }
        return response;
    }
}
