package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory.class */
public final class ZendeskProvidersModule_ProvideBlipsServiceFactory implements Factory<BlipsService> {
    private final Provider<Retrofit> retrofitProvider;

    public ZendeskProvidersModule_ProvideBlipsServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static Factory<BlipsService> create(Provider<Retrofit> provider) {
        return new ZendeskProvidersModule_ProvideBlipsServiceFactory(provider);
    }

    public static BlipsService proxyProvideBlipsService(Retrofit retrofit) {
        return ZendeskProvidersModule.provideBlipsService(retrofit);
    }

    @Override // javax.inject.Provider
    public BlipsService get() {
        return (BlipsService) Preconditions.checkNotNull(ZendeskProvidersModule.provideBlipsService(this.retrofitProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
