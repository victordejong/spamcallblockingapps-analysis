package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory.class */
public final class C2670x2dd20439 implements Factory<ZendeskOauthIdHeaderInterceptor> {
    private final Provider<ApplicationConfiguration> configurationProvider;
    private final ZendeskNetworkModule module;

    public C2670x2dd20439(ZendeskNetworkModule zendeskNetworkModule, Provider<ApplicationConfiguration> provider) {
        this.module = zendeskNetworkModule;
        this.configurationProvider = provider;
    }

    public static Factory<ZendeskOauthIdHeaderInterceptor> create(ZendeskNetworkModule zendeskNetworkModule, Provider<ApplicationConfiguration> provider) {
        return new C2670x2dd20439(zendeskNetworkModule, provider);
    }

    public static ZendeskOauthIdHeaderInterceptor proxyProvideZendeskBasicHeadersInterceptor(ZendeskNetworkModule zendeskNetworkModule, ApplicationConfiguration applicationConfiguration) {
        return zendeskNetworkModule.provideZendeskBasicHeadersInterceptor(applicationConfiguration);
    }

    @Override // javax.inject.Provider
    public ZendeskOauthIdHeaderInterceptor get() {
        return (ZendeskOauthIdHeaderInterceptor) Preconditions.checkNotNull(this.module.provideZendeskBasicHeadersInterceptor(this.configurationProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
