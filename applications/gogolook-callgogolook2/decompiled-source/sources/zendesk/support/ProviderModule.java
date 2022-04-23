package zendesk.support;

import java.util.Locale;
import javax.inject.Singleton;
import zendesk.core.AuthenticationProvider;
import zendesk.core.BlipsProvider;
import zendesk.core.RestServiceProvider;
import zendesk.core.SettingsProvider;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule.class */
public class ProviderModule {
    @Singleton
    public HelpCenterProvider provideHelpCenterProvider(SupportSettingsProvider supportSettingsProvider, SupportBlipsProvider supportBlipsProvider, ZendeskHelpCenterService zendeskHelpCenterService, HelpCenterSessionCache helpCenterSessionCache, ZendeskTracker zendeskTracker) {
        return new ZendeskHelpCenterProvider(supportSettingsProvider, supportBlipsProvider, zendeskHelpCenterService, helpCenterSessionCache, zendeskTracker);
    }

    @Singleton
    public ProviderStore provideProviderStore(HelpCenterProvider helpCenterProvider, RequestProvider requestProvider, UploadProvider uploadProvider) {
        return new ZendeskProviderStore(helpCenterProvider, requestProvider, uploadProvider);
    }

    @Singleton
    public RequestProvider provideRequestProvider(SupportSettingsProvider supportSettingsProvider, AuthenticationProvider authenticationProvider, ZendeskRequestService zendeskRequestService, RequestStorage requestStorage, RequestSessionCache requestSessionCache, ZendeskTracker zendeskTracker, SupportSdkMetadata supportSdkMetadata, SupportBlipsProvider supportBlipsProvider) {
        return new ZendeskRequestProvider(supportSettingsProvider, zendeskRequestService, authenticationProvider, requestStorage, requestSessionCache, zendeskTracker, supportSdkMetadata, supportBlipsProvider);
    }

    @Singleton
    public SupportSettingsProvider provideSdkSettingsProvider(SettingsProvider settingsProvider, Locale locale, ZendeskLocaleConverter zendeskLocaleConverter) {
        return new ZendeskSupportSettingsProvider(settingsProvider, zendeskLocaleConverter, locale);
    }

    @Singleton
    public SupportBlipsProvider provideSupportBlipsProvider(BlipsProvider blipsProvider, Locale locale) {
        return new ZendeskSupportBlipsProvider(blipsProvider, locale);
    }

    @Singleton
    public SupportModule provideSupportModule(RequestProvider requestProvider, UploadProvider uploadProvider, HelpCenterProvider helpCenterProvider, SupportSettingsProvider supportSettingsProvider, RestServiceProvider restServiceProvider, SupportBlipsProvider supportBlipsProvider, ZendeskTracker zendeskTracker, ArticleVoteStorage articleVoteStorage) {
        return new SupportModule(requestProvider, uploadProvider, helpCenterProvider, supportSettingsProvider, supportBlipsProvider, restServiceProvider.getMediaOkHttpClient(), zendeskTracker, articleVoteStorage);
    }

    @Singleton
    public UploadProvider provideUploadProvider(ZendeskUploadService zendeskUploadService) {
        return new ZendeskUploadProvider(zendeskUploadService);
    }

    @Singleton
    public ZendeskLocaleConverter provideZendeskLocaleConverter() {
        return new ZendeskLocaleConverter();
    }
}
