package zendesk.core;

import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAuthHeaderInterceptor.class */
public class ZendeskAuthHeaderInterceptor implements Interceptor {
    public IdentityManager identityManager;

    public ZendeskAuthHeaderInterceptor(IdentityManager identityManager) {
        this.identityManager = identityManager;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        String storedAccessTokenAsBearerToken = this.identityManager.getStoredAccessTokenAsBearerToken();
        if (storedAccessTokenAsBearerToken != null) {
            newBuilder.addHeader("Authorization", storedAccessTokenAsBearerToken);
        }
        return chain.proceed(newBuilder.build());
    }
}
