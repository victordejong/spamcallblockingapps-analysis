package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesSettingsProviderFactory.class */
public final class SupportModule_ProvidesSettingsProviderFactory implements Factory<SupportSettingsProvider> {
    private final SupportModule module;

    public SupportModule_ProvidesSettingsProviderFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<SupportSettingsProvider> create(SupportModule supportModule) {
        return new SupportModule_ProvidesSettingsProviderFactory(supportModule);
    }

    public static SupportSettingsProvider proxyProvidesSettingsProvider(SupportModule supportModule) {
        return supportModule.providesSettingsProvider();
    }

    @Override // javax.inject.Provider
    public SupportSettingsProvider get() {
        return (SupportSettingsProvider) Preconditions.checkNotNull(this.module.providesSettingsProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
