package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import com.google.gson.Gson;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.SingleCheck;
import java.io.File;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
/* loaded from: classes3-dex2jar.jar:zendesk/core/DaggerZendeskApplicationComponent.class */
public final class DaggerZendeskApplicationComponent implements ZendeskApplicationComponent {
    private Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private Provider<AcceptLanguageHeaderInterceptor> provideAcceptLanguageHeaderInterceptorProvider;
    private Provider<ZendeskAccessInterceptor> provideAccessInterceptorProvider;
    private Provider<AccessProvider> provideAccessProvider;
    private Provider<AccessService> provideAccessServiceProvider;
    private Provider<BaseStorage> provideAdditionalSdkBaseStorageProvider;
    private Provider<ApplicationConfiguration> provideApplicationConfigurationProvider;
    private Provider<Context> provideApplicationContextProvider;
    private Provider<ZendeskAuthHeaderInterceptor> provideAuthHeaderInterceptorProvider;
    private Provider<AuthenticationProvider> provideAuthProvider;
    private Provider<Serializer> provideBase64SerializerProvider;
    private Provider<OkHttpClient> provideBaseOkHttpClientProvider;
    private Provider<BlipsService> provideBlipsServiceProvider;
    private Provider<Cache> provideCacheProvider;
    private Provider<CachingInterceptor> provideCachingInterceptorProvider;
    private Provider<OkHttpClient> provideCoreOkHttpClientProvider;
    private Provider<Retrofit> provideCoreRetrofitProvider;
    private Provider<CoreModule> provideCoreSdkModuleProvider;
    private Provider<CoreSettingsStorage> provideCoreSettingsStorageProvider;
    private Provider<DeviceInfo> provideDeviceInfoProvider;
    private Provider<ExecutorService> provideExecutorProvider;
    private Provider<Gson> provideGsonProvider;
    private Provider<HttpLoggingInterceptor> provideHttpLoggingInterceptorProvider;
    private Provider<BaseStorage> provideIdentityBaseStorageProvider;
    private Provider<IdentityManager> provideIdentityManagerProvider;
    private Provider<IdentityStorage> provideIdentityStorageProvider;
    private Provider<SharedPreferencesStorage> provideLegacyIdentityBaseStorageProvider;
    private Provider<LegacyIdentityMigrator> provideLegacyIdentityStorageProvider;
    private Provider<SharedPreferencesStorage> provideLegacyPushBaseStorageProvider;
    private Provider<OkHttpClient> provideMediaOkHttpClientProvider;
    private Provider<MemoryCache> provideMemoryCacheProvider;
    private Provider<OkHttpClient> provideOkHttpClientProvider;
    private Provider<ProviderStore> provideProviderStoreProvider;
    private Provider<PushDeviceIdStorage> providePushDeviceIdStorageProvider;
    private Provider<PushRegistrationProvider> providePushRegistrationProvider;
    private Provider<PushRegistrationService> providePushRegistrationServiceProvider;
    private Provider<RestServiceProvider> provideRestServiceProvider;
    private Provider<Retrofit> provideRetrofitProvider;
    private Provider<BaseStorage> provideSdkBaseStorageProvider;
    private Provider<SettingsProvider> provideSdkSettingsProvider;
    private Provider<SdkSettingsProviderInternal> provideSdkSettingsProviderInternalProvider;
    private Provider<SdkSettingsService> provideSdkSettingsServiceProvider;
    private Provider<Storage> provideSdkStorageProvider;
    private Provider<Serializer> provideSerializerProvider;
    private Provider<SessionStorage> provideSessionStorageProvider;
    private Provider<BaseStorage> provideSettingsBaseStorageProvider;
    private Provider<ZendeskSettingsInterceptor> provideSettingsInterceptorProvider;
    private Provider<SettingsStorage> provideSettingsStorageProvider;
    private Provider<UserProvider> provideUserProvider;
    private Provider<UserService> provideUserServiceProvider;
    private Provider<ZendeskOauthIdHeaderInterceptor> provideZendeskBasicHeadersInterceptorProvider;
    private Provider<ZendeskShadow> provideZendeskProvider;
    private Provider<ZendeskSettingsProvider> provideZendeskSdkSettingsProvider;
    private Provider<ZendeskUnauthorizedInterceptor> provideZendeskUnauthorizedInterceptorProvider;
    private Provider<BlipsCoreProvider> providerBlipsCoreProvider;
    private Provider<BlipsProvider> providerBlipsProvider;
    private Provider<ConnectivityManager> providerConnectivityManagerProvider;
    private Provider<NetworkInfoProvider> providerNetworkInfoProvider;
    private Provider<ZendeskBlipsProvider> providerZendeskBlipsProvider;
    private Provider<AcceptHeaderInterceptor> providesAcceptHeaderInterceptorProvider;
    private Provider<File> providesBelvedereDirProvider;
    private Provider<File> providesCacheDirProvider;
    private Provider<File> providesDataDirProvider;
    private Provider<BaseStorage> providesDiskLruStorageProvider;
    private Provider<UserAgentAndClientHeadersInterceptor> providesUserAgentHeaderInterceptorProvider;

