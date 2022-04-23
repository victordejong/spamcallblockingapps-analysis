package zendesk.core;

import com.google.gson.Gson;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidePushProviderRetrofitFactory.class */
public final class ZendeskNetworkModule_ProvidePushProviderRetrofitFactory implements AbstractC10866b<C15300s> {
    public final Provider<ZendeskAuthHeaderInterceptor> authHeaderInterceptorProvider;
    public final Provider<ApplicationConfiguration> configurationProvider;
    public final Provider<Gson> gsonProvider;
    public final Provider<OkHttpClient> okHttpClientProvider;

    public ZendeskNetworkModule_ProvidePushProviderRetrofitFactory(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4) {
        this.configurationProvider = provider;
        this.gsonProvider = provider2;
        this.okHttpClientProvider = provider3;
        this.authHeaderInterceptorProvider = provider4;
    }

    public static ZendeskNetworkModule_ProvidePushProviderRetrofitFactory create(Provider<ApplicationConfiguration> provider, Provider<Gson> provider2, Provider<OkHttpClient> provider3, Provider<ZendeskAuthHeaderInterceptor> provider4) {
        return new ZendeskNetworkModule_ProvidePushProviderRetrofitFactory(provider, provider2, provider3, provider4);
    }

    public static C15300s providePushProviderRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, OkHttpClient okHttpClient, Object obj) {
        C15300s providePushProviderRetrofit = ZendeskNetworkModule.providePushProviderRetrofit(applicationConfiguration, gson, okHttpClient, (ZendeskAuthHeaderInterceptor) obj);
        C10867c.m10383a(providePushProviderRetrofit, "Cannot return null from a non-@Nullable @Provides method");
        return providePushProviderRetrofit;
    }

    @Override // javax.inject.Provider
    public C15300s get() {
        return providePushProviderRetrofit(this.configurationProvider.get(), this.gsonProvider.get(), this.okHttpClientProvider.get(), this.authHeaderInterceptorProvider.get());
    }
}
