package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import okhttp3.logging.HttpLoggingInterceptor;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory.class */
public final class ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory implements Factory<HttpLoggingInterceptor> {
    private static final ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory INSTANCE = new ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory();

    public static Factory<HttpLoggingInterceptor> create() {
        return INSTANCE;
    }

    public static HttpLoggingInterceptor proxyProvideHttpLoggingInterceptor() {
        return ZendeskApplicationModule.provideHttpLoggingInterceptor();
    }

    @Override // javax.inject.Provider
    public HttpLoggingInterceptor get() {
        return (HttpLoggingInterceptor) Preconditions.checkNotNull(ZendeskApplicationModule.provideHttpLoggingInterceptor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
