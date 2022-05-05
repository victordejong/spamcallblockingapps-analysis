package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory.class */
public final class C2669x23150492 implements Factory<AcceptLanguageHeaderInterceptor> {
    private final Provider<Context> contextProvider;

    public C2669x23150492(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<AcceptLanguageHeaderInterceptor> create(Provider<Context> provider) {
        return new C2669x23150492(provider);
    }

    public static AcceptLanguageHeaderInterceptor proxyProvideAcceptLanguageHeaderInterceptor(Context context) {
        return ZendeskNetworkModule.provideAcceptLanguageHeaderInterceptor(context);
    }

    @Override // javax.inject.Provider
    public AcceptLanguageHeaderInterceptor get() {
        return (AcceptLanguageHeaderInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.provideAcceptLanguageHeaderInterceptor(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
