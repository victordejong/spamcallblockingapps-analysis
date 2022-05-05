package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesBlipsProviderFactory.class */
public final class SupportModule_ProvidesBlipsProviderFactory implements Factory<SupportBlipsProvider> {
    private final SupportModule module;

    public SupportModule_ProvidesBlipsProviderFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<SupportBlipsProvider> create(SupportModule supportModule) {
        return new SupportModule_ProvidesBlipsProviderFactory(supportModule);
    }

    public static SupportBlipsProvider proxyProvidesBlipsProvider(SupportModule supportModule) {
        return supportModule.providesBlipsProvider();
    }

    @Override // javax.inject.Provider
    public SupportBlipsProvider get() {
        return (SupportBlipsProvider) Preconditions.checkNotNull(this.module.providesBlipsProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
