package zendesk.support;

import com.jakewharton.disklrucache.DiskLruCache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.SessionStorage;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesRequestDiskLruCacheFactory.class */
public final class SupportSdkModule_ProvidesRequestDiskLruCacheFactory implements Factory<DiskLruCache> {
    private final SupportSdkModule module;
    private final Provider<SessionStorage> sessionStorageProvider;

    public SupportSdkModule_ProvidesRequestDiskLruCacheFactory(SupportSdkModule supportSdkModule, Provider<SessionStorage> provider) {
        this.module = supportSdkModule;
        this.sessionStorageProvider = provider;
    }

    public static Factory<DiskLruCache> create(SupportSdkModule supportSdkModule, Provider<SessionStorage> provider) {
        return new SupportSdkModule_ProvidesRequestDiskLruCacheFactory(supportSdkModule, provider);
    }

    public static DiskLruCache proxyProvidesRequestDiskLruCache(SupportSdkModule supportSdkModule, SessionStorage sessionStorage) {
        return supportSdkModule.providesRequestDiskLruCache(sessionStorage);
    }

    @Override // javax.inject.Provider
    public DiskLruCache get() {
        return (DiskLruCache) Preconditions.checkNotNull(this.module.providesRequestDiskLruCache(this.sessionStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
