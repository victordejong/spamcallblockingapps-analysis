package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideCustomNetworkConfigFactory.class */
public final class ServiceModule_ProvideCustomNetworkConfigFactory implements AbstractC10866b<HelpCenterCachingNetworkConfig> {
    public final Provider<HelpCenterCachingInterceptor> helpCenterCachingInterceptorProvider;

    public ServiceModule_ProvideCustomNetworkConfigFactory(Provider<HelpCenterCachingInterceptor> provider) {
        this.helpCenterCachingInterceptorProvider = provider;
    }

    public static ServiceModule_ProvideCustomNetworkConfigFactory create(Provider<HelpCenterCachingInterceptor> provider) {
        return new ServiceModule_ProvideCustomNetworkConfigFactory(provider);
    }

    public static HelpCenterCachingNetworkConfig provideCustomNetworkConfig(Object obj) {
        HelpCenterCachingNetworkConfig provideCustomNetworkConfig = ServiceModule.provideCustomNetworkConfig((HelpCenterCachingInterceptor) obj);
        C10867c.m10383a(provideCustomNetworkConfig, "Cannot return null from a non-@Nullable @Provides method");
        return provideCustomNetworkConfig;
    }

    @Override // javax.inject.Provider
    public HelpCenterCachingNetworkConfig get() {
        return provideCustomNetworkConfig(this.helpCenterCachingInterceptorProvider.get());
    }
}
