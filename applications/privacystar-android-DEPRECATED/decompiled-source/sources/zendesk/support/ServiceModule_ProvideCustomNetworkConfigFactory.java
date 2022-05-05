package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory.class */
public final class ServiceModule_ProvideCustomNetworkConfigFactory implements Factory<HelpCenterCachingNetworkConfig> {
    private final Provider<HelpCenterCachingInterceptor> helpCenterCachingInterceptorProvider;

    public ServiceModule_ProvideCustomNetworkConfigFactory(Provider<HelpCenterCachingInterceptor> provider) {
        this.helpCenterCachingInterceptorProvider = provider;
    }

    public static Factory<HelpCenterCachingNetworkConfig> create(Provider<HelpCenterCachingInterceptor> provider) {
        return new ServiceModule_ProvideCustomNetworkConfigFactory(provider);
    }

    public static HelpCenterCachingNetworkConfig proxyProvideCustomNetworkConfig(Object obj) {
        return ServiceModule.provideCustomNetworkConfig((HelpCenterCachingInterceptor) obj);
    }

    @Override // javax.inject.Provider
    public HelpCenterCachingNetworkConfig get() {
        return (HelpCenterCachingNetworkConfig) Preconditions.checkNotNull(ServiceModule.provideCustomNetworkConfig(this.helpCenterCachingInterceptorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
