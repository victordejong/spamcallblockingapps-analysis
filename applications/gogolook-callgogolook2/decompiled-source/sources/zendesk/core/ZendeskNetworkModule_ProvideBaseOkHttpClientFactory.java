package zendesk.core;

import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideBaseOkHttpClientFactory implements AbstractC10866b<OkHttpClient> {
    public final Provider<ExecutorService> executorServiceProvider;
    public final Provider<HttpLoggingInterceptor> loggingInterceptorProvider;
    public final ZendeskNetworkModule module;
    public final Provider<ZendeskOauthIdHeaderInterceptor> oauthIdHeaderInterceptorProvider;
    public final Provider<UserAgentAndClientHeadersInterceptor> userAgentAndClientHeadersInterceptorProvider;

    public ZendeskNetworkModule_ProvideBaseOkHttpClientFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<HttpLoggingInterceptor> provider, Provider<ZendeskOauthIdHeaderInterceptor> provider2, Provider<UserAgentAndClientHeadersInterceptor> provider3, Provider<ExecutorService> provider4) {
        this.module = zendeskNetworkModule;
        this.loggingInterceptorProvider = provider;
        this.oauthIdHeaderInterceptorProvider = provider2;
        this.userAgentAndClientHeadersInterceptorProvider = provider3;
        this.executorServiceProvider = provider4;
    }

    public static ZendeskNetworkModule_ProvideBaseOkHttpClientFactory create(ZendeskNetworkModule zendeskNetworkModule, Provider<HttpLoggingInterceptor> provider, Provider<ZendeskOauthIdHeaderInterceptor> provider2, Provider<UserAgentAndClientHeadersInterceptor> provider3, Provider<ExecutorService> provider4) {
        return new ZendeskNetworkModule_ProvideBaseOkHttpClientFactory(zendeskNetworkModule, provider, provider2, provider3, provider4);
    }

    public static OkHttpClient provideBaseOkHttpClient(ZendeskNetworkModule zendeskNetworkModule, HttpLoggingInterceptor httpLoggingInterceptor, Object obj, Object obj2, ExecutorService executorService) {
        OkHttpClient provideBaseOkHttpClient = zendeskNetworkModule.provideBaseOkHttpClient(httpLoggingInterceptor, (ZendeskOauthIdHeaderInterceptor) obj, (UserAgentAndClientHeadersInterceptor) obj2, executorService);
        C10867c.m10383a(provideBaseOkHttpClient, "Cannot return null from a non-@Nullable @Provides method");
        return provideBaseOkHttpClient;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return provideBaseOkHttpClient(this.module, this.loggingInterceptorProvider.get(), this.oauthIdHeaderInterceptorProvider.get(), this.userAgentAndClientHeadersInterceptorProvider.get(), this.executorServiceProvider.get());
    }
}
