package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSdkStorageFactory.class */
public final class ZendeskStorageModule_ProvideSdkStorageFactory implements AbstractC10866b<Storage> {
    public final Provider<MemoryCache> memoryCacheProvider;
    public final Provider<BaseStorage> sdkBaseStorageProvider;
    public final Provider<SessionStorage> sessionStorageProvider;
    public final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskStorageModule_ProvideSdkStorageFactory(Provider<SettingsStorage> provider, Provider<SessionStorage> provider2, Provider<BaseStorage> provider3, Provider<MemoryCache> provider4) {
        this.settingsStorageProvider = provider;
        this.sessionStorageProvider = provider2;
        this.sdkBaseStorageProvider = provider3;
        this.memoryCacheProvider = provider4;
    }

    public static ZendeskStorageModule_ProvideSdkStorageFactory create(Provider<SettingsStorage> provider, Provider<SessionStorage> provider2, Provider<BaseStorage> provider3, Provider<MemoryCache> provider4) {
        return new ZendeskStorageModule_ProvideSdkStorageFactory(provider, provider2, provider3, provider4);
    }

    public static Storage provideSdkStorage(Object obj, SessionStorage sessionStorage, BaseStorage baseStorage, MemoryCache memoryCache) {
        Storage provideSdkStorage = ZendeskStorageModule.provideSdkStorage((SettingsStorage) obj, sessionStorage, baseStorage, memoryCache);
        C10867c.m10383a(provideSdkStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideSdkStorage;
    }

    @Override // javax.inject.Provider
    public Storage get() {
        return provideSdkStorage(this.settingsStorageProvider.get(), this.sessionStorageProvider.get(), this.sdkBaseStorageProvider.get(), this.memoryCacheProvider.get());
    }
}
