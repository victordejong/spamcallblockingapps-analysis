package zendesk.support;

import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import javax.inject.Singleton;
import zendesk.core.RestServiceProvider;
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule.class */
class ServiceModule {
    ServiceModule() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static HelpCenterCachingNetworkConfig provideCustomNetworkConfig(HelpCenterCachingInterceptor helpCenterCachingInterceptor) {
        return new HelpCenterCachingNetworkConfig(helpCenterCachingInterceptor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static HelpCenterCachingInterceptor provideHelpCenterCachingInterceptor() {
        return new HelpCenterCachingInterceptor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static ZendeskHelpCenterService provideZendeskHelpCenterService(HelpCenterService helpCenterService, HelpCenterLocaleConverter helpCenterLocaleConverter) {
        return new ZendeskHelpCenterService(helpCenterService, helpCenterLocaleConverter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static ZendeskRequestService provideZendeskRequestService(RequestService requestService) {
        return new ZendeskRequestService(requestService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static ZendeskUploadService provideZendeskUploadService(UploadService uploadService) {
        return new ZendeskUploadService(uploadService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static HelpCenterService providesHelpCenterService(RestServiceProvider restServiceProvider, HelpCenterCachingNetworkConfig helpCenterCachingNetworkConfig) {
        return (HelpCenterService) restServiceProvider.createRestService(HelpCenterService.class, "2.2.1", Constants.USER_AGENT_VARIANT, helpCenterCachingNetworkConfig);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static RequestService providesRequestService(RestServiceProvider restServiceProvider) {
        return (RequestService) restServiceProvider.createRestService(RequestService.class, "2.2.1", Constants.USER_AGENT_VARIANT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static UploadService providesUploadService(RestServiceProvider restServiceProvider) {
        return (UploadService) restServiceProvider.createRestService(UploadService.class, "2.2.1", Constants.USER_AGENT_VARIANT);
    }
}
