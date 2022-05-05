package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideSupportModuleFactory.class */
public final class ProviderModule_ProvideSupportModuleFactory implements Factory<SupportModule> {
    private final Provider<ArticleVoteStorage> articleVoteStorageProvider;
    private final Provider<SupportBlipsProvider> blipsProvider;
    private final Provider<HelpCenterProvider> helpCenterProvider;
    private final ProviderModule module;
    private final Provider<RequestProvider> requestProvider;
    private final Provider<RestServiceProvider> restServiceProvider;
    private final Provider<SupportSettingsProvider> settingsProvider;
    private final Provider<UploadProvider> uploadProvider;
    private final Provider<ZendeskTracker> zendeskTrackerProvider;

    public ProviderModule_ProvideSupportModuleFactory(ProviderModule providerModule, Provider<RequestProvider> provider, Provider<UploadProvider> provider2, Provider<HelpCenterProvider> provider3, Provider<SupportSettingsProvider> provider4, Provider<RestServiceProvider> provider5, Provider<SupportBlipsProvider> provider6, Provider<ZendeskTracker> provider7, Provider<ArticleVoteStorage> provider8) {
        this.module = providerModule;
        this.requestProvider = provider;
        this.uploadProvider = provider2;
        this.helpCenterProvider = provider3;
        this.settingsProvider = provider4;
        this.restServiceProvider = provider5;
        this.blipsProvider = provider6;
        this.zendeskTrackerProvider = provider7;
        this.articleVoteStorageProvider = provider8;
    }

    public static Factory<SupportModule> create(ProviderModule providerModule, Provider<RequestProvider> provider, Provider<UploadProvider> provider2, Provider<HelpCenterProvider> provider3, Provider<SupportSettingsProvider> provider4, Provider<RestServiceProvider> provider5, Provider<SupportBlipsProvider> provider6, Provider<ZendeskTracker> provider7, Provider<ArticleVoteStorage> provider8) {
        return new ProviderModule_ProvideSupportModuleFactory(providerModule, provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static SupportModule proxyProvideSupportModule(ProviderModule providerModule, RequestProvider requestProvider, UploadProvider uploadProvider, HelpCenterProvider helpCenterProvider, SupportSettingsProvider supportSettingsProvider, RestServiceProvider restServiceProvider, SupportBlipsProvider supportBlipsProvider, Object obj, ArticleVoteStorage articleVoteStorage) {
        return providerModule.provideSupportModule(requestProvider, uploadProvider, helpCenterProvider, supportSettingsProvider, restServiceProvider, supportBlipsProvider, (ZendeskTracker) obj, articleVoteStorage);
    }

    @Override // javax.inject.Provider
    public SupportModule get() {
        return (SupportModule) Preconditions.checkNotNull(this.module.provideSupportModule(this.requestProvider.get(), this.uploadProvider.get(), this.helpCenterProvider.get(), this.settingsProvider.get(), this.restServiceProvider.get(), this.blipsProvider.get(), this.zendeskTrackerProvider.get(), this.articleVoteStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
