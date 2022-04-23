package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory.class */
public final class ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory implements AbstractC10866b<ZendeskSettingsProvider> {
    public final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    public final Provider<ApplicationConfiguration> configurationProvider;
    public final Provider<Context> contextProvider;
    public final Provider<CoreSettingsStorage> coreSettingsStorageProvider;
    public final Provider<SdkSettingsService> sdkSettingsServiceProvider;
    public final Provider<Serializer> serializerProvider;
    public final Provider<SettingsStorage> settingsStorageProvider;
    public final Provider<ZendeskLocaleConverter> zendeskLocaleConverterProvider;

    public ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory(Provider<SdkSettingsService> provider, Provider<SettingsStorage> provider2, Provider<CoreSettingsStorage> provider3, Provider<ActionHandlerRegistry> provider4, Provider<Serializer> provider5, Provider<ZendeskLocaleConverter> provider6, Provider<ApplicationConfiguration> provider7, Provider<Context> provider8) {
        this.sdkSettingsServiceProvider = provider;
        this.settingsStorageProvider = provider2;
        this.coreSettingsStorageProvider = provider3;
        this.actionHandlerRegistryProvider = provider4;
        this.serializerProvider = provider5;
        this.zendeskLocaleConverterProvider = provider6;
        this.configurationProvider = provider7;
        this.contextProvider = provider8;
    }

    public static ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory create(Provider<SdkSettingsService> provider, Provider<SettingsStorage> provider2, Provider<CoreSettingsStorage> provider3, Provider<ActionHandlerRegistry> provider4, Provider<Serializer> provider5, Provider<ZendeskLocaleConverter> provider6, Provider<ApplicationConfiguration> provider7, Provider<Context> provider8) {
        return new ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static ZendeskSettingsProvider provideZendeskSdkSettingsProvider(Object obj, Object obj2, Object obj3, ActionHandlerRegistry actionHandlerRegistry, Object obj4, ZendeskLocaleConverter zendeskLocaleConverter, ApplicationConfiguration applicationConfiguration, Context context) {
        ZendeskSettingsProvider provideZendeskSdkSettingsProvider = ZendeskProvidersModule.provideZendeskSdkSettingsProvider((SdkSettingsService) obj, (SettingsStorage) obj2, (CoreSettingsStorage) obj3, actionHandlerRegistry, (Serializer) obj4, zendeskLocaleConverter, applicationConfiguration, context);
        C10867c.m10383a(provideZendeskSdkSettingsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskSdkSettingsProvider;
    }

    @Override // javax.inject.Provider
    public ZendeskSettingsProvider get() {
        return provideZendeskSdkSettingsProvider(this.sdkSettingsServiceProvider.get(), this.settingsStorageProvider.get(), this.coreSettingsStorageProvider.get(), this.actionHandlerRegistryProvider.get(), this.serializerProvider.get(), this.zendeskLocaleConverterProvider.get(), this.configurationProvider.get(), this.contextProvider.get());
    }
}
