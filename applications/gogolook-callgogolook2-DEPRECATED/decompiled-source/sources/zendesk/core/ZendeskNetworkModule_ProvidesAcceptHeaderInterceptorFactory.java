package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory implements AbstractC10866b<AcceptHeaderInterceptor> {
    public static final ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory INSTANCE = new ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory();

    public static ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory create() {
        return INSTANCE;
    }

    public static AcceptHeaderInterceptor providesAcceptHeaderInterceptor() {
        AcceptHeaderInterceptor providesAcceptHeaderInterceptor = ZendeskNetworkModule.providesAcceptHeaderInterceptor();
        C10867c.m10383a(providesAcceptHeaderInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return providesAcceptHeaderInterceptor;
    }

    @Override // javax.inject.Provider
    public AcceptHeaderInterceptor get() {
        return providesAcceptHeaderInterceptor();
    }
}
