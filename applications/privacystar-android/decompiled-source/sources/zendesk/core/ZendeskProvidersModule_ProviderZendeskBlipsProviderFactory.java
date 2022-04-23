package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory.class */
public final class ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory implements Factory<ZendeskBlipsProvider> {
    private final Provider<ApplicationConfiguration> applicationConfigurationProvider;
    private final Provider<BlipsService> blipsServiceProvider;
    private final Provider<CoreSettingsStorage> coreSettingsStorageProvider;
    private final Provider<DeviceInfo> deviceInfoProvider;
    private final Provider<ExecutorService> executorProvider;
    private final Provider<IdentityManager> identityManagerProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory(Provider<BlipsService> provider, Provider<DeviceInfo> provider2, Provider<Serializer> provider3, Provider<IdentityManager> provider4, Provider<ApplicationConfiguration> provider5, Provider<CoreSettingsStorage> provider6, Provider<ExecutorService> provider7) {
        this.blipsServiceProvider = provider;
        this.deviceInfoProvider = provider2;
        this.serializerProvider = provider3;
        this.identityManagerProvider = provider4;
        this.applicationConfigurationProvider = provider5;
        this.coreSettingsStorageProvider = provider6;
        this.executorProvider = provider7;
    }

    public static Factory<ZendeskBlipsProvider> create(Provider<BlipsService> provider, Provider<DeviceInfo> provider2, Provider<Serializer> provider3, Provider<IdentityManager> provider4, Provider<ApplicationConfiguration> provider5, Provider<CoreSettingsStorage> provider6, Provider<ExecutorService> provider7) {
        return new ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ZendeskBlipsProvider proxyProviderZendeskBlipsProvider(Object obj, Object obj2, Object obj3, Object obj4, ApplicationConfiguration applicationConfiguration, Object obj5, ExecutorService executorService) {
        return ZendeskProvidersModule.providerZendeskBlipsProvider((BlipsService) obj, (DeviceInfo) obj2, (Serializer) obj3, (IdentityManager) obj4, applicationConfiguration, (CoreSettingsStorage) obj5, executorService);
    }

    @Override // javax.inject.Provider
    public ZendeskBlipsProvider get() {
        return (ZendeskBlipsProvider) Preconditions.checkNotNull(ZendeskProvidersModule.providerZendeskBlipsProvider(this.blipsServiceProvider.get(), this.deviceInfoProvider.get(), this.serializerProvider.get(), this.identityManagerProvider.get(), this.applicationConfigurationProvider.get(), this.coreSettingsStorageProvider.get(), this.executorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
