package zendesk.core;

import android.os.Build;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.util.Locale;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/UserAgentAndClientHeadersInterceptor.class */
public class UserAgentAndClientHeadersInterceptor implements Interceptor {
    public final String userAgent;
    public final String version;
    public final String zendeskClient;

    public UserAgentAndClientHeadersInterceptor(String str, String str2) {
        this.userAgent = String.format(Locale.US, "Zendesk-SDK/%s Android/%d Variant/%s", str, Integer.valueOf(Build.VERSION.SDK_INT), str2);
        this.zendeskClient = String.format(Locale.US, "mobile/android/sdk/%s", str2.toLowerCase());
        this.version = str;
    }

    @Override // okhttp3.Interceptor
    @NonNull
    public Response intercept(@NonNull Interceptor.Chain chain) throws IOException {
        Request.Builder newBuilder = chain.request().newBuilder();
        newBuilder.removeHeader("User-Agent");
        newBuilder.addHeader("User-Agent", this.userAgent);
        newBuilder.removeHeader("X-Zendesk-Client");
        newBuilder.addHeader("X-Zendesk-Client", this.zendeskClient);
        newBuilder.removeHeader("X-Zendesk-Client-Version");
        newBuilder.addHeader("X-Zendesk-Client-Version", this.version);
        return chain.proceed(newBuilder.build());
    }
}
