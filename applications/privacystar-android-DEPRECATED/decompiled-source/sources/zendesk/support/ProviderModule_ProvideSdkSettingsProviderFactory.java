package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Locale;
import javax.inject.Provider;
import zendesk.core.SettingsProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSdkSettingsProviderFactory.class */
public final class ProviderModule_ProvideSdkSettingsProviderFactory implements Factory<SupportSettingsProvider> {
    private final Provider<HelpCenterLocaleConverter> helpCenterLocaleConverterProvider;
    private final Provider<Locale> localeProvider;
    private final ProviderModule module;
    private final Provider<SettingsProvider> sdkSettingsProvider;

    public ProviderModule_ProvideSdkSettingsProviderFactory(ProviderModule providerModule, Provider<SettingsProvider> provider, Provider<Locale> provider2, Provider<HelpCenterLocaleConverter> provider3) {
        this.module = providerModule;
        this.sdkSettingsProvider = provider;
        this.localeProvider = provider2;
        this.helpCenterLocaleConverterProvider = provider3;
    }

    public static Factory<SupportSettingsProvider> create(ProviderModule providerModule, Provider<SettingsProvider> provider, Provider<Locale> provider2, Provider<HelpCenterLocaleConverter> provider3) {
        return new ProviderModule_ProvideSdkSettingsProviderFactory(providerModule, provider, provider2, provider3);
    }

    public static SupportSettingsProvider proxyProvideSdkSettingsProvider(ProviderModule providerModule, SettingsProvider settingsProvider, Locale locale, HelpCenterLocaleConverter helpCenterLocaleConverter) {
        return providerModule.provideSdkSettingsProvider(settingsProvider, locale, helpCenterLocaleConverter);
    }

    @Override // javax.inject.Provider
    public SupportSettingsProvider get() {
        return (SupportSettingsProvider) Preconditions.checkNotNull(this.module.provideSdkSettingsProvider(this.sdkSettingsProvider.get(), this.localeProvider.get(), this.helpCenterLocaleConverterProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
