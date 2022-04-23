package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.AuthenticationProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideRequestProviderFactory.class */
public final class ProviderModule_ProvideRequestProviderFactory implements Factory<RequestProvider> {
    private final Provider<AuthenticationProvider> authenticationProvider;
    private final Provider<SupportBlipsProvider> blipsProvider;
    private final ProviderModule module;
    private final Provider<ZendeskRequestService> requestServiceProvider;
    private final Provider<RequestSessionCache> requestSessionCacheProvider;
    private final Provider<RequestStorage> requestStorageProvider;
    private final Provider<SupportSettingsProvider> settingsProvider;
    private final Provider<SupportSdkMetadata> supportSdkMetadataProvider;
    private final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideRequestProviderFactory(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<AuthenticationProvider> provider2, Provider<ZendeskRequestService> provider3, Provider<RequestStorage> provider4, Provider<RequestSessionCache> provider5, Provider<ZendeskTracker> provider6, Provider<SupportSdkMetadata> provider7, Provider<SupportBlipsProvider> provider8) {
        this.module = providerModule;
        this.settingsProvider = provider;
        this.authenticationProvider = provider2;
        this.requestServiceProvider = provider3;
        this.requestStorageProvider = provider4;
        this.requestSessionCacheProvider = provider5;
        this.zendeskTrackerProvider = provider6;
        this.supportSdkMetadataProvider = provider7;
        this.blipsProvider = provider8;
    }

    public static Factory<RequestProvider> create(ProviderModule providerModule, Provider<SupportSettingsProvider> provider, Provider<AuthenticationProvider> provider2, Provider<ZendeskRequestService> provider3, Provider<RequestStorage> provider4, Provider<RequestSessionCache> provider5, Provider<ZendeskTracker> provider6, Provider<SupportSdkMetadata> provider7, Provider<SupportBlipsProvider> provider8) {
        return new ProviderModule_ProvideRequestProviderFactory(providerModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static RequestProvider proxyProvideRequestProvider(ProviderModule providerModule, SupportSettingsProvider supportSettingsProvider, AuthenticationProvider authenticationProvider, Object obj, Object obj2, Object obj3, Object obj4, Object obj5, SupportBlipsProvider supportBlipsProvider) {
        return providerModule.provideRequestProvider(supportSettingsProvider, authenticationProvider, (ZendeskRequestService) obj, (RequestStorage) obj2, (RequestSessionCache) obj3, (ZendeskTracker) obj4, (SupportSdkMetadata) obj5, supportBlipsProvider);
    }

    @Override // javax.inject.Provider
    public RequestProvider get() {
        return (RequestProvider) Preconditions.checkNotNull(this.module.provideRequestProvider(this.settingsProvider.get(), this.authenticationProvider.get(), this.requestServiceProvider.get(), this.requestStorageProvider.get(), this.requestSessionCacheProvider.get(), this.zendeskTrackerProvider.get(), this.supportSdkMetadataProvider.get(), this.blipsProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
