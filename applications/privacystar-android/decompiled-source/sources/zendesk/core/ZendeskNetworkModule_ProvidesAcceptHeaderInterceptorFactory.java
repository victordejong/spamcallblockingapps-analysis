package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory implements Factory<AcceptHeaderInterceptor> {
    private static final ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory INSTANCE = new ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory();

    public static Factory<AcceptHeaderInterceptor> create() {
        return INSTANCE;
    }

    public static AcceptHeaderInterceptor proxyProvidesAcceptHeaderInterceptor() {
        return ZendeskNetworkModule.providesAcceptHeaderInterceptor();
    }

    @Override // javax.inject.Provider
    public AcceptHeaderInterceptor get() {
        return (AcceptHeaderInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.providesAcceptHeaderInterceptor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
