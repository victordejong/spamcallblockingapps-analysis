package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideAuthProviderFactory.class */
public final class ZendeskStorageModule_ProvideAuthProviderFactory implements AbstractC10866b<AuthenticationProvider> {
    public final Provider<IdentityManager> identityManagerProvider;

    public ZendeskStorageModule_ProvideAuthProviderFactory(Provider<IdentityManager> provider) {
        this.identityManagerProvider = provider;
    }

    public static ZendeskStorageModule_ProvideAuthProviderFactory create(Provider<IdentityManager> provider) {
        return new ZendeskStorageModule_ProvideAuthProviderFactory(provider);
    }

    public static AuthenticationProvider provideAuthProvider(Object obj) {
        AuthenticationProvider provideAuthProvider = ZendeskStorageModule.provideAuthProvider((IdentityManager) obj);
        C10867c.m10383a(provideAuthProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideAuthProvider;
    }

    @Override // javax.inject.Provider
    public AuthenticationProvider get() {
        return provideAuthProvider(this.identityManagerProvider.get());
    }
}
