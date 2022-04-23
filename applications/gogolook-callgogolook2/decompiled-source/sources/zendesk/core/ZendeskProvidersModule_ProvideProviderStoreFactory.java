package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideProviderStoreFactory.class */
public final class ZendeskProvidersModule_ProvideProviderStoreFactory implements AbstractC10866b<ProviderStore> {
    public final Provider<PushRegistrationProvider> pushRegistrationProvider;
    public final Provider<UserProvider> userProvider;

    public ZendeskProvidersModule_ProvideProviderStoreFactory(Provider<UserProvider> provider, Provider<PushRegistrationProvider> provider2) {
        this.userProvider = provider;
        this.pushRegistrationProvider = provider2;
    }

    public static ZendeskProvidersModule_ProvideProviderStoreFactory create(Provider<UserProvider> provider, Provider<PushRegistrationProvider> provider2) {
        return new ZendeskProvidersModule_ProvideProviderStoreFactory(provider, provider2);
    }

    public static ProviderStore provideProviderStore(UserProvider userProvider, PushRegistrationProvider pushRegistrationProvider) {
        ProviderStore provideProviderStore = ZendeskProvidersModule.provideProviderStore(userProvider, pushRegistrationProvider);
        C10867c.m10383a(provideProviderStore, "Cannot return null from a non-@Nullable @Provides method");
        return provideProviderStore;
    }

    @Override // javax.inject.Provider
    public ProviderStore get() {
        return provideProviderStore(this.userProvider.get(), this.pushRegistrationProvider.get());
    }
}
