package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideCoreOkHttpClientFactory implements Factory<OkHttpClient> {
    private final Provider<AcceptHeaderInterceptor> acceptHeaderInterceptorProvider;
    private final Provider<AcceptLanguageHeaderInterceptor> acceptLanguageHeaderInterceptorProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvideCoreOkHttpClientFactory(Provider<OkHttpClient> provider, Provider<AcceptLanguageHeaderInterceptor> provider2, Provider<AcceptHeaderInterceptor> provider3) {
        this.okHttpClientProvider = provider;
        this.acceptLanguageHeaderInterceptorProvider = provider2;
        this.acceptHeaderInterceptorProvider = provider3;
    }

    public static Factory<OkHttpClient> create(Provider<OkHttpClient> provider, Provider<AcceptLanguageHeaderInterceptor> provider2, Provider<AcceptHeaderInterceptor> provider3) {
        return new ZendeskNetworkModule_ProvideCoreOkHttpClientFactory(provider, provider2, provider3);
    }

    public static OkHttpClient proxyProvideCoreOkHttpClient(OkHttpClient okHttpClient, Object obj, Object obj2) {
        return ZendeskNetworkModule.provideCoreOkHttpClient(okHttpClient, (AcceptLanguageHeaderInterceptor) obj, (AcceptHeaderInterceptor) obj2);
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(ZendeskNetworkModule.provideCoreOkHttpClient(this.okHttpClientProvider.get(), this.acceptLanguageHeaderInterceptorProvider.get(), this.acceptHeaderInterceptorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
