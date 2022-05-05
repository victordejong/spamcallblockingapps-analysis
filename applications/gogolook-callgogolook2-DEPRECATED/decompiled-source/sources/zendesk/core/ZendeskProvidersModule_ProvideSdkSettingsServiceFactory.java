package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsServiceFactory implements AbstractC10866b<SdkSettingsService> {
    public final Provider<C15300s> retrofitProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsServiceFactory(Provider<C15300s> provider) {
        this.retrofitProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideSdkSettingsServiceFactory create(Provider<C15300s> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsServiceFactory(provider);
    }

    public static SdkSettingsService provideSdkSettingsService(C15300s sVar) {
        SdkSettingsService provideSdkSettingsService = ZendeskProvidersModule.provideSdkSettingsService(sVar);
        C10867c.m10383a(provideSdkSettingsService, "Cannot return null from a non-@Nullable @Provides method");
        return provideSdkSettingsService;
    }

    @Override // javax.inject.Provider
    public SdkSettingsService get() {
        return provideSdkSettingsService(this.retrofitProvider.get());
    }
}
