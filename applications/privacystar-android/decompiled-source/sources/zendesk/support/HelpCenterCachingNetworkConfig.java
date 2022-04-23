package zendesk.support;

import okhttp3.OkHttpClient;
import zendesk.core.CustomNetworkConfig;
/* loaded from: classes3-dex2jar.jar:zendesk/support/HelpCenterCachingNetworkConfig.class */
class HelpCenterCachingNetworkConfig extends CustomNetworkConfig {
    private HelpCenterCachingInterceptor interceptor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HelpCenterCachingNetworkConfig(HelpCenterCachingInterceptor helpCenterCachingInterceptor) {
        this.interceptor = helpCenterCachingInterceptor;
    }

    @Override // zendesk.core.CustomNetworkConfig
    public void configureOkHttpClient(OkHttpClient.Builder builder) {
        builder.addNetworkInterceptor(this.interceptor);
    }
}
