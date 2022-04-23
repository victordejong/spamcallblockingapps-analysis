package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory implements AbstractC10866b<SdkSettingsProviderInternal> {
    public final Provider<ZendeskSettingsProvider> sdkSettingsProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory(Provider<ZendeskSettingsProvider> provider) {
        this.sdkSettingsProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory create(Provider<ZendeskSettingsProvider> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory(provider);
    }

    public static SdkSettingsProviderInternal provideSdkSettingsProviderInternal(Object obj) {
        ZendeskSettingsProvider zendeskSettingsProvider = (ZendeskSettingsProvider) obj;
        ZendeskProvidersModule.provideSdkSettingsProviderInternal(zendeskSettingsProvider);
        C10867c.m10383a(zendeskSettingsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return zendeskSettingsProvider;
    }

    @Override // javax.inject.Provider
    public SdkSettingsProviderInternal get() {
        return provideSdkSettingsProviderInternal(this.sdkSettingsProvider.get());
    }
}
