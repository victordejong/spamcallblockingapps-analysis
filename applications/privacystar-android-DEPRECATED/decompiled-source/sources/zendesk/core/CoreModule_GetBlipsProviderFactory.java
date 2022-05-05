package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetBlipsProviderFactory.class */
public final class CoreModule_GetBlipsProviderFactory implements Factory<BlipsProvider> {
    private final CoreModule module;

    public CoreModule_GetBlipsProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<BlipsProvider> create(CoreModule coreModule) {
        return new CoreModule_GetBlipsProviderFactory(coreModule);
    }

    public static BlipsProvider proxyGetBlipsProvider(CoreModule coreModule) {
        return coreModule.getBlipsProvider();
    }

    @Override // javax.inject.Provider
    public BlipsProvider get() {
        return (BlipsProvider) Preconditions.checkNotNull(this.module.getBlipsProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
