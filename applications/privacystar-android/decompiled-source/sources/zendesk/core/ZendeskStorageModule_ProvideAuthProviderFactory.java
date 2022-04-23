package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory.class */
public final class ZendeskStorageModule_ProvideAuthProviderFactory implements Factory<AuthenticationProvider> {
    private final Provider<IdentityManager> identityManagerProvider;

    public ZendeskStorageModule_ProvideAuthProviderFactory(Provider<IdentityManager> provider) {
        this.identityManagerProvider = provider;
    }

    public static Factory<AuthenticationProvider> create(Provider<IdentityManager> provider) {
        return new ZendeskStorageModule_ProvideAuthProviderFactory(provider);
    }

    public static AuthenticationProvider proxyProvideAuthProvider(Object obj) {
        return ZendeskStorageModule.provideAuthProvider((IdentityManager) obj);
    }

    @Override // javax.inject.Provider
    public AuthenticationProvider get() {
        return (AuthenticationProvider) Preconditions.checkNotNull(ZendeskStorageModule.provideAuthProvider(this.identityManagerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
