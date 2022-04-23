package zendesk.core;

import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory.class */
public final class ZendeskNetworkModule_ProvideRestServiceProviderFactory implements AbstractC10866b<RestServiceProvider> {
    public final Provider<OkHttpClient> coreOkHttpClientProvider;
    public final Provider<OkHttpClient> mediaOkHttpClientProvider;
    public final ZendeskNetworkModule module;
    public final Provider<C15300s> retrofitProvider;
    public final Provider<OkHttpClient> standardOkHttpClientProvider;

    public ZendeskNetworkModule_ProvideRestServiceProviderFactory(ZendeskNetworkModule zendeskNetworkModule, Provider<C15300s> provider, Provider<OkHttpClient> provider2, Provider<OkHttpClient> provider3, Provider<OkHttpClient> provider4) {
        this.module = zendeskNetworkModule;
        this.retrofitProvider = provider;
        this.mediaOkHttpClientProvider = provider2;
        this.standardOkHttpClientProvider = provider3;
        this.coreOkHttpClientProvider = provider4;
    }

    public static ZendeskNetworkModule_ProvideRestServiceProviderFactory create(ZendeskNetworkModule zendeskNetworkModule, Provider<C15300s> provider, Provider<OkHttpClient> provider2, Provider<OkHttpClient> provider3, Provider<OkHttpClient> provider4) {
        return new ZendeskNetworkModule_ProvideRestServiceProviderFactory(zendeskNetworkModule, provider, provider2, provider3, provider4);
    }

    public static RestServiceProvider provideRestServiceProvider(ZendeskNetworkModule zendeskNetworkModule, C15300s sVar, OkHttpClient okHttpClient, OkHttpClient okHttpClient2, OkHttpClient okHttpClient3) {
        RestServiceProvider provideRestServiceProvider = zendeskNetworkModule.provideRestServiceProvider(sVar, okHttpClient, okHttpClient2, okHttpClient3);
        C10867c.m10383a(provideRestServiceProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideRestServiceProvider;
    }

    @Override // javax.inject.Provider
    public RestServiceProvider get() {
        return provideRestServiceProvider(this.module, this.retrofitProvider.get(), this.mediaOkHttpClientProvider.get(), this.standardOkHttpClientProvider.get(), this.coreOkHttpClientProvider.get());
    }
}
