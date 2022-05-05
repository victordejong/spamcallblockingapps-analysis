package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideOkHttpClientFactory implements Factory<OkHttpClient> {
    private final Provider<AcceptHeaderInterceptor> acceptHeaderInterceptorProvider;
    private final Provider<ZendeskAccessInterceptor> accessInterceptorProvider;
    private final Provider<ZendeskAuthHeaderInterceptor> authHeaderInterceptorProvider;
    private final Provider<Cache> cacheProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;
    private final Provider<ZendeskSettingsInterceptor> settingsInterceptorProvider;
    private final Provider<ZendeskUnauthorizedInterceptor> unauthorizedInterceptorProvider;

    public ZendeskNetworkModule_ProvideOkHttpClientFactory(Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskUnauthorizedInterceptor> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4, Provider<ZendeskSettingsInterceptor> provider5, Provider<AcceptHeaderInterceptor> provider6, Provider<Cache> provider7) {
        this.okHttpClientProvider = provider;
        this.accessInterceptorProvider = provider2;
        this.unauthorizedInterceptorProvider = provider3;
        this.authHeaderInterceptorProvider = provider4;
        this.settingsInterceptorProvider = provider5;
        this.acceptHeaderInterceptorProvider = provider6;
        this.cacheProvider = provider7;
    }

    public static Factory<OkHttpClient> create(Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskUnauthorizedInterceptor> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4, Provider<ZendeskSettingsInterceptor> provider5, Provider<AcceptHeaderInterceptor> provider6, Provider<Cache> provider7) {
        return new ZendeskNetworkModule_ProvideOkHttpClientFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static OkHttpClient proxyProvideOkHttpClient(OkHttpClient okHttpClient, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Cache cache) {
        return ZendeskNetworkModule.provideOkHttpClient(okHttpClient, (ZendeskAccessInterceptor) obj, (ZendeskUnauthorizedInterceptor) obj2, (ZendeskAuthHeaderInterceptor) obj3, (ZendeskSettingsInterceptor) obj4, (AcceptHeaderInterceptor) obj5, cache);
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return (OkHttpClient) Preconditions.checkNotNull(ZendeskNetworkModule.provideOkHttpClient(this.okHttpClientProvider.get(), this.accessInterceptorProvider.get(), this.unauthorizedInterceptorProvider.get(), this.authHeaderInterceptorProvider.get(), this.settingsInterceptorProvider.get(), this.acceptHeaderInterceptorProvider.get(), this.cacheProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
