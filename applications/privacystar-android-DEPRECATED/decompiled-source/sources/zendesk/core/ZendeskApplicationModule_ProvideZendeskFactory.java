package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideZendeskFactory.class */
public final class ZendeskApplicationModule_ProvideZendeskFactory implements Factory<ZendeskShadow> {
    private final Provider<BlipsCoreProvider> blipsCoreProvider;
    private final Provider<CoreModule> coreModuleProvider;
    private final Provider<IdentityManager> identityManagerProvider;
    private final Provider<LegacyIdentityMigrator> legacyIdentityMigratorProvider;
    private final Provider<ProviderStore> providerStoreProvider;
    private final Provider<PushRegistrationProvider> pushRegistrationProvider;
    private final Provider<Storage> storageProvider;

    public ZendeskApplicationModule_ProvideZendeskFactory(Provider<Storage> provider, Provider<LegacyIdentityMigrator> provider2, Provider<IdentityManager> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushRegistrationProvider> provider5, Provider<CoreModule> provider6, Provider<ProviderStore> provider7) {
        this.storageProvider = provider;
        this.legacyIdentityMigratorProvider = provider2;
        this.identityManagerProvider = provider3;
        this.blipsCoreProvider = provider4;
        this.pushRegistrationProvider = provider5;
        this.coreModuleProvider = provider6;
        this.providerStoreProvider = provider7;
    }

    public static Factory<ZendeskShadow> create(Provider<Storage> provider, Provider<LegacyIdentityMigrator> provider2, Provider<IdentityManager> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushRegistrationProvider> provider5, Provider<CoreModule> provider6, Provider<ProviderStore> provider7) {
        return new ZendeskApplicationModule_ProvideZendeskFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ZendeskShadow proxyProvideZendesk(Object obj, Object obj2, Object obj3, Object obj4, PushRegistrationProvider pushRegistrationProvider, CoreModule coreModule, ProviderStore providerStore) {
        return ZendeskApplicationModule.provideZendesk((Storage) obj, (LegacyIdentityMigrator) obj2, (IdentityManager) obj3, (BlipsCoreProvider) obj4, pushRegistrationProvider, coreModule, providerStore);
    }

    @Override // javax.inject.Provider
    public ZendeskShadow get() {
        return (ZendeskShadow) Preconditions.checkNotNull(ZendeskApplicationModule.provideZendesk(this.storageProvider.get(), this.legacyIdentityMigratorProvider.get(), this.identityManagerProvider.get(), this.blipsCoreProvider.get(), this.pushRegistrationProvider.get(), this.coreModuleProvider.get(), this.providerStoreProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
