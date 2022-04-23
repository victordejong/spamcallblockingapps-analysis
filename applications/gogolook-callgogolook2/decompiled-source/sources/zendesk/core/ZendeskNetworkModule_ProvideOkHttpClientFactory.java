package zendesk.core;

import javax.inject.Provider;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideOkHttpClientFactory implements AbstractC10866b<OkHttpClient> {
    public final Provider<AcceptHeaderInterceptor> acceptHeaderInterceptorProvider;
    public final Provider<ZendeskAccessInterceptor> accessInterceptorProvider;
    public final Provider<ZendeskAuthHeaderInterceptor> authHeaderInterceptorProvider;
    public final Provider<Cache> cacheProvider;
    public final ZendeskNetworkModule module;
    public final Provider<OkHttpClient> okHttpClientProvider;
    public final Provider<ZendeskPushInterceptor> pushInterceptorProvider;
    public final Provider<ZendeskSettingsInterceptor> settingsInterceptorProvider;
    public final Provider<ZendeskUnauthorizedInterceptor> unauthorizedInterceptorProvider;

    public ZendeskNetworkModule_ProvideOkHttpClientFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskUnauthorizedInterceptor> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4, Provider<ZendeskSettingsInterceptor> provider5, Provider<AcceptHeaderInterceptor> provider6, Provider<ZendeskPushInterceptor> provider7, Provider<Cache> provider8) {
        this.module = zendeskNetworkModule;
        this.okHttpClientProvider = provider;
        this.accessInterceptorProvider = provider2;
        this.unauthorizedInterceptorProvider = provider3;
        this.authHeaderInterceptorProvider = provider4;
        this.settingsInterceptorProvider = provider5;
        this.acceptHeaderInterceptorProvider = provider6;
        this.pushInterceptorProvider = provider7;
        this.cacheProvider = provider8;
    }

    public static ZendeskNetworkModule_ProvideOkHttpClientFactory create(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<ZendeskAccessInterceptor> provider2, Provider<ZendeskUnauthorizedInterceptor> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4, Provider<ZendeskSettingsInterceptor> provider5, Provider<AcceptHeaderInterceptor> provider6, Provider<ZendeskPushInterceptor> provider7, Provider<Cache> provider8) {
        return new ZendeskNetworkModule_ProvideOkHttpClientFactory(zendeskNetworkModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static OkHttpClient provideOkHttpClient(ZendeskNetworkModule zendeskNetworkModule, OkHttpClient okHttpClient, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Cache cache) {
        OkHttpClient provideOkHttpClient = zendeskNetworkModule.provideOkHttpClient(okHttpClient, (ZendeskAccessInterceptor) obj, (ZendeskUnauthorizedInterceptor) obj2, (ZendeskAuthHeaderInterceptor) obj3, (ZendeskSettingsInterceptor) obj4, (AcceptHeaderInterceptor) obj5, (ZendeskPushInterceptor) obj6, cache);
        C10867c.m10383a(provideOkHttpClient, "Cannot return null from a non-@Nullable @Provides method");
        return provideOkHttpClient;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return provideOkHttpClient(this.module, this.okHttpClientProvider.get(), this.accessInterceptorProvider.get(), this.unauthorizedInterceptorProvider.get(), this.authHeaderInterceptorProvider.get(), this.settingsInterceptorProvider.get(), this.acceptHeaderInterceptorProvider.get(), this.pushInterceptorProvider.get(), this.cacheProvider.get());
    }
}
