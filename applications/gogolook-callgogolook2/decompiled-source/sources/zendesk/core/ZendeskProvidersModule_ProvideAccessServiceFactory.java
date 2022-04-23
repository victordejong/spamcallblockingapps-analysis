package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideAccessServiceFactory.class */
public final class ZendeskProvidersModule_ProvideAccessServiceFactory implements AbstractC10866b<AccessService> {
    public final Provider<C15300s> retrofitProvider;

    public ZendeskProvidersModule_ProvideAccessServiceFactory(Provider<C15300s> provider) {
        this.retrofitProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideAccessServiceFactory create(Provider<C15300s> provider) {
        return new ZendeskProvidersModule_ProvideAccessServiceFactory(provider);
    }

    public static AccessService provideAccessService(C15300s sVar) {
        AccessService provideAccessService = ZendeskProvidersModule.provideAccessService(sVar);
        C10867c.m10383a(provideAccessService, "Cannot return null from a non-@Nullable @Provides method");
        return provideAccessService;
    }

    @Override // javax.inject.Provider
    public AccessService get() {
        return provideAccessService(this.retrofitProvider.get());
    }
}
