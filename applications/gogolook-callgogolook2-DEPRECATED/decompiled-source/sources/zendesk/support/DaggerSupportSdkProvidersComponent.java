package zendesk.support;

import android.content.Context;
import java.util.Locale;
import javax.inject.Provider;
import p456i.p457c.C10865a;
import p456i.p457c.C10867c;
import p456i.p457c.C10868d;
import zendesk.core.AuthenticationProvider;
import zendesk.core.BlipsProvider;
import zendesk.core.CoreModule;
import zendesk.core.CoreModule_ActionHandlerRegistryFactory;
import zendesk.core.CoreModule_GetApplicationContextFactory;
import zendesk.core.CoreModule_GetAuthenticationProviderFactory;
import zendesk.core.CoreModule_GetBlipsProviderFactory;
import zendesk.core.CoreModule_GetMemoryCacheFactory;
import zendesk.core.CoreModule_GetRestServiceProviderFactory;
import zendesk.core.CoreModule_GetSessionStorageFactory;
import zendesk.core.CoreModule_GetSettingsProviderFactory;
import zendesk.core.MemoryCache;
import zendesk.core.RestServiceProvider;
import zendesk.core.SessionStorage;
import zendesk.core.SettingsProvider;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkProvidersComponent.class */
public final class DaggerSupportSdkProvidersComponent implements SupportSdkProvidersComponent {
    public final CoreModule coreModule;
    public Provider<Context> getApplicationContextProvider;
    public Provider<AuthenticationProvider> getAuthenticationProvider;
    public Provider<BlipsProvider> getBlipsProvider;
    public Provider<MemoryCache> getMemoryCacheProvider;
    public Provider<RestServiceProvider> getRestServiceProvider;
    public Provider<SessionStorage> getSessionStorageProvider;
    public Provider<SettingsProvider> getSettingsProvider;
    public Provider<ArticleVoteStorage> provideArticleVoteStorageProvider;
    public Provider<HelpCenterCachingNetworkConfig> provideCustomNetworkConfigProvider;
    public Provider<HelpCenterCachingInterceptor> provideHelpCenterCachingInterceptorProvider;
    public Provider<HelpCenterProvider> provideHelpCenterProvider;
    public Provider<HelpCenterSessionCache> provideHelpCenterSessionCacheProvider;
    public Provider<Locale> provideLocaleProvider;
    public Provider<SupportSdkMetadata> provideMetadataProvider;
    public Provider<ProviderStore> provideProviderStoreProvider;
    public Provider<RequestMigrator> provideRequestMigratorProvider;
    public Provider<RequestProvider> provideRequestProvider;
    public Provider<RequestSessionCache> provideRequestSessionCacheProvider;
    public Provider<RequestStorage> provideRequestStorageProvider;
    public Provider<SupportSettingsProvider> provideSdkSettingsProvider;
    public Provider<SupportBlipsProvider> provideSupportBlipsProvider;
    public Provider<SupportModule> provideSupportModuleProvider;
    public Provider<UploadProvider> provideUploadProvider;
    public Provider<ZendeskHelpCenterService> provideZendeskHelpCenterServiceProvider;
    public Provider<ZendeskLocaleConverter> provideZendeskLocaleConverterProvider;
    public Provider<ZendeskRequestService> provideZendeskRequestServiceProvider;
    public Provider<ZendeskUploadService> provideZendeskUploadServiceProvider;
    public Provider<HelpCenterService> providesHelpCenterServiceProvider;
    public Provider<RequestService> providesRequestServiceProvider;
    public Provider<UploadService> providesUploadServiceProvider;
    public Provider<ZendeskTracker> providesZendeskTrackerProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkProvidersComponent$Builder.class */
    public static final class Builder {
        public CoreModule coreModule;
        public ProviderModule providerModule;
        public StorageModule storageModule;
        public SupportApplicationModule supportApplicationModule;

        public Builder() {
        }

