package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesHelpCenterServiceFactory.class */
public final class ServiceModule_ProvidesHelpCenterServiceFactory implements Factory<HelpCenterService> {
    private final Provider<HelpCenterCachingNetworkConfig> helpCenterCachingNetworkConfigProvider;
    private final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesHelpCenterServiceFactory(Provider<RestServiceProvider> provider, Provider<HelpCenterCachingNetworkConfig> provider2) {
        this.restServiceProvider = provider;
        this.helpCenterCachingNetworkConfigProvider = provider2;
    }

    public static Factory<HelpCenterService> create(Provider<RestServiceProvider> provider, Provider<HelpCenterCachingNetworkConfig> provider2) {
        return new ServiceModule_ProvidesHelpCenterServiceFactory(provider, provider2);
    }

    public static HelpCenterService proxyProvidesHelpCenterService(RestServiceProvider restServiceProvider, Object obj) {
        return ServiceModule.providesHelpCenterService(restServiceProvider, (HelpCenterCachingNetworkConfig) obj);
    }

    @Override // javax.inject.Provider
    public HelpCenterService get() {
        return (HelpCenterService) Preconditions.checkNotNull(ServiceModule.providesHelpCenterService(this.restServiceProvider.get(), this.helpCenterCachingNetworkConfigProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
