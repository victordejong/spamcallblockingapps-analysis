package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideCachingInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideCachingInterceptorFactory implements AbstractC10866b<CachingInterceptor> {
    public final Provider<BaseStorage> mediaCacheProvider;

    public ZendeskNetworkModule_ProvideCachingInterceptorFactory(Provider<BaseStorage> provider) {
        this.mediaCacheProvider = provider;
    }

    public static ZendeskNetworkModule_ProvideCachingInterceptorFactory create(Provider<BaseStorage> provider) {
        return new ZendeskNetworkModule_ProvideCachingInterceptorFactory(provider);
    }

    public static CachingInterceptor provideCachingInterceptor(BaseStorage baseStorage) {
        CachingInterceptor provideCachingInterceptor = ZendeskNetworkModule.provideCachingInterceptor(baseStorage);
        C10867c.m10383a(provideCachingInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideCachingInterceptor;
    }

    @Override // javax.inject.Provider
    public CachingInterceptor get() {
        return provideCachingInterceptor(this.mediaCacheProvider.get());
    }
}
