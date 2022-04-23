package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideMemoryCacheFactory.class */
public final class ZendeskStorageModule_ProvideMemoryCacheFactory implements AbstractC10866b<MemoryCache> {
    public static final ZendeskStorageModule_ProvideMemoryCacheFactory INSTANCE = new ZendeskStorageModule_ProvideMemoryCacheFactory();

    public static ZendeskStorageModule_ProvideMemoryCacheFactory create() {
        return INSTANCE;
    }

    public static MemoryCache provideMemoryCache() {
        MemoryCache provideMemoryCache = ZendeskStorageModule.provideMemoryCache();
        C10867c.m10383a(provideMemoryCache, "Cannot return null from a non-@Nullable @Provides method");
        return provideMemoryCache;
    }

    @Override // javax.inject.Provider
    public MemoryCache get() {
        return provideMemoryCache();
    }
}
