package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyIdentityStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyIdentityStorageFactory implements Factory<LegacyIdentityMigrator> {
    private final Provider<IdentityManager> identityManagerProvider;
    private final Provider<IdentityStorage> identityStorageProvider;
    private final Provider<SharedPreferencesStorage> legacyIdentityBaseStorageProvider;
    private final Provider<SharedPreferencesStorage> legacyPushBaseStorageProvider;
    private final Provider<PushDeviceIdStorage> pushDeviceIdStorageProvider;

    public ZendeskStorageModule_ProvideLegacyIdentityStorageFactory(Provider<SharedPreferencesStorage> provider, Provider<SharedPreferencesStorage> provider2, Provider<IdentityStorage> provider3, Provider<IdentityManager> provider4, Provider<PushDeviceIdStorage> provider5) {
        this.legacyIdentityBaseStorageProvider = provider;
        this.legacyPushBaseStorageProvider = provider2;
        this.identityStorageProvider = provider3;
        this.identityManagerProvider = provider4;
        this.pushDeviceIdStorageProvider = provider5;
    }

    public static Factory<LegacyIdentityMigrator> create(Provider<SharedPreferencesStorage> provider, Provider<SharedPreferencesStorage> provider2, Provider<IdentityStorage> provider3, Provider<IdentityManager> provider4, Provider<PushDeviceIdStorage> provider5) {
        return new ZendeskStorageModule_ProvideLegacyIdentityStorageFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static LegacyIdentityMigrator proxyProvideLegacyIdentityStorage(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return ZendeskStorageModule.provideLegacyIdentityStorage((SharedPreferencesStorage) obj, (SharedPreferencesStorage) obj2, (IdentityStorage) obj3, (IdentityManager) obj4, (PushDeviceIdStorage) obj5);
    }

    @Override // javax.inject.Provider
    public LegacyIdentityMigrator get() {
        return (LegacyIdentityMigrator) Preconditions.checkNotNull(ZendeskStorageModule.provideLegacyIdentityStorage(this.legacyIdentityBaseStorageProvider.get(), this.legacyPushBaseStorageProvider.get(), this.identityStorageProvider.get(), this.identityManagerProvider.get(), this.pushDeviceIdStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
