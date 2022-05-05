package zendesk.core;

import android.content.Context;
import com.google.gson.Gson;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import javax.inject.Singleton;
import okhttp3.Cache;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import p655o.C15300s;
import p655o.p656x.p657a.C15310a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule.class */
public class ZendeskNetworkModule {
    public static AcceptLanguageHeaderInterceptor provideAcceptLanguageHeaderInterceptor(@Named("application_context") Context context) {
        return new AcceptLanguageHeaderInterceptor(context);
    }

    public static ZendeskAccessInterceptor provideAccessInterceptor(IdentityManager identityManager, AccessProvider accessProvider, Storage storage, CoreSettingsStorage coreSettingsStorage) {
        return new ZendeskAccessInterceptor(identityManager, accessProvider, storage, coreSettingsStorage);
    }

    public static ZendeskAuthHeaderInterceptor provideAuthHeaderInterceptor(IdentityManager identityManager) {
        return new ZendeskAuthHeaderInterceptor(identityManager);
    }

    public static CachingInterceptor provideCachingInterceptor(@Named("base_storage_disk_lru") BaseStorage baseStorage) {
        return new CachingInterceptor(baseStorage);
    }

    @Singleton
    @Named("CoreRetrofit")
    public static C15300s provideCoreRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, @Named("CoreOkHttp") OkHttpClient okHttpClient) {
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(applicationConfiguration.getZendeskUrl());
        bVar.m75a(C15310a.m45a(gson));
        bVar.m72a(okHttpClient);
        return bVar.m77a();
    }

    public static ZendeskPushInterceptor providePushInterceptor(PushRegistrationProviderInternal pushRegistrationProviderInternal, PushDeviceIdStorage pushDeviceIdStorage) {
        return new ZendeskPushInterceptor(pushRegistrationProviderInternal, pushDeviceIdStorage);
    }

    @Singleton
    @Named("PushProviderRetrofit")
    public static C15300s providePushProviderRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, @Named("CoreOkHttp") OkHttpClient okHttpClient, ZendeskAuthHeaderInterceptor zendeskAuthHeaderInterceptor) {
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(applicationConfiguration.getZendeskUrl());
        bVar.m75a(C15310a.m45a(gson));
        OkHttpClient.Builder newBuilder = okHttpClient.newBuilder();
        newBuilder.addInterceptor(zendeskAuthHeaderInterceptor);
        bVar.m72a(newBuilder.build());
        return bVar.m77a();
    }

    @Singleton
    @Named("Retrofit")
    public static C15300s provideRetrofit(ApplicationConfiguration applicationConfiguration, Gson gson, @Named("StandardOkHttp") OkHttpClient okHttpClient) {
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(applicationConfiguration.getZendeskUrl());
        bVar.m75a(C15310a.m45a(gson));
        bVar.m72a(okHttpClient);
        return bVar.m77a();
    }

    public static ZendeskSettingsInterceptor provideSettingsInterceptor(SdkSettingsProviderInternal sdkSettingsProviderInternal, SettingsStorage settingsStorage) {
        return new ZendeskSettingsInterceptor(sdkSettingsProviderInternal, settingsStorage);
    }

    public static ZendeskUnauthorizedInterceptor provideZendeskUnauthorizedInterceptor(SessionStorage sessionStorage) {
        return new ZendeskUnauthorizedInterceptor(sessionStorage);
    }

    public static AcceptHeaderInterceptor providesAcceptHeaderInterceptor() {
        return new AcceptHeaderInterceptor();
    }

    @Singleton
    @Named("BaseOkHttp")
    public OkHttpClient provideBaseOkHttpClient(HttpLoggingInterceptor httpLoggingInterceptor, ZendeskOauthIdHeaderInterceptor zendeskOauthIdHeaderInterceptor, UserAgentAndClientHeadersInterceptor userAgentAndClientHeadersInterceptor, ExecutorService executorService) {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        Tls12SocketFactory.enableTls12OnPreLollipop(builder);
        builder.addInterceptor(zendeskOauthIdHeaderInterceptor);
        builder.addInterceptor(httpLoggingInterceptor);
        builder.addInterceptor(userAgentAndClientHeadersInterceptor);
        builder.connectTimeout(30L, TimeUnit.SECONDS);
        builder.readTimeout(30L, TimeUnit.SECONDS);
        builder.writeTimeout(30L, TimeUnit.SECONDS);
        builder.dispatcher(new Dispatcher(executorService));
        return builder.build();
    }

    @Singleton
    @Named("CoreOkHttp")
    public OkHttpClient provideCoreOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, AcceptLanguageHeaderInterceptor acceptLanguageHeaderInterceptor, AcceptHeaderInterceptor acceptHeaderInterceptor) {
        OkHttpClient.Builder newBuilder = okHttpClient.newBuilder();
        newBuilder.addInterceptor(acceptLanguageHeaderInterceptor);
        newBuilder.addInterceptor(acceptHeaderInterceptor);
        return newBuilder.build();
    }

    @Singleton
    @Named("MediaOkHttp")
    public OkHttpClient provideMediaOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, ZendeskAccessInterceptor zendeskAccessInterceptor, ZendeskAuthHeaderInterceptor zendeskAuthHeaderInterceptor, ZendeskSettingsInterceptor zendeskSettingsInterceptor, CachingInterceptor cachingInterceptor, ZendeskUnauthorizedInterceptor zendeskUnauthorizedInterceptor) {
        OkHttpClient.Builder newBuilder = okHttpClient.newBuilder();
        newBuilder.addInterceptor(zendeskSettingsInterceptor);
        newBuilder.addInterceptor(cachingInterceptor);
        newBuilder.addInterceptor(zendeskAccessInterceptor);
        newBuilder.addInterceptor(zendeskAuthHeaderInterceptor);
        newBuilder.addInterceptor(zendeskUnauthorizedInterceptor);
        return newBuilder.build();
    }

    @Singleton
    @Named("StandardOkHttp")
    public OkHttpClient provideOkHttpClient(@Named("BaseOkHttp") OkHttpClient okHttpClient, ZendeskAccessInterceptor zendeskAccessInterceptor, ZendeskUnauthorizedInterceptor zendeskUnauthorizedInterceptor, ZendeskAuthHeaderInterceptor zendeskAuthHeaderInterceptor, ZendeskSettingsInterceptor zendeskSettingsInterceptor, AcceptHeaderInterceptor acceptHeaderInterceptor, ZendeskPushInterceptor zendeskPushInterceptor, Cache cache) {
        OkHttpClient.Builder newBuilder = okHttpClient.newBuilder();
        newBuilder.addInterceptor(zendeskSettingsInterceptor);
        newBuilder.addInterceptor(zendeskAccessInterceptor);
        newBuilder.addInterceptor(zendeskAuthHeaderInterceptor);
        newBuilder.addInterceptor(zendeskUnauthorizedInterceptor);
        newBuilder.addInterceptor(acceptHeaderInterceptor);
        newBuilder.addInterceptor(zendeskPushInterceptor);
        newBuilder.cache(cache);
        return newBuilder.build();
    }

    @Singleton
    public RestServiceProvider provideRestServiceProvider(@Named("Retrofit") C15300s sVar, @Named("MediaOkHttp") OkHttpClient okHttpClient, @Named("StandardOkHttp") OkHttpClient okHttpClient2, @Named("CoreOkHttp") OkHttpClient okHttpClient3) {
        return new ZendeskRestServiceProvider(sVar, okHttpClient, okHttpClient2, okHttpClient3);
    }

    public ZendeskOauthIdHeaderInterceptor provideZendeskBasicHeadersInterceptor(ApplicationConfiguration applicationConfiguration) {
        return new ZendeskOauthIdHeaderInterceptor(applicationConfiguration.getOauthClientId());
    }

    public UserAgentAndClientHeadersInterceptor providesUserAgentHeaderInterceptor() {
        return new UserAgentAndClientHeadersInterceptor("3.0.3", "Core");
    }
}
