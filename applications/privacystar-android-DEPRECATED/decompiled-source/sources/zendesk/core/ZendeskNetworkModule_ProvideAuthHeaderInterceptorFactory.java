package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory implements Factory<ZendeskAuthHeaderInterceptor> {
    private final Provider<IdentityManager> identityManagerProvider;

    public ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory(Provider<IdentityManager> provider) {
        this.identityManagerProvider = provider;
    }

    public static Factory<ZendeskAuthHeaderInterceptor> create(Provider<IdentityManager> provider) {
        return new ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory(provider);
    }

    public static ZendeskAuthHeaderInterceptor proxyProvideAuthHeaderInterceptor(Object obj) {
        return ZendeskNetworkModule.provideAuthHeaderInterceptor((IdentityManager) obj);
    }

    @Override // javax.inject.Provider
    public ZendeskAuthHeaderInterceptor get() {
        return (ZendeskAuthHeaderInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.provideAuthHeaderInterceptor(this.identityManagerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
