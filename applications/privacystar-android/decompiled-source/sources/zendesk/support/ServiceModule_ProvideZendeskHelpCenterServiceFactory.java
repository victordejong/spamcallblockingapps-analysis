package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskHelpCenterServiceFactory.class */
public final class ServiceModule_ProvideZendeskHelpCenterServiceFactory implements Factory<ZendeskHelpCenterService> {
    private final Provider<HelpCenterService> helpCenterServiceProvider;
    private final Provider<HelpCenterLocaleConverter> localeConverterProvider;

    public ServiceModule_ProvideZendeskHelpCenterServiceFactory(Provider<HelpCenterService> provider, Provider<HelpCenterLocaleConverter> provider2) {
        this.helpCenterServiceProvider = provider;
        this.localeConverterProvider = provider2;
    }

    public static Factory<ZendeskHelpCenterService> create(Provider<HelpCenterService> provider, Provider<HelpCenterLocaleConverter> provider2) {
        return new ServiceModule_ProvideZendeskHelpCenterServiceFactory(provider, provider2);
    }

    public static ZendeskHelpCenterService proxyProvideZendeskHelpCenterService(Object obj, HelpCenterLocaleConverter helpCenterLocaleConverter) {
        return ServiceModule.provideZendeskHelpCenterService((HelpCenterService) obj, helpCenterLocaleConverter);
    }

    @Override // javax.inject.Provider
    public ZendeskHelpCenterService get() {
        return (ZendeskHelpCenterService) Preconditions.checkNotNull(ServiceModule.provideZendeskHelpCenterService(this.helpCenterServiceProvider.get(), this.localeConverterProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
