package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory.class */
public final class C2671x5893b2b5 implements Factory<ZendeskUnauthorizedInterceptor> {
    private final Provider<SessionStorage> sessionStorageProvider;

    public C2671x5893b2b5(Provider<SessionStorage> provider) {
        this.sessionStorageProvider = provider;
    }

    public static Factory<ZendeskUnauthorizedInterceptor> create(Provider<SessionStorage> provider) {
        return new C2671x5893b2b5(provider);
    }

    public static ZendeskUnauthorizedInterceptor proxyProvideZendeskUnauthorizedInterceptor(SessionStorage sessionStorage) {
        return ZendeskNetworkModule.provideZendeskUnauthorizedInterceptor(sessionStorage);
    }

    @Override // javax.inject.Provider
    public ZendeskUnauthorizedInterceptor get() {
        return (ZendeskUnauthorizedInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.provideZendeskUnauthorizedInterceptor(this.sessionStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
