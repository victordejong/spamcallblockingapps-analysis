package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideUserServiceFactory.class */
public final class ZendeskProvidersModule_ProvideUserServiceFactory implements AbstractC10866b<UserService> {
    public final Provider<C15300s> retrofitProvider;

    public ZendeskProvidersModule_ProvideUserServiceFactory(Provider<C15300s> provider) {
        this.retrofitProvider = provider;
    }

    public static ZendeskProvidersModule_ProvideUserServiceFactory create(Provider<C15300s> provider) {
        return new ZendeskProvidersModule_ProvideUserServiceFactory(provider);
    }

    public static UserService provideUserService(C15300s sVar) {
        UserService provideUserService = ZendeskProvidersModule.provideUserService(sVar);
        C10867c.m10383a(provideUserService, "Cannot return null from a non-@Nullable @Provides method");
        return provideUserService;
    }

    @Override // javax.inject.Provider
    public UserService get() {
        return provideUserService(this.retrofitProvider.get());
    }
}
