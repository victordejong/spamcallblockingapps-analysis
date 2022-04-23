package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetAuthenticationProviderFactory.class */
public final class CoreModule_GetAuthenticationProviderFactory implements Factory<AuthenticationProvider> {
    private final CoreModule module;

    public CoreModule_GetAuthenticationProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<AuthenticationProvider> create(CoreModule coreModule) {
        return new CoreModule_GetAuthenticationProviderFactory(coreModule);
    }

    public static AuthenticationProvider proxyGetAuthenticationProvider(CoreModule coreModule) {
        return coreModule.getAuthenticationProvider();
    }

    @Override // javax.inject.Provider
    public AuthenticationProvider get() {
        return (AuthenticationProvider) Preconditions.checkNotNull(this.module.getAuthenticationProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
