package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetSettingsProviderFactory.class */
public final class CoreModule_GetSettingsProviderFactory implements Factory<SettingsProvider> {
    private final CoreModule module;

    public CoreModule_GetSettingsProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<SettingsProvider> create(CoreModule coreModule) {
        return new CoreModule_GetSettingsProviderFactory(coreModule);
    }

    public static SettingsProvider proxyGetSettingsProvider(CoreModule coreModule) {
        return coreModule.getSettingsProvider();
    }

    @Override // javax.inject.Provider
    public SettingsProvider get() {
        return (SettingsProvider) Preconditions.checkNotNull(this.module.getSettingsProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