    /* loaded from: classes3-dex2jar.jar:zendesk/core/DaggerZendeskApplicationComponent$Builder.class */
    public static final class Builder {
        private ZendeskApplicationModule zendeskApplicationModule;
        private ZendeskNetworkModule zendeskNetworkModule;

        private Builder() {
        }

        public ZendeskApplicationComponent build() {
            if (this.zendeskApplicationModule == null) {
                throw new IllegalStateException(ZendeskApplicationModule.class.getCanonicalName() + " must be set");
            }
            if (this.zendeskNetworkModule == null) {
                this.zendeskNetworkModule = new ZendeskNetworkModule();
            }
            return new DaggerZendeskApplicationComponent(this);
        }

        public Builder zendeskApplicationModule(ZendeskApplicationModule zendeskApplicationModule) {
            this.zendeskApplicationModule = (ZendeskApplicationModule) Preconditions.checkNotNull(zendeskApplicationModule);
            return this;
        }

        public Builder zendeskNetworkModule(ZendeskNetworkModule zendeskNetworkModule) {
            this.zendeskNetworkModule = (ZendeskNetworkModule) Preconditions.checkNotNull(zendeskNetworkModule);
            return this;
        }

        @Deprecated
        public Builder zendeskProvidersModule(ZendeskProvidersModule zendeskProvidersModule) {
            Preconditions.checkNotNull(zendeskProvidersModule);
            return this;
        }

        @Deprecated
        public Builder zendeskStorageModule(ZendeskStorageModule zendeskStorageModule) {
            Preconditions.checkNotNull(zendeskStorageModule);
            return this;
        }
    }

