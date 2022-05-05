package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory.class */
public final class ZendeskProvidersModule_ProvideAccessServiceFactory implements Factory<AccessService> {
    private final Provider<Retrofit> retrofitProvider;

    public ZendeskProvidersModule_ProvideAccessServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static Factory<AccessService> create(Provider<Retrofit> provider) {
        return new ZendeskProvidersModule_ProvideAccessServiceFactory(provider);
    }

    public static AccessService proxyProvideAccessService(Retrofit retrofit) {
        return ZendeskProvidersModule.provideAccessService(retrofit);
    }

    @Override // javax.inject.Provider
    public AccessService get() {
        return (AccessService) Preconditions.checkNotNull(ZendeskProvidersModule.provideAccessService(this.retrofitProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
