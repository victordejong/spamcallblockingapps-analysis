package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* renamed from: zendesk.core.ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideAcceptLanguageHeaderInterceptorFactory.class */
public final class C15455x23150492 implements AbstractC10866b<AcceptLanguageHeaderInterceptor> {
    public final Provider<Context> contextProvider;

    public C15455x23150492(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static C15455x23150492 create(Provider<Context> provider) {
        return new C15455x23150492(provider);
    }

    public static AcceptLanguageHeaderInterceptor provideAcceptLanguageHeaderInterceptor(Context context) {
        AcceptLanguageHeaderInterceptor provideAcceptLanguageHeaderInterceptor = ZendeskNetworkModule.provideAcceptLanguageHeaderInterceptor(context);
        C10867c.m10383a(provideAcceptLanguageHeaderInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideAcceptLanguageHeaderInterceptor;
    }

    @Override // javax.inject.Provider
    public AcceptLanguageHeaderInterceptor get() {
        return provideAcceptLanguageHeaderInterceptor(this.contextProvider.get());
    }
}
