package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideSettingsInterceptorFactory implements AbstractC10866b<ZendeskSettingsInterceptor> {
    public final Provider<SdkSettingsProviderInternal> sdkSettingsProvider;
    public final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskNetworkModule_ProvideSettingsInterceptorFactory(Provider<SdkSettingsProviderInternal> provider, Provider<SettingsStorage> provider2) {
        this.sdkSettingsProvider = provider;
        this.settingsStorageProvider = provider2;
    }

    public static ZendeskNetworkModule_ProvideSettingsInterceptorFactory create(Provider<SdkSettingsProviderInternal> provider, Provider<SettingsStorage> provider2) {
        return new ZendeskNetworkModule_ProvideSettingsInterceptorFactory(provider, provider2);
    }

    public static ZendeskSettingsInterceptor provideSettingsInterceptor(Object obj, Object obj2) {
        ZendeskSettingsInterceptor provideSettingsInterceptor = ZendeskNetworkModule.provideSettingsInterceptor((SdkSettingsProviderInternal) obj, (SettingsStorage) obj2);
        C10867c.m10383a(provideSettingsInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideSettingsInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskSettingsInterceptor get() {
        return provideSettingsInterceptor(this.sdkSettingsProvider.get(), this.settingsStorageProvider.get());
    }
}
