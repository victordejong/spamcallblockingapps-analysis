package zendesk.core;

import okhttp3.logging.HttpLoggingInterceptor;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory.class */
public final class ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory implements AbstractC10866b<HttpLoggingInterceptor> {
    public static final ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory INSTANCE = new ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory();

    public static ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory create() {
        return INSTANCE;
    }

    public static HttpLoggingInterceptor provideHttpLoggingInterceptor() {
        HttpLoggingInterceptor provideHttpLoggingInterceptor = ZendeskApplicationModule.provideHttpLoggingInterceptor();
        C10867c.m10383a(provideHttpLoggingInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideHttpLoggingInterceptor;
    }

    @Override // javax.inject.Provider
    public HttpLoggingInterceptor get() {
        return provideHttpLoggingInterceptor();
    }
}
