package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory.class */
public final class ZendeskStorageModule_ProvideSdkStorageFactory implements Factory<Storage> {
    private final Provider<MemoryCache> memoryCacheProvider;
    private final Provider<BaseStorage> sdkBaseStorageProvider;
    private final Provider<SessionStorage> sessionStorageProvider;
    private final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskStorageModule_ProvideSdkStorageFactory(Provider<SettingsStorage> provider, Provider<SessionStorage> provider2, Provider<BaseStorage> provider3, Provider<MemoryCache> provider4) {
        this.settingsStorageProvider = provider;
        this.sessionStorageProvider = provider2;
        this.sdkBaseStorageProvider = provider3;
        this.memoryCacheProvider = provider4;
    }

    public static Factory<Storage> create(Provider<SettingsStorage> provider, Provider<SessionStorage> provider2, Provider<BaseStorage> provider3, Provider<MemoryCache> provider4) {
        return new ZendeskStorageModule_ProvideSdkStorageFactory(provider, provider2, provider3, provider4);
    }

    public static Storage proxyProvideSdkStorage(Object obj, SessionStorage sessionStorage, BaseStorage baseStorage, MemoryCache memoryCache) {
        return ZendeskStorageModule.provideSdkStorage((SettingsStorage) obj, sessionStorage, baseStorage, memoryCache);
    }

    @Override // javax.inject.Provider
    public Storage get() {
        return (Storage) Preconditions.checkNotNull(ZendeskStorageModule.provideSdkStorage(this.settingsStorageProvider.get(), this.sessionStorageProvider.get(), this.sdkBaseStorageProvider.get(), this.memoryCacheProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
