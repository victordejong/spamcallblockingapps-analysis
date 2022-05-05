package zendesk.support;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideHelpCenterCachingInterceptorFactory.class */
public final class ServiceModule_ProvideHelpCenterCachingInterceptorFactory implements AbstractC10866b<HelpCenterCachingInterceptor> {
    public static final ServiceModule_ProvideHelpCenterCachingInterceptorFactory INSTANCE = new ServiceModule_ProvideHelpCenterCachingInterceptorFactory();

    public static ServiceModule_ProvideHelpCenterCachingInterceptorFactory create() {
        return INSTANCE;
    }

    public static HelpCenterCachingInterceptor provideHelpCenterCachingInterceptor() {
        HelpCenterCachingInterceptor provideHelpCenterCachingInterceptor = ServiceModule.provideHelpCenterCachingInterceptor();
        C10867c.m10383a(provideHelpCenterCachingInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideHelpCenterCachingInterceptor;
    }

    @Override // javax.inject.Provider
    public HelpCenterCachingInterceptor get() {
        return provideHelpCenterCachingInterceptor();
    }
}
