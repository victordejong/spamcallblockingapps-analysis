package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideSdkSettingsServiceFactory.class */
public final class ZendeskProvidersModule_ProvideSdkSettingsServiceFactory implements Factory<SdkSettingsService> {
    private final Provider<Retrofit> retrofitProvider;

    public ZendeskProvidersModule_ProvideSdkSettingsServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    public static Factory<SdkSettingsService> create(Provider<Retrofit> provider) {
        return new ZendeskProvidersModule_ProvideSdkSettingsServiceFactory(provider);
    }

    public static SdkSettingsService proxyProvideSdkSettingsService(Retrofit retrofit) {
        return ZendeskProvidersModule.provideSdkSettingsService(retrofit);
    }

    @Override // javax.inject.Provider
    public SdkSettingsService get() {
        return (SdkSettingsService) Preconditions.checkNotNull(ZendeskProvidersModule.provideSdkSettingsService(this.retrofitProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
