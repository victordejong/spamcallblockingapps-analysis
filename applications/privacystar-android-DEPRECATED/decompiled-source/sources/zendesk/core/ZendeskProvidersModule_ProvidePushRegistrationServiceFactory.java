package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvidePushRegistrationServiceFactory.class */
public final class ZendeskProvidersModule_ProvidePushRegistrationServiceFactory implements Factory<PushRegistrationService> {
    private final Provider<Retrofit> retrofitProvider;

    public ZendeskProvidersModule_ProvidePushRegistrationServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static Factory<PushRegistrationService> create(Provider<Retrofit> provider) {
        return new ZendeskProvidersModule_ProvidePushRegistrationServiceFactory(provider);
    }

    public static PushRegistrationService proxyProvidePushRegistrationService(Retrofit retrofit) {
        return ZendeskProvidersModule.providePushRegistrationService(retrofit);
    }

    @Override // javax.inject.Provider
    public PushRegistrationService get() {
        return (PushRegistrationService) Preconditions.checkNotNull(ZendeskProvidersModule.providePushRegistrationService(this.retrofitProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
