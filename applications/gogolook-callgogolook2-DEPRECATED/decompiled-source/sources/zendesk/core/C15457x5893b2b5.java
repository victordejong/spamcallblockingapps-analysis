package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideZendeskUnauthorizedInterceptorFactory.class */
public final class C15457x5893b2b5 implements AbstractC10866b<ZendeskUnauthorizedInterceptor> {
    public final Provider<SessionStorage> sessionStorageProvider;

    public C15457x5893b2b5(Provider<SessionStorage> provider) {
        this.sessionStorageProvider = provider;
    }

    public static C15457x5893b2b5 create(Provider<SessionStorage> provider) {
        return new C15457x5893b2b5(provider);
    }

    public static ZendeskUnauthorizedInterceptor provideZendeskUnauthorizedInterceptor(SessionStorage sessionStorage) {
        ZendeskUnauthorizedInterceptor provideZendeskUnauthorizedInterceptor = ZendeskNetworkModule.provideZendeskUnauthorizedInterceptor(sessionStorage);
        C10867c.m10383a(provideZendeskUnauthorizedInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskUnauthorizedInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskUnauthorizedInterceptor get() {
        return provideZendeskUnauthorizedInterceptor(this.sessionStorageProvider.get());
    }
}