        public SupportSdkProvidersComponent build() {
            C10867c.m10384a(this.supportApplicationModule, SupportApplicationModule.class);
            C10867c.m10384a(this.coreModule, CoreModule.class);
            if (this.providerModule == null) {
                this.providerModule = new ProviderModule();
            }
            if (this.storageModule == null) {
                this.storageModule = new StorageModule();
            }
            return new DaggerSupportSdkProvidersComponent(this.supportApplicationModule, this.coreModule, this.providerModule, this.storageModule);
        }

        public Builder coreModule(CoreModule coreModule) {
            C10867c.m10385a(coreModule);
            this.coreModule = coreModule;
            return this;
        }

        public Builder providerModule(ProviderModule providerModule) {
            C10867c.m10385a(providerModule);
            this.providerModule = providerModule;
            return this;
        }

        public Builder storageModule(StorageModule storageModule) {
            C10867c.m10385a(storageModule);
            this.storageModule = storageModule;
            return this;
        }

        public Builder supportApplicationModule(SupportApplicationModule supportApplicationModule) {
            C10867c.m10385a(supportApplicationModule);
            this.supportApplicationModule = supportApplicationModule;
            return this;
        }
    }

    public DaggerSupportSdkProvidersComponent(SupportApplicationModule supportApplicationModule, CoreModule coreModule, ProviderModule providerModule, StorageModule storageModule) {
        this.coreModule = coreModule;
        initialize(supportApplicationModule, coreModule, providerModule, storageModule);
    }

    public static Builder builder() {
        return new Builder();
    }

