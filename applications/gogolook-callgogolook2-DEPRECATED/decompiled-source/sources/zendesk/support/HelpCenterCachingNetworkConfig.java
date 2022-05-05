package zendesk.support;

import okhttp3.OkHttpClient;
import zendesk.core.CustomNetworkConfig;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterCachingNetworkConfig.class */
public class HelpCenterCachingNetworkConfig extends CustomNetworkConfig {
    public HelpCenterCachingInterceptor interceptor;

    public HelpCenterCachingNetworkConfig(HelpCenterCachingInterceptor helpCenterCachingInterceptor) {
        this.interceptor = helpCenterCachingInterceptor;
    }

    @Override // zendesk.core.CustomNetworkConfig
    public void configureOkHttpClient(OkHttpClient.Builder builder) {
        builder.addNetworkInterceptor(this.interceptor);
    }
}
