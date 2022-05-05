package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyIdentityStorageFactory implements AbstractC10866b<LegacyIdentityMigrator> {
    public final Provider<IdentityManager> identityManagerProvider;
    public final Provider<IdentityStorage> identityStorageProvider;
    public final Provider<SharedPreferencesStorage> legacyIdentityBaseStorageProvider;
    public final Provider<SharedPreferencesStorage> legacyPushBaseStorageProvider;
    public final Provider<PushDeviceIdStorage> pushDeviceIdStorageProvider;

    public ZendeskStorageModule_ProvideLegacyIdentityStorageFactory(Provider<SharedPreferencesStorage> provider, Provider<SharedPreferencesStorage> provider2, Provider<IdentityStorage> provider3, Provider<IdentityManager> provider4, Provider<PushDeviceIdStorage> provider5) {
        this.legacyIdentityBaseStorageProvider = provider;
        this.legacyPushBaseStorageProvider = provider2;
        this.identityStorageProvider = provider3;
        this.identityManagerProvider = provider4;
        this.pushDeviceIdStorageProvider = provider5;
    }

    public static ZendeskStorageModule_ProvideLegacyIdentityStorageFactory create(Provider<SharedPreferencesStorage> provider, Provider<SharedPreferencesStorage> provider2, Provider<IdentityStorage> provider3, Provider<IdentityManager> provider4, Provider<PushDeviceIdStorage> provider5) {
        return new ZendeskStorageModule_ProvideLegacyIdentityStorageFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static LegacyIdentityMigrator provideLegacyIdentityStorage(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        LegacyIdentityMigrator provideLegacyIdentityStorage = ZendeskStorageModule.provideLegacyIdentityStorage((SharedPreferencesStorage) obj, (SharedPreferencesStorage) obj2, (IdentityStorage) obj3, (IdentityManager) obj4, (PushDeviceIdStorage) obj5);
        C10867c.m10383a(provideLegacyIdentityStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideLegacyIdentityStorage;
    }

    @Override // javax.inject.Provider
    public LegacyIdentityMigrator get() {
        return provideLegacyIdentityStorage(this.legacyIdentityBaseStorageProvider.get(), this.legacyPushBaseStorageProvider.get(), this.identityStorageProvider.get(), this.identityManagerProvider.get(), this.pushDeviceIdStorageProvider.get());
    }
}
