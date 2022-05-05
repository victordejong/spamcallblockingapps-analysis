package zendesk.support;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestSessionCacheFactory.class */
public final class StorageModule_ProvideRequestSessionCacheFactory implements AbstractC10866b<RequestSessionCache> {
    public final StorageModule module;

    public StorageModule_ProvideRequestSessionCacheFactory(StorageModule storageModule) {
        this.module = storageModule;
    }

    public static StorageModule_ProvideRequestSessionCacheFactory create(StorageModule storageModule) {
        return new StorageModule_ProvideRequestSessionCacheFactory(storageModule);
    }

    public static RequestSessionCache provideRequestSessionCache(StorageModule storageModule) {
        RequestSessionCache provideRequestSessionCache = storageModule.provideRequestSessionCache();
        C10867c.m10383a(provideRequestSessionCache, "Cannot return null from a non-@Nullable @Provides method");
        return provideRequestSessionCache;
    }

    @Override // javax.inject.Provider
    public RequestSessionCache get() {
        return provideRequestSessionCache(this.module);
    }
}