    private DaggerZendeskApplicationComponent(Builder builder) {
        initialize(builder);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.provideApplicationContextProvider = DoubleCheck.provider(ZendeskApplicationModule_ProvideApplicationContextFactory.create(builder.zendeskApplicationModule));
        this.provideGsonProvider = SingleCheck.provider(ZendeskApplicationModule_ProvideGsonFactory.create());
        this.provideSerializerProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSerializerFactory.create(this.provideGsonProvider));
        this.provideSettingsBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSettingsBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideSettingsStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSettingsStorageFactory.create(this.provideSettingsBaseStorageProvider));
        this.provideIdentityBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideIdentityBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideIdentityStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideIdentityStorageFactory.create(this.provideIdentityBaseStorageProvider));
        this.provideAdditionalSdkBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.providesCacheDirProvider = DoubleCheck.provider(ZendeskStorageModule_ProvidesCacheDirFactory.create(this.provideApplicationContextProvider));
        this.providesDiskLruStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvidesDiskLruStorageFactory.create(this.providesCacheDirProvider, this.provideSerializerProvider));
        this.provideCacheProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideCacheFactory.create(this.providesCacheDirProvider));
        this.providesDataDirProvider = DoubleCheck.provider(ZendeskStorageModule_ProvidesDataDirFactory.create(this.provideApplicationContextProvider));
        this.providesBelvedereDirProvider = DoubleCheck.provider(ZendeskStorageModule_ProvidesBelvedereDirFactory.create(this.provideApplicationContextProvider));
        this.provideSessionStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSessionStorageFactory.create(this.provideIdentityStorageProvider, this.provideAdditionalSdkBaseStorageProvider, this.providesDiskLruStorageProvider, this.provideCacheProvider, this.providesCacheDirProvider, this.providesDataDirProvider, this.providesBelvedereDirProvider));
        this.provideSdkBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSdkBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideMemoryCacheProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideMemoryCacheFactory.create());
        this.provideSdkStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideSdkStorageFactory.create(this.provideSettingsStorageProvider, this.provideSessionStorageProvider, this.provideSdkBaseStorageProvider, this.provideMemoryCacheProvider));
        this.provideLegacyIdentityBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideLegacyPushBaseStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory.create(this.provideApplicationContextProvider, this.provideSerializerProvider));
        this.provideIdentityManagerProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideIdentityManagerFactory.create(this.provideIdentityStorageProvider));
        this.providePushDeviceIdStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvidePushDeviceIdStorageFactory.create(this.provideAdditionalSdkBaseStorageProvider));
        this.provideLegacyIdentityStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideLegacyIdentityStorageFactory.create(this.provideLegacyIdentityBaseStorageProvider, this.provideLegacyPushBaseStorageProvider, this.provideIdentityStorageProvider, this.provideIdentityManagerProvider, this.providePushDeviceIdStorageProvider));
        this.provideApplicationConfigurationProvider = DoubleCheck.provider(ZendeskApplicationModule_ProvideApplicationConfigurationFactory.create(builder.zendeskApplicationModule));
        this.provideHttpLoggingInterceptorProvider = SingleCheck.provider(ZendeskApplicationModule_ProvideHttpLoggingInterceptorFactory.create());
        this.provideZendeskBasicHeadersInterceptorProvider = SingleCheck.provider(C2670x2dd20439.create(builder.zendeskNetworkModule, this.provideApplicationConfigurationProvider));
        this.providesUserAgentHeaderInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvidesUserAgentHeaderInterceptorFactory.create(builder.zendeskNetworkModule));
        this.provideExecutorProvider = DoubleCheck.provider(ZendeskApplicationModule_ProvideExecutorFactory.create());
        this.provideBaseOkHttpClientProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideBaseOkHttpClientFactory.create(builder.zendeskNetworkModule, this.provideHttpLoggingInterceptorProvider, this.provideZendeskBasicHeadersInterceptorProvider, this.providesUserAgentHeaderInterceptorProvider, this.provideExecutorProvider));
        this.provideAcceptLanguageHeaderInterceptorProvider = SingleCheck.provider(C2669x23150492.create(this.provideApplicationContextProvider));
        this.providesAcceptHeaderInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvidesAcceptHeaderInterceptorFactory.create());
        this.provideCoreOkHttpClientProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideCoreOkHttpClientFactory.create(this.provideBaseOkHttpClientProvider, this.provideAcceptLanguageHeaderInterceptorProvider, this.providesAcceptHeaderInterceptorProvider));
        this.provideCoreRetrofitProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideCoreRetrofitFactory.create(this.provideApplicationConfigurationProvider, this.provideGsonProvider, this.provideCoreOkHttpClientProvider));
        this.provideBlipsServiceProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideBlipsServiceFactory.create(this.provideCoreRetrofitProvider));
        this.provideDeviceInfoProvider = DoubleCheck.provider(ZendeskApplicationModule_ProvideDeviceInfoFactory.create(this.provideApplicationContextProvider));
        this.provideBase64SerializerProvider = SingleCheck.provider(ZendeskApplicationModule_ProvideBase64SerializerFactory.create(builder.zendeskApplicationModule, this.provideSerializerProvider));
        this.provideCoreSettingsStorageProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideCoreSettingsStorageFactory.create(this.provideSettingsStorageProvider));
        this.providerZendeskBlipsProvider = DoubleCheck.provider(ZendeskProvidersModule_ProviderZendeskBlipsProviderFactory.create(this.provideBlipsServiceProvider, this.provideDeviceInfoProvider, this.provideBase64SerializerProvider, this.provideIdentityManagerProvider, this.provideApplicationConfigurationProvider, this.provideCoreSettingsStorageProvider, this.provideExecutorProvider));
        this.providerBlipsCoreProvider = DoubleCheck.provider(ZendeskProvidersModule_ProviderBlipsCoreProviderFactory.create(this.providerZendeskBlipsProvider));
        this.provideAccessServiceProvider = SingleCheck.provider(ZendeskProvidersModule_ProvideAccessServiceFactory.create(this.provideCoreRetrofitProvider));
        this.provideAccessProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideAccessProviderFactory.create(this.provideIdentityManagerProvider, this.provideAccessServiceProvider));
        this.provideAccessInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvideAccessInterceptorFactory.create(this.provideIdentityManagerProvider, this.provideAccessProvider, this.provideSdkStorageProvider, this.provideCoreSettingsStorageProvider));
        this.provideZendeskUnauthorizedInterceptorProvider = SingleCheck.provider(C2671x5893b2b5.create(this.provideSessionStorageProvider));
        this.provideAuthHeaderInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvideAuthHeaderInterceptorFactory.create(this.provideIdentityManagerProvider));
        this.provideSdkSettingsServiceProvider = SingleCheck.provider(ZendeskProvidersModule_ProvideSdkSettingsServiceFactory.create(this.provideCoreRetrofitProvider));
        this.provideZendeskSdkSettingsProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideZendeskSdkSettingsProviderFactory.create(this.provideSdkSettingsServiceProvider, this.provideSettingsStorageProvider, this.provideCoreSettingsStorageProvider, this.provideSerializerProvider, this.provideApplicationConfigurationProvider, this.provideApplicationContextProvider));
        this.provideSdkSettingsProviderInternalProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideSdkSettingsProviderInternalFactory.create(this.provideZendeskSdkSettingsProvider));
        this.provideSettingsInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvideSettingsInterceptorFactory.create(this.provideSdkSettingsProviderInternalProvider, this.provideSettingsStorageProvider));
        this.provideOkHttpClientProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideOkHttpClientFactory.create(this.provideBaseOkHttpClientProvider, this.provideAccessInterceptorProvider, this.provideZendeskUnauthorizedInterceptorProvider, this.provideAuthHeaderInterceptorProvider, this.provideSettingsInterceptorProvider, this.providesAcceptHeaderInterceptorProvider, this.provideCacheProvider));
        this.provideRetrofitProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideRetrofitFactory.create(this.provideApplicationConfigurationProvider, this.provideGsonProvider, this.provideOkHttpClientProvider));
        this.providePushRegistrationServiceProvider = SingleCheck.provider(ZendeskProvidersModule_ProvidePushRegistrationServiceFactory.create(this.provideRetrofitProvider));
        this.provideSdkSettingsProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideSdkSettingsProviderFactory.create(this.provideZendeskSdkSettingsProvider));
        this.providePushRegistrationProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvidePushRegistrationProviderFactory.create(this.providePushRegistrationServiceProvider, this.provideIdentityManagerProvider, this.provideSdkSettingsProvider, this.providerBlipsCoreProvider, this.providePushDeviceIdStorageProvider, this.provideApplicationContextProvider));
        this.provideCachingInterceptorProvider = SingleCheck.provider(ZendeskNetworkModule_ProvideCachingInterceptorFactory.create(this.providesDiskLruStorageProvider));
        this.provideMediaOkHttpClientProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideMediaOkHttpClientFactory.create(this.provideBaseOkHttpClientProvider, this.provideAccessInterceptorProvider, this.provideAuthHeaderInterceptorProvider, this.provideSettingsInterceptorProvider, this.provideCachingInterceptorProvider, this.provideZendeskUnauthorizedInterceptorProvider));
        this.provideRestServiceProvider = DoubleCheck.provider(ZendeskNetworkModule_ProvideRestServiceProviderFactory.create(this.provideRetrofitProvider, this.provideMediaOkHttpClientProvider, this.provideOkHttpClientProvider));
        this.providerBlipsProvider = DoubleCheck.provider(ZendeskProvidersModule_ProviderBlipsProviderFactory.create(this.providerZendeskBlipsProvider));
        this.providerConnectivityManagerProvider = DoubleCheck.provider(ZendeskProvidersModule_ProviderConnectivityManagerFactory.create(this.provideApplicationContextProvider));
        this.providerNetworkInfoProvider = DoubleCheck.provider(ZendeskProvidersModule_ProviderNetworkInfoProviderFactory.create(this.provideApplicationContextProvider, this.providerConnectivityManagerProvider));
        this.actionHandlerRegistryProvider = DoubleCheck.provider(ZendeskProvidersModule_ActionHandlerRegistryFactory.create());
        this.provideAuthProvider = DoubleCheck.provider(ZendeskStorageModule_ProvideAuthProviderFactory.create(this.provideIdentityManagerProvider));
        this.provideCoreSdkModuleProvider = SingleCheck.provider(ZendeskProvidersModule_ProvideCoreSdkModuleFactory.create(this.provideSdkSettingsProvider, this.provideRestServiceProvider, this.providerBlipsProvider, this.provideSessionStorageProvider, this.providerNetworkInfoProvider, this.provideMemoryCacheProvider, this.actionHandlerRegistryProvider, this.provideExecutorProvider, this.provideApplicationContextProvider, this.provideAuthProvider, this.provideApplicationConfigurationProvider, this.providePushRegistrationProvider));
        this.provideUserServiceProvider = SingleCheck.provider(ZendeskProvidersModule_ProvideUserServiceFactory.create(this.provideRetrofitProvider));
        this.provideUserProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideUserProviderFactory.create(this.provideUserServiceProvider));
        this.provideProviderStoreProvider = DoubleCheck.provider(ZendeskProvidersModule_ProvideProviderStoreFactory.create(this.provideUserProvider, this.providePushRegistrationProvider));
        this.provideZendeskProvider = DoubleCheck.provider(ZendeskApplicationModule_ProvideZendeskFactory.create(this.provideSdkStorageProvider, this.provideLegacyIdentityStorageProvider, this.provideIdentityManagerProvider, this.providerBlipsCoreProvider, this.providePushRegistrationProvider, this.provideCoreSdkModuleProvider, this.provideProviderStoreProvider));
    }

    @Override // zendesk.core.ZendeskApplicationComponent
    public ZendeskShadow zendeskShadow() {
        return this.provideZendeskProvider.get();
    }
}
