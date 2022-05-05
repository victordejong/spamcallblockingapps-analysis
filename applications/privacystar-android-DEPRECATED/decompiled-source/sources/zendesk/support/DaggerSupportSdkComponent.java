package zendesk.support;

import android.content.Context;
import com.google.gson.Gson;
import com.jakewharton.disklrucache.DiskLruCache;
import com.squareup.picasso.Picasso;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.SingleCheck;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
import zendesk.belvedere.Belvedere;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.ApplicationConfiguration;
import zendesk.core.AuthenticationProvider;
import zendesk.core.CoreModule;
import zendesk.core.CoreModule_ActionHandlerRegistryFactory;
import zendesk.core.CoreModule_GetApplicationConfigurationFactory;
import zendesk.core.CoreModule_GetApplicationContextFactory;
import zendesk.core.CoreModule_GetAuthenticationProviderFactory;
import zendesk.core.CoreModule_GetExecutorServiceFactory;
import zendesk.core.CoreModule_GetMemoryCacheFactory;
import zendesk.core.CoreModule_GetNetworkInfoProviderFactory;
import zendesk.core.CoreModule_GetSessionStorageFactory;
import zendesk.core.MemoryCache;
import zendesk.core.NetworkInfoProvider;
import zendesk.core.SessionStorage;
import zendesk.suas.Dispatcher;
import zendesk.suas.Reducer;
import zendesk.suas.Store;
import zendesk.support.ZendeskDeepLinkParser;
import zendesk.support.guide.HelpCenterActivity;
import zendesk.support.guide.HelpCenterActivity_MembersInjector;
import zendesk.support.guide.HelpCenterFragment;
import zendesk.support.guide.HelpCenterFragment_MembersInjector;
import zendesk.support.guide.ViewArticleActivity;
import zendesk.support.guide.ViewArticleActivity_MembersInjector;
import zendesk.support.request.RequestActivity;
import zendesk.support.request.RequestActivity_MembersInjector;
import zendesk.support.request.RequestComponent;
import zendesk.support.request.RequestModule;
import zendesk.support.request.RequestModule_ProvidesActionFactoryFactory;
import zendesk.support.request.RequestModule_ProvidesAsyncMiddlewareFactory;
import zendesk.support.request.RequestModule_ProvidesAttachmentDownloaderComponentFactory;
import zendesk.support.request.RequestModule_ProvidesAttachmentDownloaderFactory;
import zendesk.support.request.RequestModule_ProvidesAttachmentToDiskServiceFactory;
import zendesk.support.request.RequestModule_ProvidesBelvedereFactory;
import zendesk.support.request.RequestModule_ProvidesConversationsUpdatesComponentFactory;
import zendesk.support.request.RequestModule_ProvidesDiskQueueFactory;
import zendesk.support.request.RequestModule_ProvidesDispatcherFactory;
import zendesk.support.request.RequestModule_ProvidesHeadlessComponentListenerFactory;
import zendesk.support.request.RequestModule_ProvidesMessageFactoryFactory;
import zendesk.support.request.RequestModule_ProvidesPersistenceComponentFactory;
import zendesk.support.request.RequestModule_ProvidesReducerFactory;
import zendesk.support.request.RequestModule_ProvidesStoreFactory;
import zendesk.support.request.RequestViewConversationsDisabled;
import zendesk.support.request.RequestViewConversationsDisabled_MembersInjector;
import zendesk.support.request.RequestViewConversationsEnabled;
import zendesk.support.request.RequestViewConversationsEnabled_MembersInjector;
import zendesk.support.requestlist.RequestInfoDataSource;
import zendesk.support.requestlist.RequestListActivity;
import zendesk.support.requestlist.RequestListActivity_MembersInjector;
import zendesk.support.requestlist.RequestListComponent;
import zendesk.support.requestlist.RequestListModule;
import zendesk.support.requestlist.RequestListModule_ModelFactory;
import zendesk.support.requestlist.RequestListModule_PresenterFactory;
import zendesk.support.requestlist.RequestListModule_RefreshHandlerFactory;
import zendesk.support.requestlist.RequestListModule_RepositoryFactory;
import zendesk.support.requestlist.RequestListModule_ViewFactory;
/* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkComponent.class */
public final class DaggerSupportSdkComponent implements SupportSdkComponent {
    private Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private CoreModule coreModule;
    private Provider<ApplicationConfiguration> getApplicationConfigurationProvider;
    private Provider<Context> getApplicationContextProvider;
    private Provider<AuthenticationProvider> getAuthenticationProvider;
    private Provider<ExecutorService> getExecutorServiceProvider;
    private Provider<MemoryCache> getMemoryCacheProvider;
    private Provider<SessionStorage> getSessionStorageProvider;
    private Provider<Executor> mainThreadExecutorProvider;
    private Provider<List<ActionHandler>> providesActionHandlersProvider;
    private Provider<SupportBlipsProvider> providesBlipsProvider;
    private Provider<ZendeskDeepLinkHelper> providesDeepLinkHelperProvider;
    private Provider<ZendeskDeepLinkParser> providesDeepLinkParserProvider;
    private Provider<OkHttpClient> providesOkHttpClientProvider;
    private Provider<List<ZendeskDeepLinkParser.Module>> providesParserModuleProvider;
    private Provider<Picasso> providesPicassoProvider;
    private Provider<Gson> providesProvider;
    private Provider<DiskLruCache> providesRequestDiskLruCacheProvider;
    private Provider<RequestProvider> providesRequestProvider;
    private Provider<SupportSettingsProvider> providesSettingsProvider;
    private Provider<UploadProvider> providesUploadProvider;
    private Provider<String> providesZendeskUrlProvider;
    private Provider<RequestInfoDataSource.LocalDataSource> requestInfoDataSourceProvider;
    private SupportModule supportModule;
    private Provider<SupportUiStorage> supportUIStorageProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkComponent$Builder.class */
    public static final class Builder {
        private CoreModule coreModule;
        private SupportModule supportModule;
        private SupportSdkModule supportSdkModule;

