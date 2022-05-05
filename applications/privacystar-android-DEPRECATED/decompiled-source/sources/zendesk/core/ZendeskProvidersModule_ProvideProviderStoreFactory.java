package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory.class */
public final class ZendeskProvidersModule_ProvideProviderStoreFactory implements Factory<ProviderStore> {
    private final Provider<PushRegistrationProvider> pushRegistrationProvider;
    private final Provider<UserProvider> userProvider;

    public ZendeskProvidersModule_ProvideProviderStoreFactory(Provider<UserProvider> provider, Provider<PushRegistrationProvider> provider2) {
        this.userProvider = provider;
        this.pushRegistrationProvider = provider2;
    }

    public static Factory<ProviderStore> create(Provider<UserProvider> provider, Provider<PushRegistrationProvider> provider2) {
        return new ZendeskProvidersModule_ProvideProviderStoreFactory(provider, provider2);
    }

    public static ProviderStore proxyProvideProviderStore(UserProvider userProvider, PushRegistrationProvider pushRegistrationProvider) {
        return ZendeskProvidersModule.provideProviderStore(userProvider, pushRegistrationProvider);
    }

    @Override // javax.inject.Provider
    public ProviderStore get() {
        return (ProviderStore) Preconditions.checkNotNull(ZendeskProvidersModule.provideProviderStore(this.userProvider.get(), this.pushRegistrationProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
