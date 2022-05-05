package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideMediaOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideMediaOkHttpClientFactory implements Factory<OkHttpClient> {
    private final Provider<ZendeskAccessInterceptor> accessInterceptorProvider;
    private final Provider<ZendeskAuthHeaderInterceptor> authHeaderInterceptorProvider;
    private final Provider<CachingInterceptor> cachingInterceptorProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;
    private final Provider<ZendeskSettingsInterceptor> settingsInterceptorProvider;
    private final Provider<ZendeskUnauthorizedInterceptor> unauthorizedInterceptorProvider;

    public ZendeskNetworkModule_ProvideMediaOkHttpClientFactory(Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskAuthHeaderInterceptor> provider3, Provider<ZendeskSettingsInterceptor> provider4, Provider<CachingInterceptor> provider5, Provider<ZendeskUnauthorizedInterceptor> provider6) {
        this.okHttpClientProvider = provider;
        this.accessInterceptorProvider = provider2;
        this.authHeaderInterceptorProvider = provider3;
        this.settingsInterceptorProvider = provider4;
        this.cachingInterceptorProvider = provider5;
        this.unauthorizedInterceptorProvider = provider6;
    }

    public static Factory<OkHttpClient> create(Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskAuthHeaderInterceptor> provider3, Provider<ZendeskSettingsInterceptor> provider4, Provider<CachingInterceptor> provider5, Provider<ZendeskUnauthorizedInterceptor> provider6) {
        return new ZendeskNetworkModule_ProvideMediaOkHttpClientFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static OkHttpClient proxyProvideMediaOkHttpClient(OkHttpClient okHttpClient, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return ZendeskNetworkModule.provideMediaOkHttpClient(okHttpClient, (ZendeskAccessInterceptor) obj, (ZendeskAuthHeaderInterceptor) obj2, (ZendeskSettingsInterceptor) obj3, (CachingInterceptor) obj4, (ZendeskUnauthorizedInterceptor) obj5);
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(ZendeskNetworkModule.provideMediaOkHttpClient(this.okHttpClientProvider.get(), this.accessInterceptorProvider.get(), this.authHeaderInterceptorProvider.get(), this.settingsInterceptorProvider.get(), this.cachingInterceptorProvider.get(), this.unauthorizedInterceptorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
