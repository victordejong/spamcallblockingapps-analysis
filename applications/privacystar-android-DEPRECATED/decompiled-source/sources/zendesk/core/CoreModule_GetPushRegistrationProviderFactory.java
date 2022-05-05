package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetPushRegistrationProviderFactory.class */
public final class CoreModule_GetPushRegistrationProviderFactory implements Factory<PushRegistrationProvider> {
    private final CoreModule module;

    public CoreModule_GetPushRegistrationProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<PushRegistrationProvider> create(CoreModule coreModule) {
        return new CoreModule_GetPushRegistrationProviderFactory(coreModule);
    }

    public static PushRegistrationProvider proxyGetPushRegistrationProvider(CoreModule coreModule) {
        return coreModule.getPushRegistrationProvider();
    }

    @Override // javax.inject.Provider
    public PushRegistrationProvider get() {
        return (PushRegistrationProvider) Preconditions.checkNotNull(this.module.getPushRegistrationProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
