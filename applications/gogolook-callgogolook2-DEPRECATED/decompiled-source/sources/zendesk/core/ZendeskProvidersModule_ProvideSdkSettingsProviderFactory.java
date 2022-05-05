package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsProviderFactory implements AbstractC10866b<SettingsProvider> {
    public final Provider<ZendeskSettingsProvider> sdkSettingsProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsProviderFactory(Provider<ZendeskSettingsProvider> provider) {
        this.sdkSettingsProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideSdkSettingsProviderFactory create(Provider<ZendeskSettingsProvider> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsProviderFactory(provider);
    }

    public static SettingsProvider provideSdkSettingsProvider(Object obj) {
        ZendeskSettingsProvider zendeskSettingsProvider = (ZendeskSettingsProvider) obj;
        ZendeskProvidersModule.provideSdkSettingsProvider(zendeskSettingsProvider);
        C10867c.m10383a(zendeskSettingsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return zendeskSettingsProvider;
    }

    @Override // javax.inject.Provider
    public SettingsProvider get() {
        return provideSdkSettingsProvider(this.sdkSettingsProvider.get());
    }
}
