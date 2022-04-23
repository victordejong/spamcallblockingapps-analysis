package zendesk.core;

import android.os.Build;
import android.support.annotation.NonNull;
import java.io.IOException;
import java.util.Locale;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserAgentAndClientHeadersInterceptor.class */
class UserAgentAndClientHeadersInterceptor implements Interceptor {
    private final String userAgent;
    private final String version;
    private final String xZendeskClient;

    public UserAgentAndClientHeadersInterceptor(String str, String str2) {
        this.userAgent = String.format(Locale.US, Constants.USER_AGENT_HEADER_TEMPLATE, str, Integer.valueOf(Build.VERSION.SDK_INT), str2);
        this.xZendeskClient = String.format(Locale.US, Constants.X_ZENDESK_CLIENT_HEADER_VALUE_FORMAT, str2.toLowerCase());
        this.version = str;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.removeHeader("User-Agent");
        newBuilder.addHeader("User-Agent", this.userAgent);
        newBuilder.removeHeader(Constants.X_ZENDESK_CLIENT_HEADER_NAME);
        newBuilder.addHeader(Constants.X_ZENDESK_CLIENT_HEADER_NAME, this.xZendeskClient);
        newBuilder.removeHeader(Constants.X_ZENDESK_CLIENT_VERSION_HEADER_NAME);
        newBuilder.addHeader(Constants.X_ZENDESK_CLIENT_VERSION_HEADER_NAME, this.version);
        return chain.proceed(newBuilder.build());
    }
}
