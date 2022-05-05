package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideBlipsServiceFactory.class */
public final class ZendeskProvidersModule_ProvideBlipsServiceFactory implements AbstractC10866b<BlipsService> {
    public final Provider<C15300s> retrofitProvider;

    public ZendeskProvidersModule_ProvideBlipsServiceFactory(Provider<C15300s> provider) {
        this.retrofitProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideBlipsServiceFactory create(Provider<C15300s> provider) {
        return new ZendeskProvidersModule_ProvideBlipsServiceFactory(provider);
    }

    public static BlipsService provideBlipsService(C15300s sVar) {
        BlipsService provideBlipsService = ZendeskProvidersModule.provideBlipsService(sVar);
        C10867c.m10383a(provideBlipsService, "Cannot return null from a non-@Nullable @Provides method");
        return provideBlipsService;
    }

    @Override // javax.inject.Provider
    public BlipsService get() {
        return provideBlipsService(this.retrofitProvider.get());
    }
}
