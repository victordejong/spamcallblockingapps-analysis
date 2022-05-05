package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory.class */
public final class ZendeskProvidersModule_ProvideUserServiceFactory implements Factory<UserService> {
    private final Provider<Retrofit> retrofitProvider;

    public ZendeskProvidersModule_ProvideUserServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static Factory<UserService> create(Provider<Retrofit> provider) {
        return new ZendeskProvidersModule_ProvideUserServiceFactory(provider);
    }

    public static UserService proxyProvideUserService(Retrofit retrofit) {
        return ZendeskProvidersModule.provideUserService(retrofit);
    }

    @Override // javax.inject.Provider
    public UserService get() {
        return (UserService) Preconditions.checkNotNull(ZendeskProvidersModule.provideUserService(this.retrofitProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
