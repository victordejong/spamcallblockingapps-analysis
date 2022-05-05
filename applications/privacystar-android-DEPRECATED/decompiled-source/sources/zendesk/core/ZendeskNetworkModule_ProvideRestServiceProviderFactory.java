package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideRestServiceProviderFactory.class */
public final class ZendeskNetworkModule_ProvideRestServiceProviderFactory implements Factory<RestServiceProvider> {
    private final Provider<OkHttpClient> mediaOkHttpClientProvider;
    private final Provider<Retrofit> retrofitProvider;
    private final Provider<OkHttpClient> standardOkHttpClientProvider;

    public ZendeskNetworkModule_ProvideRestServiceProviderFactory(Provider<Retrofit> provider, Provider<OkHttpClient> provider2, Provider<OkHttpClient> provider3) {
        this.retrofitProvider = provider;
        this.mediaOkHttpClientProvider = provider2;
        this.standardOkHttpClientProvider = provider3;
    }

    public static Factory<RestServiceProvider> create(Provider<Retrofit> provider, Provider<OkHttpClient> provider2, Provider<OkHttpClient> provider3) {
        return new ZendeskNetworkModule_ProvideRestServiceProviderFactory(provider, provider2, provider3);
    }

    public static RestServiceProvider proxyProvideRestServiceProvider(Retrofit retrofit, OkHttpClient okHttpClient, OkHttpClient okHttpClient2) {
        return ZendeskNetworkModule.provideRestServiceProvider(retrofit, okHttpClient, okHttpClient2);
    }

    @Override // javax.inject.Provider
    public RestServiceProvider get() {
        return (RestServiceProvider) Preconditions.checkNotNull(ZendeskNetworkModule.provideRestServiceProvider(this.retrofitProvider.get(), this.mediaOkHttpClientProvider.get(), this.standardOkHttpClientProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
