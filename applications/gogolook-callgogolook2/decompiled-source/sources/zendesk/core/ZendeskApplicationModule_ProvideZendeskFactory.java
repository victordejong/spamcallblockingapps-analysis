package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideZendeskFactory.class */
public final class ZendeskApplicationModule_ProvideZendeskFactory implements AbstractC10866b<ZendeskShadow> {
    public final Provider<BlipsCoreProvider> blipsCoreProvider;
    public final Provider<CoreModule> coreModuleProvider;
    public final Provider<IdentityManager> identityManagerProvider;
    public final Provider<LegacyIdentityMigrator> legacyIdentityMigratorProvider;
    public final Provider<ProviderStore> providerStoreProvider;
    public final Provider<PushRegistrationProvider> pushRegistrationProvider;
    public final Provider<Storage> storageProvider;

    public ZendeskApplicationModule_ProvideZendeskFactory(Provider<Storage> provider, Provider<LegacyIdentityMigrator> provider2, Provider<IdentityManager> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushRegistrationProvider> provider5, Provider<CoreModule> provider6, Provider<ProviderStore> provider7) {
        this.storageProvider = provider;
        this.legacyIdentityMigratorProvider = provider2;
        this.identityManagerProvider = provider3;
        this.blipsCoreProvider = provider4;
        this.pushRegistrationProvider = provider5;
        this.coreModuleProvider = provider6;
        this.providerStoreProvider = provider7;
    }

    public static ZendeskApplicationModule_ProvideZendeskFactory create(Provider<Storage> provider, Provider<LegacyIdentityMigrator> provider2, Provider<IdentityManager> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushRegistrationProvider> provider5, Provider<CoreModule> provider6, Provider<ProviderStore> provider7) {
        return new ZendeskApplicationModule_ProvideZendeskFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ZendeskShadow provideZendesk(Object obj, Object obj2, Object obj3, Object obj4, PushRegistrationProvider pushRegistrationProvider, CoreModule coreModule, ProviderStore providerStore) {
        ZendeskShadow provideZendesk = ZendeskApplicationModule.provideZendesk((Storage) obj, (LegacyIdentityMigrator) obj2, (IdentityManager) obj3, (BlipsCoreProvider) obj4, pushRegistrationProvider, coreModule, providerStore);
        C10867c.m10383a(provideZendesk, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendesk;
    }

    @Override // javax.inject.Provider
    public ZendeskShadow get() {
        return provideZendesk(this.storageProvider.get(), this.legacyIdentityMigratorProvider.get(), this.identityManagerProvider.get(), this.blipsCoreProvider.get(), this.pushRegistrationProvider.get(), this.coreModuleProvider.get(), this.providerStoreProvider.get());
    }
}
