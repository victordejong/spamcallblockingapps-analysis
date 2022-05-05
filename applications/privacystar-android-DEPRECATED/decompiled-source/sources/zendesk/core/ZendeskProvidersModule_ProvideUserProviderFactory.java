package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideUserProviderFactory.class */
public final class ZendeskProvidersModule_ProvideUserProviderFactory implements Factory<UserProvider> {
    private final Provider<UserService> userServiceProvider;

    public ZendeskProvidersModule_ProvideUserProviderFactory(Provider<UserService> provider) {
        this.userServiceProvider = provider;
    }

    public static Factory<UserProvider> create(Provider<UserService> provider) {
        return new ZendeskProvidersModule_ProvideUserProviderFactory(provider);
    }

    public static UserProvider proxyProvideUserProvider(Object obj) {
        return ZendeskProvidersModule.provideUserProvider((UserService) obj);
    }

    @Override // javax.inject.Provider
    public UserProvider get() {
        return (UserProvider) Preconditions.checkNotNull(ZendeskProvidersModule.provideUserProvider(this.userServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
