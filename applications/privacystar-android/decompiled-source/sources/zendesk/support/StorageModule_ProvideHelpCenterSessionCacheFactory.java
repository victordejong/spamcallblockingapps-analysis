package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideHelpCenterSessionCacheFactory.class */
public final class StorageModule_ProvideHelpCenterSessionCacheFactory implements Factory<HelpCenterSessionCache> {
    private final StorageModule module;

    public StorageModule_ProvideHelpCenterSessionCacheFactory(StorageModule storageModule) {
        this.module = storageModule;
    }

    public static Factory<HelpCenterSessionCache> create(StorageModule storageModule) {
        return new StorageModule_ProvideHelpCenterSessionCacheFactory(storageModule);
    }

    public static HelpCenterSessionCache proxyProvideHelpCenterSessionCache(StorageModule storageModule) {
        return storageModule.provideHelpCenterSessionCache();
    }

    @Override // javax.inject.Provider
    public HelpCenterSessionCache get() {
        return (HelpCenterSessionCache) Preconditions.checkNotNull(this.module.provideHelpCenterSessionCache(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
