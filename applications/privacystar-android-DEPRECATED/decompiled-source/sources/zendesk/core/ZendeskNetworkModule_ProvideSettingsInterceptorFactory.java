package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideSettingsInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideSettingsInterceptorFactory implements Factory<ZendeskSettingsInterceptor> {
    private final Provider<SdkSettingsProviderInternal> sdkSettingsProvider;
    private final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskNetworkModule_ProvideSettingsInterceptorFactory(Provider<SdkSettingsProviderInternal> provider, Provider<SettingsStorage> provider2) {
        this.sdkSettingsProvider = provider;
        this.settingsStorageProvider = provider2;
    }

    public static Factory<ZendeskSettingsInterceptor> create(Provider<SdkSettingsProviderInternal> provider, Provider<SettingsStorage> provider2) {
        return new ZendeskNetworkModule_ProvideSettingsInterceptorFactory(provider, provider2);
    }

    public static ZendeskSettingsInterceptor proxyProvideSettingsInterceptor(Object obj, Object obj2) {
        return ZendeskNetworkModule.provideSettingsInterceptor((SdkSettingsProviderInternal) obj, (SettingsStorage) obj2);
    }

    @Override // javax.inject.Provider
    public ZendeskSettingsInterceptor get() {
        return (ZendeskSettingsInterceptor) Preconditions.checkNotNull(ZendeskNetworkModule.provideSettingsInterceptor(this.sdkSettingsProvider.get(), this.settingsStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
