package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory.class */
public final class ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory implements Factory<ZendeskSettingsProvider> {
    private final Provider<ApplicationConfiguration> configurationProvider;
    private final Provider<Context> contextProvider;
    private final Provider<CoreSettingsStorage> coreSettingsStorageProvider;
    private final Provider<SdkSettingsService> sdkSettingsServiceProvider;
    private final Provider<Serializer> serializerProvider;
    private final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory(Provider<SdkSettingsService> provider, Provider<SettingsStorage> provider2, Provider<CoreSettingsStorage> provider3, Provider<Serializer> provider4, Provider<ApplicationConfiguration> provider5, Provider<Context> provider6) {
        this.sdkSettingsServiceProvider = provider;
        this.settingsStorageProvider = provider2;
        this.coreSettingsStorageProvider = provider3;
        this.serializerProvider = provider4;
        this.configurationProvider = provider5;
        this.contextProvider = provider6;
    }

    public static Factory<ZendeskSettingsProvider> create(Provider<SdkSettingsService> provider, Provider<SettingsStorage> provider2, Provider<CoreSettingsStorage> provider3, Provider<Serializer> provider4, Provider<ApplicationConfiguration> provider5, Provider<Context> provider6) {
        return new ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static ZendeskSettingsProvider proxyProvideZendeskSdkSettingsProvider(Object obj, Object obj2, Object obj3, Object obj4, ApplicationConfiguration applicationConfiguration, Context context) {
        return ZendeskProvidersModule.provideZendeskSdkSettingsProvider((SdkSettingsService) obj, (SettingsStorage) obj2, (CoreSettingsStorage) obj3, (Serializer) obj4, applicationConfiguration, context);
    }

    @Override // javax.inject.Provider
    public ZendeskSettingsProvider get() {
        return (ZendeskSettingsProvider) Preconditions.checkNotNull(ZendeskProvidersModule.provideZendeskSdkSettingsProvider(this.sdkSettingsServiceProvider.get(), this.settingsStorageProvider.get(), this.coreSettingsStorageProvider.get(), this.serializerProvider.get(), this.configurationProvider.get(), this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
