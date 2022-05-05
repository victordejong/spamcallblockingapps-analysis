package zendesk.support.guide;

import dagger.MembersInjector;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import zendesk.core.ApplicationConfiguration;
import zendesk.core.NetworkInfoProvider;
import zendesk.support.ArticleVoteStorage;
import zendesk.support.HelpCenterProvider;
import zendesk.support.SupportSettingsProvider;
import zendesk.support.ZendeskDeepLinkHelper;
/* loaded from: classes3-dex2jar.jar:zendesk/support/guide/ViewArticleActivity_MembersInjector.class */
public final class ViewArticleActivity_MembersInjector implements MembersInjector<ViewArticleActivity> {
    private final Provider<ApplicationConfiguration> applicationConfigurationProvider;
    private final Provider<ArticleVoteStorage> articleVoteStorageProvider;
    private final Provider<ZendeskDeepLinkHelper> deepLinkHelperProvider;
    private final Provider<HelpCenterProvider> helpCenterProvider;
    private final Provider<NetworkInfoProvider> networkInfoProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;
    private final Provider<SupportSettingsProvider> supportSettingsProvider;

    public ViewArticleActivity_MembersInjector(Provider<OkHttpClient> provider, Provider<ApplicationConfiguration> provider2, Provider<HelpCenterProvider> provider3, Provider<ArticleVoteStorage> provider4, Provider<ZendeskDeepLinkHelper> provider5, Provider<NetworkInfoProvider> provider6, Provider<SupportSettingsProvider> provider7) {
        this.okHttpClientProvider = provider;
        this.applicationConfigurationProvider = provider2;
        this.helpCenterProvider = provider3;
        this.articleVoteStorageProvider = provider4;
        this.deepLinkHelperProvider = provider5;
        this.networkInfoProvider = provider6;
        this.supportSettingsProvider = provider7;
    }

    public static MembersInjector<ViewArticleActivity> create(Provider<OkHttpClient> provider, Provider<ApplicationConfiguration> provider2, Provider<HelpCenterProvider> provider3, Provider<ArticleVoteStorage> provider4, Provider<ZendeskDeepLinkHelper> provider5, Provider<NetworkInfoProvider> provider6, Provider<SupportSettingsProvider> provider7) {
        return new ViewArticleActivity_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static void injectApplicationConfiguration(ViewArticleActivity viewArticleActivity, ApplicationConfiguration applicationConfiguration) {
        viewArticleActivity.applicationConfiguration = applicationConfiguration;
    }

    public static void injectArticleVoteStorage(ViewArticleActivity viewArticleActivity, ArticleVoteStorage articleVoteStorage) {
        viewArticleActivity.articleVoteStorage = articleVoteStorage;
    }

    public static void injectDeepLinkHelper(ViewArticleActivity viewArticleActivity, ZendeskDeepLinkHelper zendeskDeepLinkHelper) {
        viewArticleActivity.deepLinkHelper = zendeskDeepLinkHelper;
    }

    public static void injectHelpCenterProvider(ViewArticleActivity viewArticleActivity, HelpCenterProvider helpCenterProvider) {
        viewArticleActivity.helpCenterProvider = helpCenterProvider;
    }

    public static void injectNetworkInfoProvider(ViewArticleActivity viewArticleActivity, NetworkInfoProvider networkInfoProvider) {
        viewArticleActivity.networkInfoProvider = networkInfoProvider;
    }

    public static void injectOkHttpClient(ViewArticleActivity viewArticleActivity, OkHttpClient okHttpClient) {
        viewArticleActivity.okHttpClient = okHttpClient;
    }

    public static void injectSupportSettingsProvider(ViewArticleActivity viewArticleActivity, SupportSettingsProvider supportSettingsProvider) {
        viewArticleActivity.supportSettingsProvider = supportSettingsProvider;
    }

    public void injectMembers(ViewArticleActivity viewArticleActivity) {
        injectOkHttpClient(viewArticleActivity, this.okHttpClientProvider.get());
        injectApplicationConfiguration(viewArticleActivity, this.applicationConfigurationProvider.get());
        injectHelpCenterProvider(viewArticleActivity, this.helpCenterProvider.get());
        injectArticleVoteStorage(viewArticleActivity, this.articleVoteStorageProvider.get());
        injectDeepLinkHelper(viewArticleActivity, this.deepLinkHelperProvider.get());
        injectNetworkInfoProvider(viewArticleActivity, this.networkInfoProvider.get());
        injectSupportSettingsProvider(viewArticleActivity, this.supportSettingsProvider.get());
    }
}
