package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory.class */
public final class ZendeskStorageModule_ProvideMemoryCacheFactory implements Factory<MemoryCache> {
    private static final ZendeskStorageModule_ProvideMemoryCacheFactory INSTANCE = new ZendeskStorageModule_ProvideMemoryCacheFactory();

    public static Factory<MemoryCache> create() {
        return INSTANCE;
    }

    public static MemoryCache proxyProvideMemoryCache() {
        return ZendeskStorageModule.provideMemoryCache();
    }

    @Override // javax.inject.Provider
    public MemoryCache get() {
        return (MemoryCache) Preconditions.checkNotNull(ZendeskStorageModule.provideMemoryCache(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