    public final void initialize(SupportApplicationModule supportApplicationModule, CoreModule coreModule, ProviderModule providerModule, StorageModule storageModule) {
        this.getSettingsProvider = CoreModule_GetSettingsProviderFactory.create(coreModule);
        this.provideLocaleProvider = C10865a.m10386a(SupportApplicationModule_ProvideLocaleFactory.create(supportApplicationModule));
        this.provideZendeskLocaleConverterProvider = C10865a.m10386a(ProviderModule_ProvideZendeskLocaleConverterFactory.create(providerModule));
        this.provideSdkSettingsProvider = C10865a.m10386a(ProviderModule_ProvideSdkSettingsProviderFactory.create(providerModule, this.getSettingsProvider, this.provideLocaleProvider, this.provideZendeskLocaleConverterProvider));
        this.getBlipsProvider = CoreModule_GetBlipsProviderFactory.create(coreModule);
        this.provideSupportBlipsProvider = C10865a.m10386a(ProviderModule_ProvideSupportBlipsProviderFactory.create(providerModule, this.getBlipsProvider, this.provideLocaleProvider));
        this.getRestServiceProvider = CoreModule_GetRestServiceProviderFactory.create(coreModule);
        this.provideHelpCenterCachingInterceptorProvider = C10868d.m10382a(ServiceModule_ProvideHelpCenterCachingInterceptorFactory.create());
        this.provideCustomNetworkConfigProvider = C10868d.m10382a(ServiceModule_ProvideCustomNetworkConfigFactory.create(this.provideHelpCenterCachingInterceptorProvider));
        this.providesHelpCenterServiceProvider = C10865a.m10386a(ServiceModule_ProvidesHelpCenterServiceFactory.create(this.getRestServiceProvider, this.provideCustomNetworkConfigProvider));
        this.provideZendeskHelpCenterServiceProvider = C10865a.m10386a(ServiceModule_ProvideZendeskHelpCenterServiceFactory.create(this.providesHelpCenterServiceProvider, this.provideZendeskLocaleConverterProvider));
        this.provideHelpCenterSessionCacheProvider = C10865a.m10386a(StorageModule_ProvideHelpCenterSessionCacheFactory.create(storageModule));
        this.providesZendeskTrackerProvider = C10865a.m10386a(SupportApplicationModule_ProvidesZendeskTrackerFactory.create(supportApplicationModule));
        this.provideHelpCenterProvider = C10865a.m10386a(ProviderModule_ProvideHelpCenterProviderFactory.create(providerModule, this.provideSdkSettingsProvider, this.provideSupportBlipsProvider, this.provideZendeskHelpCenterServiceProvider, this.provideHelpCenterSessionCacheProvider, this.providesZendeskTrackerProvider));
        this.getAuthenticationProvider = CoreModule_GetAuthenticationProviderFactory.create(coreModule);
        this.providesRequestServiceProvider = C10865a.m10386a(ServiceModule_ProvidesRequestServiceFactory.create(this.getRestServiceProvider));
        this.provideZendeskRequestServiceProvider = C10865a.m10386a(ServiceModule_ProvideZendeskRequestServiceFactory.create(this.providesRequestServiceProvider));
        this.getSessionStorageProvider = CoreModule_GetSessionStorageFactory.create(coreModule);
        this.getApplicationContextProvider = CoreModule_GetApplicationContextFactory.create(coreModule);
        this.provideRequestMigratorProvider = C10865a.m10386a(StorageModule_ProvideRequestMigratorFactory.create(storageModule, this.getApplicationContextProvider));
        this.getMemoryCacheProvider = CoreModule_GetMemoryCacheFactory.create(coreModule);
        this.provideRequestStorageProvider = C10865a.m10386a(StorageModule_ProvideRequestStorageFactory.create(storageModule, this.getSessionStorageProvider, this.provideRequestMigratorProvider, this.getMemoryCacheProvider));
        this.provideRequestSessionCacheProvider = C10865a.m10386a(StorageModule_ProvideRequestSessionCacheFactory.create(storageModule));
        this.provideMetadataProvider = C10865a.m10386a(SupportApplicationModule_ProvideMetadataFactory.create(supportApplicationModule, this.getApplicationContextProvider));
        this.provideRequestProvider = C10865a.m10386a(ProviderModule_ProvideRequestProviderFactory.create(providerModule, this.provideSdkSettingsProvider, this.getAuthenticationProvider, this.provideZendeskRequestServiceProvider, this.provideRequestStorageProvider, this.provideRequestSessionCacheProvider, this.providesZendeskTrackerProvider, this.provideMetadataProvider, this.provideSupportBlipsProvider));
        this.providesUploadServiceProvider = C10865a.m10386a(ServiceModule_ProvidesUploadServiceFactory.create(this.getRestServiceProvider));
        this.provideZendeskUploadServiceProvider = C10865a.m10386a(ServiceModule_ProvideZendeskUploadServiceFactory.create(this.providesUploadServiceProvider));
        this.provideUploadProvider = C10865a.m10386a(ProviderModule_ProvideUploadProviderFactory.create(providerModule, this.provideZendeskUploadServiceProvider));
        this.provideProviderStoreProvider = C10865a.m10386a(ProviderModule_ProvideProviderStoreFactory.create(providerModule, this.provideHelpCenterProvider, this.provideRequestProvider, this.provideUploadProvider));
        this.provideArticleVoteStorageProvider = C10865a.m10386a(StorageModule_ProvideArticleVoteStorageFactory.create(storageModule, this.getSessionStorageProvider));
        this.provideSupportModuleProvider = C10865a.m10386a(ProviderModule_ProvideSupportModuleFactory.create(providerModule, this.provideRequestProvider, this.provideUploadProvider, this.provideHelpCenterProvider, this.provideSdkSettingsProvider, this.getRestServiceProvider, this.provideSupportBlipsProvider, this.providesZendeskTrackerProvider, this.provideArticleVoteStorageProvider));
    }

    @Override // zendesk.support.SupportSdkProvidersComponent
    public Support inject(Support support) {
        injectSupport(support);
        return support;
    }

    public final Support injectSupport(Support support) {
        Support_MembersInjector.injectProviderStore(support, this.provideProviderStoreProvider.get());
        Support_MembersInjector.injectSupportModule(support, this.provideSupportModuleProvider.get());
        Support_MembersInjector.injectRequestMigrator(support, this.provideRequestMigratorProvider.get());
        Support_MembersInjector.injectBlipsProvider(support, this.provideSupportBlipsProvider.get());
        Support_MembersInjector.injectActionHandlerRegistry(support, CoreModule_ActionHandlerRegistryFactory.actionHandlerRegistry(this.coreModule));
        Support_MembersInjector.injectRequestProvider(support, this.provideRequestProvider.get());
        Support_MembersInjector.injectAuthenticationProvider(support, CoreModule_GetAuthenticationProviderFactory.getAuthenticationProvider(this.coreModule));
        return support;
    }
}
