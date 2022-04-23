package zendesk.support;

import com.zendesk.util.StringUtils;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterCachingInterceptor.class */
class HelpCenterCachingInterceptor implements Interceptor {
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        return StringUtils.hasLength(proceed.headers().get(Constants.CUSTOM_HC_CACHING_HEADER)) ? proceed.newBuilder().header("Cache-Control", proceed.header(Constants.CUSTOM_HC_CACHING_HEADER)).build() : proceed;
    }
}
