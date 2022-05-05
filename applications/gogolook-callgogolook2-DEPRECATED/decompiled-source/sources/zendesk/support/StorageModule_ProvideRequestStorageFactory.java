package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.MemoryCache;
import zendesk.core.SessionStorage;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestStorageFactory.class */
public final class StorageModule_ProvideRequestStorageFactory implements AbstractC10866b<RequestStorage> {
    public final Provider<SessionStorage> baseStorageProvider;
    public final Provider<MemoryCache> memoryCacheProvider;
    public final StorageModule module;
    public final Provider<RequestMigrator> requestMigratorProvider;

    public StorageModule_ProvideRequestStorageFactory(StorageModule storageModule, Provider<SessionStorage> provider, Provider<RequestMigrator> provider2, Provider<MemoryCache> provider3) {
        this.module = storageModule;
        this.baseStorageProvider = provider;
        this.requestMigratorProvider = provider2;
        this.memoryCacheProvider = provider3;
    }

    public static StorageModule_ProvideRequestStorageFactory create(StorageModule storageModule, Provider<SessionStorage> provider, Provider<RequestMigrator> provider2, Provider<MemoryCache> provider3) {
        return new StorageModule_ProvideRequestStorageFactory(storageModule, provider, provider2, provider3);
    }

    public static RequestStorage provideRequestStorage(StorageModule storageModule, SessionStorage sessionStorage, Object obj, MemoryCache memoryCache) {
        RequestStorage provideRequestStorage = storageModule.provideRequestStorage(sessionStorage, (RequestMigrator) obj, memoryCache);
        C10867c.m10383a(provideRequestStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideRequestStorage;
    }

    @Override // javax.inject.Provider
    public RequestStorage get() {
        return provideRequestStorage(this.module, this.baseStorageProvider.get(), this.requestMigratorProvider.get(), this.memoryCacheProvider.get());
    }
}