        private Builder() {
        }

        public SupportSdkComponent build() {
            if (this.supportModule == null) {
                throw new IllegalStateException(SupportModule.class.getCanonicalName() + " must be set");
            } else if (this.coreModule == null) {
                throw new IllegalStateException(CoreModule.class.getCanonicalName() + " must be set");
            } else {
                if (this.supportSdkModule == null) {
                    this.supportSdkModule = new SupportSdkModule();
                }
                return new DaggerSupportSdkComponent(this);
            }
        }

        public Builder coreModule(CoreModule coreModule) {
            this.coreModule = (CoreModule) Preconditions.checkNotNull(coreModule);
            return this;
        }

        public Builder supportModule(SupportModule supportModule) {
            this.supportModule = (SupportModule) Preconditions.checkNotNull(supportModule);
            return this;
        }

        public Builder supportSdkModule(SupportSdkModule supportSdkModule) {
            this.supportSdkModule = (SupportSdkModule) Preconditions.checkNotNull(supportSdkModule);
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkComponent$RequestComponentImpl.class */
    private final class RequestComponentImpl implements RequestComponent {
        private Provider providesActionFactoryProvider;
        private Provider providesAsyncMiddlewareProvider;
        private Provider providesAttachmentDownloaderComponentProvider;
        private Provider providesAttachmentDownloaderProvider;
        private Provider providesAttachmentToDiskServiceProvider;
        private Provider<Belvedere> providesBelvedereProvider;
        private Provider providesConversationsUpdatesComponentProvider;
        private Provider providesDiskQueueProvider;
        private Provider<Dispatcher> providesDispatcherProvider;
        private Provider providesHeadlessComponentListenerProvider;
        private Provider providesMessageFactoryProvider;
        private Provider providesPersistenceComponentProvider;
        private Provider<List<Reducer>> providesReducerProvider;
        private Provider<Store> providesStoreProvider;
        private final RequestModule requestModule;

        private RequestComponentImpl(RequestModule requestModule) {
            this.requestModule = (RequestModule) Preconditions.checkNotNull(requestModule);
            initialize();
        }

        private void initialize() {
            this.providesReducerProvider = DoubleCheck.provider(RequestModule_ProvidesReducerFactory.create());
            this.providesAsyncMiddlewareProvider = DoubleCheck.provider(RequestModule_ProvidesAsyncMiddlewareFactory.create());
            this.providesStoreProvider = DoubleCheck.provider(RequestModule_ProvidesStoreFactory.create(this.providesReducerProvider, this.providesAsyncMiddlewareProvider));
            this.providesBelvedereProvider = DoubleCheck.provider(RequestModule_ProvidesBelvedereFactory.create(DaggerSupportSdkComponent.this.getApplicationContextProvider));
            this.providesActionFactoryProvider = DoubleCheck.provider(RequestModule_ProvidesActionFactoryFactory.create(DaggerSupportSdkComponent.this.providesRequestProvider, DaggerSupportSdkComponent.this.providesSettingsProvider, DaggerSupportSdkComponent.this.providesUploadProvider, this.providesBelvedereProvider, DaggerSupportSdkComponent.this.supportUIStorageProvider, DaggerSupportSdkComponent.this.getExecutorServiceProvider, DaggerSupportSdkComponent.this.mainThreadExecutorProvider, DaggerSupportSdkComponent.this.getAuthenticationProvider, DaggerSupportSdkComponent.this.providesBlipsProvider));
            this.providesDiskQueueProvider = DoubleCheck.provider(RequestModule_ProvidesDiskQueueFactory.create(DaggerSupportSdkComponent.this.getExecutorServiceProvider));
            this.providesPersistenceComponentProvider = DoubleCheck.provider(RequestModule_ProvidesPersistenceComponentFactory.create(DaggerSupportSdkComponent.this.supportUIStorageProvider, this.providesDiskQueueProvider, DaggerSupportSdkComponent.this.getExecutorServiceProvider));
            this.providesDispatcherProvider = DoubleCheck.provider(RequestModule_ProvidesDispatcherFactory.create(this.providesStoreProvider));
            this.providesAttachmentToDiskServiceProvider = DoubleCheck.provider(RequestModule_ProvidesAttachmentToDiskServiceFactory.create(DaggerSupportSdkComponent.this.providesOkHttpClientProvider, DaggerSupportSdkComponent.this.getExecutorServiceProvider));
            this.providesAttachmentDownloaderProvider = DoubleCheck.provider(RequestModule_ProvidesAttachmentDownloaderFactory.create(this.providesBelvedereProvider, this.providesAttachmentToDiskServiceProvider));
            this.providesAttachmentDownloaderComponentProvider = DoubleCheck.provider(RequestModule_ProvidesAttachmentDownloaderComponentFactory.create(this.providesDispatcherProvider, this.providesActionFactoryProvider, this.providesAttachmentDownloaderProvider));
            this.providesConversationsUpdatesComponentProvider = SingleCheck.provider(RequestModule_ProvidesConversationsUpdatesComponentFactory.create(DaggerSupportSdkComponent.this.getApplicationContextProvider, DaggerSupportSdkComponent.this.actionHandlerRegistryProvider, DaggerSupportSdkComponent.this.requestInfoDataSourceProvider));
            this.providesHeadlessComponentListenerProvider = DoubleCheck.provider(RequestModule_ProvidesHeadlessComponentListenerFactory.create(this.providesPersistenceComponentProvider, this.providesAttachmentDownloaderComponentProvider, this.providesConversationsUpdatesComponentProvider));
            this.providesMessageFactoryProvider = DoubleCheck.provider(RequestModule_ProvidesMessageFactoryFactory.create(this.requestModule, DaggerSupportSdkComponent.this.getApplicationContextProvider, DaggerSupportSdkComponent.this.providesPicassoProvider, this.providesActionFactoryProvider, this.providesDispatcherProvider, DaggerSupportSdkComponent.this.providesDeepLinkHelperProvider));
        }

        private RequestActivity injectRequestActivity(RequestActivity requestActivity) {
            RequestActivity_MembersInjector.injectStore(requestActivity, this.providesStoreProvider.get());
            RequestActivity_MembersInjector.injectAf(requestActivity, this.providesActionFactoryProvider.get());
            RequestActivity_MembersInjector.injectHeadlessComponentListener(requestActivity, this.providesHeadlessComponentListenerProvider.get());
            RequestActivity_MembersInjector.injectPicasso(requestActivity, (Picasso) DaggerSupportSdkComponent.this.providesPicassoProvider.get());
            RequestActivity_MembersInjector.injectActionHandlerRegistry(requestActivity, (ActionHandlerRegistry) Preconditions.checkNotNull(CoreModule_ActionHandlerRegistryFactory.proxyActionHandlerRegistry(DaggerSupportSdkComponent.this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
            return requestActivity;
        }

        private RequestViewConversationsDisabled injectRequestViewConversationsDisabled(RequestViewConversationsDisabled requestViewConversationsDisabled) {
            RequestViewConversationsDisabled_MembersInjector.injectStore(requestViewConversationsDisabled, this.providesStoreProvider.get());
            RequestViewConversationsDisabled_MembersInjector.injectAf(requestViewConversationsDisabled, this.providesActionFactoryProvider.get());
            RequestViewConversationsDisabled_MembersInjector.injectPicasso(requestViewConversationsDisabled, (Picasso) DaggerSupportSdkComponent.this.providesPicassoProvider.get());
            return requestViewConversationsDisabled;
        }

        private RequestViewConversationsEnabled injectRequestViewConversationsEnabled(RequestViewConversationsEnabled requestViewConversationsEnabled) {
            RequestViewConversationsEnabled_MembersInjector.injectStore(requestViewConversationsEnabled, this.providesStoreProvider.get());
            RequestViewConversationsEnabled_MembersInjector.injectAf(requestViewConversationsEnabled, this.providesActionFactoryProvider.get());
            RequestViewConversationsEnabled_MembersInjector.injectCellFactory(requestViewConversationsEnabled, this.providesMessageFactoryProvider.get());
            RequestViewConversationsEnabled_MembersInjector.injectPicasso(requestViewConversationsEnabled, (Picasso) DaggerSupportSdkComponent.this.providesPicassoProvider.get());
            return requestViewConversationsEnabled;
        }

        @Override // zendesk.support.request.RequestComponent
        public void inject(RequestActivity requestActivity) {
            injectRequestActivity(requestActivity);
        }

        @Override // zendesk.support.request.RequestComponent
        public void inject(RequestViewConversationsDisabled requestViewConversationsDisabled) {
            injectRequestViewConversationsDisabled(requestViewConversationsDisabled);
        }

        @Override // zendesk.support.request.RequestComponent
        public void inject(RequestViewConversationsEnabled requestViewConversationsEnabled) {
            injectRequestViewConversationsEnabled(requestViewConversationsEnabled);
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/DaggerSupportSdkComponent$RequestListComponentImpl.class */
    private final class RequestListComponentImpl implements RequestListComponent {
        private Provider modelProvider;
        private Provider presenterProvider;
        private Provider refreshHandlerProvider;
        private Provider<RequestInfoDataSource.Repository> repositoryProvider;
        private final RequestListModule requestListModule;
        private Provider viewProvider;

        private RequestListComponentImpl(RequestListModule requestListModule) {
            this.requestListModule = (RequestListModule) Preconditions.checkNotNull(requestListModule);
            initialize();
        }

        private void initialize() {
            this.viewProvider = DoubleCheck.provider(RequestListModule_ViewFactory.create(this.requestListModule, DaggerSupportSdkComponent.this.providesPicassoProvider));
            this.repositoryProvider = DoubleCheck.provider(RequestListModule_RepositoryFactory.create(DaggerSupportSdkComponent.this.requestInfoDataSourceProvider, DaggerSupportSdkComponent.this.supportUIStorageProvider, DaggerSupportSdkComponent.this.providesRequestProvider, DaggerSupportSdkComponent.this.mainThreadExecutorProvider, DaggerSupportSdkComponent.this.getExecutorServiceProvider));
            this.modelProvider = DoubleCheck.provider(RequestListModule_ModelFactory.create(this.repositoryProvider, DaggerSupportSdkComponent.this.getMemoryCacheProvider, DaggerSupportSdkComponent.this.providesBlipsProvider, DaggerSupportSdkComponent.this.providesSettingsProvider));
            this.presenterProvider = DoubleCheck.provider(RequestListModule_PresenterFactory.create(this.viewProvider, this.modelProvider));
            this.refreshHandlerProvider = DoubleCheck.provider(RequestListModule_RefreshHandlerFactory.create(this.presenterProvider));
        }

        private RequestListActivity injectRequestListActivity(RequestListActivity requestListActivity) {
            RequestListActivity_MembersInjector.injectPresenter(requestListActivity, this.presenterProvider.get());
            RequestListActivity_MembersInjector.injectView(requestListActivity, this.viewProvider.get());
            RequestListActivity_MembersInjector.injectModel(requestListActivity, this.modelProvider.get());
            RequestListActivity_MembersInjector.injectActionHandlerRegistry(requestListActivity, (ActionHandlerRegistry) Preconditions.checkNotNull(CoreModule_ActionHandlerRegistryFactory.proxyActionHandlerRegistry(DaggerSupportSdkComponent.this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
            RequestListActivity_MembersInjector.injectSyncHandler(requestListActivity, this.refreshHandlerProvider.get());
            return requestListActivity;
        }

        @Override // zendesk.support.requestlist.RequestListComponent
        public void inject(RequestListActivity requestListActivity) {
            injectRequestListActivity(requestListActivity);
        }
    }

    private DaggerSupportSdkComponent(Builder builder) {
        initialize(builder);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.supportModule = builder.supportModule;
        this.coreModule = builder.coreModule;
        this.actionHandlerRegistryProvider = CoreModule_ActionHandlerRegistryFactory.create(builder.coreModule);
        this.getApplicationConfigurationProvider = CoreModule_GetApplicationConfigurationFactory.create(builder.coreModule);
        this.providesZendeskUrlProvider = DoubleCheck.provider(SupportSdkModule_ProvidesZendeskUrlFactory.create(builder.supportSdkModule, this.getApplicationConfigurationProvider));
        this.providesParserModuleProvider = DoubleCheck.provider(SupportSdkModule_ProvidesParserModuleFactory.create(builder.supportSdkModule));
        this.providesDeepLinkParserProvider = DoubleCheck.provider(SupportSdkModule_ProvidesDeepLinkParserFactory.create(builder.supportSdkModule, this.providesZendeskUrlProvider, this.providesParserModuleProvider));
        this.providesDeepLinkHelperProvider = DoubleCheck.provider(SupportSdkModule_ProvidesDeepLinkHelperFactory.create(builder.supportSdkModule, this.actionHandlerRegistryProvider, this.providesDeepLinkParserProvider));
        this.providesActionHandlersProvider = DoubleCheck.provider(SupportSdkModule_ProvidesActionHandlersFactory.create(builder.supportSdkModule));
        this.providesRequestProvider = SupportModule_ProvidesRequestProviderFactory.create(builder.supportModule);
        this.providesSettingsProvider = SupportModule_ProvidesSettingsProviderFactory.create(builder.supportModule);
        this.providesUploadProvider = SupportModule_ProvidesUploadProviderFactory.create(builder.supportModule);
        this.getApplicationContextProvider = CoreModule_GetApplicationContextFactory.create(builder.coreModule);
        this.getSessionStorageProvider = CoreModule_GetSessionStorageFactory.create(builder.coreModule);
        this.providesRequestDiskLruCacheProvider = DoubleCheck.provider(SupportSdkModule_ProvidesRequestDiskLruCacheFactory.create(builder.supportSdkModule, this.getSessionStorageProvider));
        this.providesProvider = DoubleCheck.provider(SupportSdkModule_ProvidesFactory.create(builder.supportSdkModule));
        this.supportUIStorageProvider = DoubleCheck.provider(SupportSdkModule_SupportUIStorageFactory.create(builder.supportSdkModule, this.providesRequestDiskLruCacheProvider, this.providesProvider));
        this.getExecutorServiceProvider = CoreModule_GetExecutorServiceFactory.create(builder.coreModule);
        this.mainThreadExecutorProvider = DoubleCheck.provider(SupportSdkModule_MainThreadExecutorFactory.create(builder.supportSdkModule));
        this.getAuthenticationProvider = CoreModule_GetAuthenticationProviderFactory.create(builder.coreModule);
        this.providesBlipsProvider = SupportModule_ProvidesBlipsProviderFactory.create(builder.supportModule);
        this.providesOkHttpClientProvider = SupportModule_ProvidesOkHttpClientFactory.create(builder.supportModule);
        this.requestInfoDataSourceProvider = SupportSdkModule_RequestInfoDataSourceFactory.create(builder.supportSdkModule, this.supportUIStorageProvider, this.mainThreadExecutorProvider, this.getExecutorServiceProvider);
        this.providesPicassoProvider = DoubleCheck.provider(SupportSdkModule_ProvidesPicassoFactory.create(builder.supportSdkModule, this.getApplicationContextProvider, this.providesOkHttpClientProvider, this.getExecutorServiceProvider));
        this.getMemoryCacheProvider = CoreModule_GetMemoryCacheFactory.create(builder.coreModule);
    }

    private DeepLinkingBroadcastReceiver injectDeepLinkingBroadcastReceiver(DeepLinkingBroadcastReceiver deepLinkingBroadcastReceiver) {
        DeepLinkingBroadcastReceiver_MembersInjector.injectDeepLinkHelper(deepLinkingBroadcastReceiver, this.providesDeepLinkHelperProvider.get());
        return deepLinkingBroadcastReceiver;
    }

    private HelpCenterActivity injectHelpCenterActivity(HelpCenterActivity helpCenterActivity) {
        HelpCenterActivity_MembersInjector.injectHelpCenterProvider(helpCenterActivity, (HelpCenterProvider) Preconditions.checkNotNull(this.supportModule.providesHelpCenterProvider(), "Cannot return null from a non-@Nullable @Provides method"));
        HelpCenterActivity_MembersInjector.injectSettingsProvider(helpCenterActivity, (SupportSettingsProvider) Preconditions.checkNotNull(this.supportModule.providesSettingsProvider(), "Cannot return null from a non-@Nullable @Provides method"));
        HelpCenterActivity_MembersInjector.injectNetworkInfoProvider(helpCenterActivity, (NetworkInfoProvider) Preconditions.checkNotNull(CoreModule_GetNetworkInfoProviderFactory.proxyGetNetworkInfoProvider(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        return helpCenterActivity;
    }

    private HelpCenterFragment injectHelpCenterFragment(HelpCenterFragment helpCenterFragment) {
        HelpCenterFragment_MembersInjector.injectHelpCenterProvider(helpCenterFragment, (HelpCenterProvider) Preconditions.checkNotNull(this.supportModule.providesHelpCenterProvider(), "Cannot return null from a non-@Nullable @Provides method"));
        HelpCenterFragment_MembersInjector.injectNetworkInfoProvider(helpCenterFragment, (NetworkInfoProvider) Preconditions.checkNotNull(CoreModule_GetNetworkInfoProviderFactory.proxyGetNetworkInfoProvider(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        return helpCenterFragment;
    }

    private SdkDependencyProvider injectSdkDependencyProvider(SdkDependencyProvider sdkDependencyProvider) {
        SdkDependencyProvider_MembersInjector.injectRegistry(sdkDependencyProvider, (ActionHandlerRegistry) Preconditions.checkNotNull(CoreModule_ActionHandlerRegistryFactory.proxyActionHandlerRegistry(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        SdkDependencyProvider_MembersInjector.injectActionHandlers(sdkDependencyProvider, this.providesActionHandlersProvider.get());
        return sdkDependencyProvider;
    }

    private ViewArticleActivity injectViewArticleActivity(ViewArticleActivity viewArticleActivity) {
        ViewArticleActivity_MembersInjector.injectOkHttpClient(viewArticleActivity, (OkHttpClient) Preconditions.checkNotNull(this.supportModule.providesOkHttpClient(), "Cannot return null from a non-@Nullable @Provides method"));
        ViewArticleActivity_MembersInjector.injectApplicationConfiguration(viewArticleActivity, (ApplicationConfiguration) Preconditions.checkNotNull(CoreModule_GetApplicationConfigurationFactory.proxyGetApplicationConfiguration(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        ViewArticleActivity_MembersInjector.injectHelpCenterProvider(viewArticleActivity, (HelpCenterProvider) Preconditions.checkNotNull(this.supportModule.providesHelpCenterProvider(), "Cannot return null from a non-@Nullable @Provides method"));
        ViewArticleActivity_MembersInjector.injectArticleVoteStorage(viewArticleActivity, (ArticleVoteStorage) Preconditions.checkNotNull(this.supportModule.providesArticleVoteStorage(), "Cannot return null from a non-@Nullable @Provides method"));
        ViewArticleActivity_MembersInjector.injectDeepLinkHelper(viewArticleActivity, this.providesDeepLinkHelperProvider.get());
        ViewArticleActivity_MembersInjector.injectNetworkInfoProvider(viewArticleActivity, (NetworkInfoProvider) Preconditions.checkNotNull(CoreModule_GetNetworkInfoProviderFactory.proxyGetNetworkInfoProvider(this.coreModule), "Cannot return null from a non-@Nullable @Provides method"));
        ViewArticleActivity_MembersInjector.injectSupportSettingsProvider(viewArticleActivity, (SupportSettingsProvider) Preconditions.checkNotNull(this.supportModule.providesSettingsProvider(), "Cannot return null from a non-@Nullable @Provides method"));
        return viewArticleActivity;
    }

    @Override // zendesk.support.SupportSdkComponent
    public HelpCenterProvider helpCenterProvider() {
        return (HelpCenterProvider) Preconditions.checkNotNull(this.supportModule.providesHelpCenterProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // zendesk.support.SupportSdkComponent
    public void inject(DeepLinkingBroadcastReceiver deepLinkingBroadcastReceiver) {
        injectDeepLinkingBroadcastReceiver(deepLinkingBroadcastReceiver);
    }

    @Override // zendesk.support.SupportSdkComponent
    public void inject(SdkDependencyProvider sdkDependencyProvider) {
        injectSdkDependencyProvider(sdkDependencyProvider);
    }

    @Override // zendesk.support.SupportSdkComponent
    public void inject(HelpCenterActivity helpCenterActivity) {
        injectHelpCenterActivity(helpCenterActivity);
    }

    @Override // zendesk.support.SupportSdkComponent
    public void inject(HelpCenterFragment helpCenterFragment) {
        injectHelpCenterFragment(helpCenterFragment);
    }

    @Override // zendesk.support.SupportSdkComponent
    public void inject(ViewArticleActivity viewArticleActivity) {
        injectViewArticleActivity(viewArticleActivity);
    }

    @Override // zendesk.support.SupportSdkComponent
    public RequestComponent plus(RequestModule requestModule) {
        return new RequestComponentImpl(requestModule);
    }

    @Override // zendesk.support.SupportSdkComponent
    public RequestListComponent plus(RequestListModule requestListModule) {
        return new RequestListComponentImpl(requestListModule);
    }
}
