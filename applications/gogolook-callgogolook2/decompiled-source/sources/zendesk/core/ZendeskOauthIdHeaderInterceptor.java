package zendesk.core;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskOauthIdHeaderInterceptor.class */
public class ZendeskOauthIdHeaderInterceptor implements Interceptor {
    public final String oauthId;

    public ZendeskOauthIdHeaderInterceptor(String str) {
        this.oauthId = str;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        if (C10862d.m10390b(this.oauthId)) {
            newBuilder.addHeader("Client-Identifier", this.oauthId);
        }
        return chain.proceed(newBuilder.build());
    }
}
