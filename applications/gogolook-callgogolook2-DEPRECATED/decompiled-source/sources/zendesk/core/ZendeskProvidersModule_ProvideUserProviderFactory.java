package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory.class */
public final class ZendeskProvidersModule_ProvideUserProviderFactory implements AbstractC10866b<UserProvider> {
    public final Provider<UserService> userServiceProvider;

    public ZendeskProvidersModule_ProvideUserProviderFactory(Provider<UserService> provider) {
        this.userServiceProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideUserProviderFactory create(Provider<UserService> provider) {
        return new ZendeskProvidersModule_ProvideUserProviderFactory(provider);
    }

    public static UserProvider provideUserProvider(Object obj) {
        UserProvider provideUserProvider = ZendeskProvidersModule.provideUserProvider((UserService) obj);
        C10867c.m10383a(provideUserProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideUserProvider;
    }

    @Override // javax.inject.Provider
    public UserProvider get() {
        return provideUserProvider(this.userServiceProvider.get());
    }
}
