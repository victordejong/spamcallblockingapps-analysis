package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory.class */
public final class ServiceModule_ProvideZendeskHelpCenterServiceFactory implements AbstractC10866b<ZendeskHelpCenterService> {
    public final Provider<HelpCenterService> helpCenterServiceProvider;
    public final Provider<ZendeskLocaleConverter> localeConverterProvider;

    public ServiceModule_ProvideZendeskHelpCenterServiceFactory(Provider<HelpCenterService> provider, Provider<ZendeskLocaleConverter> provider2) {
        this.helpCenterServiceProvider = provider;
        this.localeConverterProvider = provider2;
    }

    public static ServiceModule_ProvideZendeskHelpCenterServiceFactory create(Provider<HelpCenterService> provider, Provider<ZendeskLocaleConverter> provider2) {
        return new ServiceModule_ProvideZendeskHelpCenterServiceFactory(provider, provider2);
    }

    public static ZendeskHelpCenterService provideZendeskHelpCenterService(Object obj, ZendeskLocaleConverter zendeskLocaleConverter) {
        ZendeskHelpCenterService provideZendeskHelpCenterService = ServiceModule.provideZendeskHelpCenterService((HelpCenterService) obj, zendeskLocaleConverter);
        C10867c.m10383a(provideZendeskHelpCenterService, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskHelpCenterService;
    }

    @Override // javax.inject.Provider
    public ZendeskHelpCenterService get() {
        return provideZendeskHelpCenterService(this.helpCenterServiceProvider.get(), this.localeConverterProvider.get());
    }
}
