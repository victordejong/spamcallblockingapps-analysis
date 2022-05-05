package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideZendeskBasicHeadersInterceptorFactory.class */
public final class C15456x2dd20439 implements AbstractC10866b<ZendeskOauthIdHeaderInterceptor> {
    public final Provider<ApplicationConfiguration> configurationProvider;
    public final ZendeskNetworkModule module;

    public C15456x2dd20439(ZendeskNetworkModule zendeskNetworkModule, Provider<ApplicationConfiguration> provider) {
        this.module = zendeskNetworkModule;
        this.configurationProvider = provider;
    }

    public static C15456x2dd20439 create(ZendeskNetworkModule zendeskNetworkModule, Provider<ApplicationConfiguration> provider) {
        return new C15456x2dd20439(zendeskNetworkModule, provider);
    }

    public static ZendeskOauthIdHeaderInterceptor provideZendeskBasicHeadersInterceptor(ZendeskNetworkModule zendeskNetworkModule, ApplicationConfiguration applicationConfiguration) {
        ZendeskOauthIdHeaderInterceptor provideZendeskBasicHeadersInterceptor = zendeskNetworkModule.provideZendeskBasicHeadersInterceptor(applicationConfiguration);
        C10867c.m10383a(provideZendeskBasicHeadersInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskBasicHeadersInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskOauthIdHeaderInterceptor get() {
        return provideZendeskBasicHeadersInterceptor(this.module, this.configurationProvider.get());
    }
}
