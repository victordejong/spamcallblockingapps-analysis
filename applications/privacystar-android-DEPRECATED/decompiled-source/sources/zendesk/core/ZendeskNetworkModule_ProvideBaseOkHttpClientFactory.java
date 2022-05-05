package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideBaseOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideBaseOkHttpClientFactory implements Factory<OkHttpClient> {
    private final Provider<ExecutorService> executorServiceProvider;
    private final Provider<HttpLoggingInterceptor> loggingInterceptorProvider;
    private final ZendeskNetworkModule module;
    private final Provider<ZendeskOauthIdHeaderInterceptor> oauthIdHeaderInterceptorProvider;
    private final Provider<UserAgentAndClientHeadersInterceptor> userAgentAndClientHeadersInterceptorProvider;

    public ZendeskNetworkModule_ProvideBaseOkHttpClientFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<HttpLoggingInterceptor> provider, Provider<ZendeskOauthIdHeaderInterceptor> provider2, Provider<UserAgentAndClientHeadersInterceptor> provider3, Provider<ExecutorService> provider4) {
        this.module = zendeskNetworkModule;
        this.loggingInterceptorProvider = provider;
        this.oauthIdHeaderInterceptorProvider = provider2;
        this.userAgentAndClientHeadersInterceptorProvider = provider3;
        this.executorServiceProvider = provider4;
    }

    public static Factory<OkHttpClient> create(ZendeskNetworkModule zendeskNetworkModule, Provider<HttpLoggingInterceptor> provider, Provider<ZendeskOauthIdHeaderInterceptor> provider2, Provider<UserAgentAndClientHeadersInterceptor> provider3, Provider<ExecutorService> provider4) {
        return new ZendeskNetworkModule_ProvideBaseOkHttpClientFactory(zendeskNetworkModule, provider, provider2, provider3, provider4);
    }

    public static OkHttpClient proxyProvideBaseOkHttpClient(ZendeskNetworkModule zendeskNetworkModule, HttpLoggingInterceptor httpLoggingInterceptor, Object obj, Object obj2, ExecutorService executorService) {
        return zendeskNetworkModule.provideBaseOkHttpClient(httpLoggingInterceptor, (ZendeskOauthIdHeaderInterceptor) obj, (UserAgentAndClientHeadersInterceptor) obj2, executorService);
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(this.module.provideBaseOkHttpClient(this.loggingInterceptorProvider.get(), this.oauthIdHeaderInterceptorProvider.get(), this.userAgentAndClientHeadersInterceptorProvider.get(), this.executorServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
