package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetAuthenticationProviderFactory.class */
public final class CoreModule_GetAuthenticationProviderFactory implements AbstractC10866b<AuthenticationProvider> {
    public final CoreModule module;

    public CoreModule_GetAuthenticationProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetAuthenticationProviderFactory create(CoreModule coreModule) {
        return new CoreModule_GetAuthenticationProviderFactory(coreModule);
    }

    public static AuthenticationProvider getAuthenticationProvider(CoreModule coreModule) {
        AuthenticationProvider authenticationProvider = coreModule.getAuthenticationProvider();
        C10867c.m10383a(authenticationProvider, "Cannot return null from a non-@Nullable @Provides method");
        return authenticationProvider;
    }

    @Override // javax.inject.Provider
    public AuthenticationProvider get() {
        return getAuthenticationProvider(this.module);
    }
}
