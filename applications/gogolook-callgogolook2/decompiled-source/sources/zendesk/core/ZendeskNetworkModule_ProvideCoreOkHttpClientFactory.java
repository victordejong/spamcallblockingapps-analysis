package zendesk.core;

import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideCoreOkHttpClientFactory.class */
public final class ZendeskNetworkModule_ProvideCoreOkHttpClientFactory implements AbstractC10866b<OkHttpClient> {
    public final Provider<AcceptHeaderInterceptor> acceptHeaderInterceptorProvider;
    public final Provider<AcceptLanguageHeaderInterceptor> acceptLanguageHeaderInterceptorProvider;
    public final ZendeskNetworkModule module;
    public final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvideCoreOkHttpClientFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<AcceptLanguageHeaderInterceptor> provider2, Provider<AcceptHeaderInterceptor> provider3) {
        this.module = zendeskNetworkModule;
        this.okHttpClientProvider = provider;
        this.acceptLanguageHeaderInterceptorProvider = provider2;
        this.acceptHeaderInterceptorProvider = provider3;
    }

    public static ZendeskNetworkModule_ProvideCoreOkHttpClientFactory create(ZendeskNetworkModule zendeskNetworkModule, Provider<OkHttpClient> provider, Provider<AcceptLanguageHeaderInterceptor> provider2, Provider<AcceptHeaderInterceptor> provider3) {
        return new ZendeskNetworkModule_ProvideCoreOkHttpClientFactory(zendeskNetworkModule, provider, provider2, provider3);
    }

    public static OkHttpClient provideCoreOkHttpClient(ZendeskNetworkModule zendeskNetworkModule, OkHttpClient okHttpClient, Object obj, Object obj2) {
        OkHttpClient provideCoreOkHttpClient = zendeskNetworkModule.provideCoreOkHttpClient(okHttpClient, (AcceptLanguageHeaderInterceptor) obj, (AcceptHeaderInterceptor) obj2);
        C10867c.m10383a(provideCoreOkHttpClient, "Cannot return null from a non-@Nullable @Provides method");
        return provideCoreOkHttpClient;
    }

    @Override // javax.inject.Provider
    public OkHttpClient get() {
        return provideCoreOkHttpClient(this.module, this.okHttpClientProvider.get(), this.acceptLanguageHeaderInterceptorProvider.get(), this.acceptHeaderInterceptorProvider.get());
    }
}
