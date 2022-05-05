package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestSessionCacheFactory.class */
public final class StorageModule_ProvideRequestSessionCacheFactory implements Factory<RequestSessionCache> {
    private final StorageModule module;

    public StorageModule_ProvideRequestSessionCacheFactory(StorageModule storageModule) {
        this.module = storageModule;
    }

    public static Factory<RequestSessionCache> create(StorageModule storageModule) {
        return new StorageModule_ProvideRequestSessionCacheFactory(storageModule);
    }

    public static RequestSessionCache proxyProvideRequestSessionCache(StorageModule storageModule) {
        return storageModule.provideRequestSessionCache();
    }

    @Override // javax.inject.Provider
    public RequestSessionCache get() {
        return (RequestSessionCache) Preconditions.checkNotNull(this.module.provideRequestSessionCache(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
