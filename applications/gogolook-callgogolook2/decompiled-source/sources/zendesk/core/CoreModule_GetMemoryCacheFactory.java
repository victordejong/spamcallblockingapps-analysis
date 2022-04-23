package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetMemoryCacheFactory.class */
public final class CoreModule_GetMemoryCacheFactory implements AbstractC10866b<MemoryCache> {
    public final CoreModule module;

    public CoreModule_GetMemoryCacheFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetMemoryCacheFactory create(CoreModule coreModule) {
        return new CoreModule_GetMemoryCacheFactory(coreModule);
    }

    public static MemoryCache getMemoryCache(CoreModule coreModule) {
        MemoryCache memoryCache = coreModule.getMemoryCache();
        C10867c.m10383a(memoryCache, "Cannot return null from a non-@Nullable @Provides method");
        return memoryCache;
    }

    @Override // javax.inject.Provider
    public MemoryCache get() {
        return getMemoryCache(this.module);
    }
}
