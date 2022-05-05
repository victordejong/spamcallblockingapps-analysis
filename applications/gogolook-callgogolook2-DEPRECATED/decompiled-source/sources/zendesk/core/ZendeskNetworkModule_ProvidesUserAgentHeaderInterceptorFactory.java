package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory implements AbstractC10866b<UserAgentAndClientHeadersInterceptor> {
    public final ZendeskNetworkModule module;

    public ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory(ZendeskNetworkModule zendeskNetworkModule) {
        this.module = zendeskNetworkModule;
    }

    public static ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory create(ZendeskNetworkModule zendeskNetworkModule) {
        return new ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory(zendeskNetworkModule);
    }

    public static UserAgentAndClientHeadersInterceptor providesUserAgentHeaderInterceptor(ZendeskNetworkModule zendeskNetworkModule) {
        UserAgentAndClientHeadersInterceptor providesUserAgentHeaderInterceptor = zendeskNetworkModule.providesUserAgentHeaderInterceptor();
        C10867c.m10383a(providesUserAgentHeaderInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return providesUserAgentHeaderInterceptor;
    }

    @Override // javax.inject.Provider
    public UserAgentAndClientHeadersInterceptor get() {
        return providesUserAgentHeaderInterceptor(this.module);
    }
}
