package zendesk.core;

import android.content.Context;
import com.google.gson.Gson;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.Cache;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/* JADX INFO: Access modifiers changed from: package-private */
@Module
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule.class */
public class ZendeskNetworkModule {
    private static final String BASE_OK_HTTP = "BaseOkHttp";
    private static final String CORE_OK_HTTP = "CoreOkHttp";
    static final String CORE_RETROFIT = "CoreRetrofit";
    private static final String MEDIA_OK_HTTP = "MediaOkHttp";
    private static final String STANDARD_OK_HTTP = "StandardOkHttp";
    static final String STANDARD_RETROFIT = "Retrofit";

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static AcceptLanguageHeaderInterceptor provideAcceptLanguageHeaderInterceptor(@Named("application_context") Context context) {
        return new AcceptLanguageHeaderInterceptor(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static ZendeskAccessInterceptor provideAccessInterceptor(IdentityManager identityManager, AccessProvider accessProvider, Storage storage, CoreSettingsStorage coreSettingsStorage) {
        return new ZendeskAccessInterceptor(identityManager, accessProvider, storage, coreSettingsStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static ZendeskAuthHeaderInterceptor provideAuthHeaderInterceptor(IdentityManager identityManager) {
        return new ZendeskAuthHeaderInterceptor(identityManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static CachingInterceptor provideCachingInterceptor(@Named("base_storage_disk_lru") BaseStorage baseStorage) {
        return new CachingInterceptor(baseStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(CORE_OK_HTTP)
    public static OkHttpClient provideCoreOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, AcceptLanguageHeaderInterceptor acceptLanguageHeaderInterceptor, AcceptHeaderInterceptor acceptHeaderInterceptor) {
        return okHttpClient.newBuilder().addInterceptor(acceptLanguageHeaderInterceptor).addInterceptor(acceptHeaderInterceptor).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(CORE_RETROFIT)
    public static Retrofit provideCoreRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, @Named("CoreOkHttp") OkHttpClient okHttpClient) {
        return new Retrofit.Builder().baseUrl(applicationConfiguration.getZendeskUrl()).addConverterFactory(GsonConverterFactory.create(gson)).client(okHttpClient).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(MEDIA_OK_HTTP)
    public static OkHttpClient provideMediaOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, ZendeskAccessInterceptor zendeskAccessInterceptor, ZendeskAuthHeaderInterceptor zendeskAuthHeaderInterceptor, ZendeskSettingsInterceptor zendeskSettingsInterceptor, CachingInterceptor cachingInterceptor, ZendeskUnauthorizedInterceptor zendeskUnauthorizedInterceptor) {
        return okHttpClient.newBuilder().addInterceptor(zendeskSettingsInterceptor).addInterceptor(cachingInterceptor).addInterceptor(zendeskAccessInterceptor).addInterceptor(zendeskAuthHeaderInterceptor).addInterceptor(zendeskUnauthorizedInterceptor).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(STANDARD_OK_HTTP)
    public static OkHttpClient provideOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, ZendeskAccessInterceptor zendeskAccessInterceptor, ZendeskUnauthorizedInterceptor zendeskUnauthorizedInterceptor, ZendeskAuthHeaderInterceptor zendeskAuthHeaderInterceptor, ZendeskSettingsInterceptor zendeskSettingsInterceptor, AcceptHeaderInterceptor acceptHeaderInterceptor, Cache cache) {
        return okHttpClient.newBuilder().addInterceptor(zendeskSettingsInterceptor).addInterceptor(zendeskAccessInterceptor).addInterceptor(zendeskAuthHeaderInterceptor).addInterceptor(zendeskUnauthorizedInterceptor).addInterceptor(acceptHeaderInterceptor).cache(cache).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    public static RestServiceProvider provideRestServiceProvider(@Named("Retrofit") Retrofit retrofit, @Named("MediaOkHttp") OkHttpClient okHttpClient, @Named("StandardOkHttp") OkHttpClient okHttpClient2) {
        return new ZendeskRestServiceProvider(retrofit, okHttpClient, okHttpClient2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(STANDARD_RETROFIT)
    public static Retrofit provideRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, @Named("StandardOkHttp") OkHttpClient okHttpClient) {
        return new Retrofit.Builder().baseUrl(applicationConfiguration.getZendeskUrl()).addConverterFactory(GsonConverterFactory.create(gson)).client(okHttpClient).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static ZendeskSettingsInterceptor provideSettingsInterceptor(SdkSettingsProviderInternal sdkSettingsProviderInternal, SettingsStorage settingsStorage) {
        return new ZendeskSettingsInterceptor(sdkSettingsProviderInternal, settingsStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static ZendeskUnauthorizedInterceptor provideZendeskUnauthorizedInterceptor(SessionStorage sessionStorage) {
        return new ZendeskUnauthorizedInterceptor(sessionStorage);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public static AcceptHeaderInterceptor providesAcceptHeaderInterceptor() {
        return new AcceptHeaderInterceptor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Singleton
    @Named(BASE_OK_HTTP)
    public OkHttpClient provideBaseOkHttpClient(HttpLoggingInterceptor httpLoggingInterceptor, ZendeskOauthIdHeaderInterceptor zendeskOauthIdHeaderInterceptor, UserAgentAndClientHeadersInterceptor userAgentAndClientHeadersInterceptor, ExecutorService executorService) {
        return Tls12SocketFactory.enableTls12OnPreLollipop(new OkHttpClient.Builder()).addInterceptor(zendeskOauthIdHeaderInterceptor).addInterceptor(httpLoggingInterceptor).addInterceptor(userAgentAndClientHeadersInterceptor).connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).dispatcher(new Dispatcher(executorService)).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public ZendeskOauthIdHeaderInterceptor provideZendeskBasicHeadersInterceptor(ApplicationConfiguration applicationConfiguration) {
        return new ZendeskOauthIdHeaderInterceptor(applicationConfiguration.getOauthClientId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    @Reusable
    public UserAgentAndClientHeadersInterceptor providesUserAgentHeaderInterceptor() {
        return new UserAgentAndClientHeadersInterceptor("2.0.1", Constants.VARIANT);
    }
}
