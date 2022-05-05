package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetApplicationConfigurationFactory.class */
public final class CoreModule_GetApplicationConfigurationFactory implements Factory<ApplicationConfiguration> {
    private final CoreModule module;

    public CoreModule_GetApplicationConfigurationFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<ApplicationConfiguration> create(CoreModule coreModule) {
        return new CoreModule_GetApplicationConfigurationFactory(coreModule);
    }

    public static ApplicationConfiguration proxyGetApplicationConfiguration(CoreModule coreModule) {
        return coreModule.getApplicationConfiguration();
    }

    @Override // javax.inject.Provider
    public ApplicationConfiguration get() {
        return (ApplicationConfiguration) Preconditions.checkNotNull(this.module.getApplicationConfiguration(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
