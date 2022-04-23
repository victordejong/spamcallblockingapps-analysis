package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Named;
import javax.inject.Singleton;
import p655o.C15300s;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule.class */
public class ZendeskProvidersModule {
    @Singleton
    public static ActionHandlerRegistry actionHandlerRegistry() {
        return Zendesk.INSTANCE.actionHandlerRegistry();
    }

    @Singleton
    public static AccessProvider provideAccessProvider(IdentityManager identityManager, AccessService accessService) {
        return new ZendeskAccessProvider(identityManager, accessService);
    }

    public static AccessService provideAccessService(@Named("CoreRetrofit") C15300s sVar) {
        return (AccessService) sVar.m87a(AccessService.class);
    }

    @Singleton
    public static BlipsService provideBlipsService(@Named("CoreRetrofit") C15300s sVar) {
        return (BlipsService) sVar.m87a(BlipsService.class);
    }

    public static CoreModule provideCoreSdkModule(SettingsProvider settingsProvider, RestServiceProvider restServiceProvider, BlipsProvider blipsProvider, SessionStorage sessionStorage, NetworkInfoProvider networkInfoProvider, MemoryCache memoryCache, ActionHandlerRegistry actionHandlerRegistry, ScheduledExecutorService scheduledExecutorService, @Named("application_context") Context context, AuthenticationProvider authenticationProvider, ApplicationConfiguration applicationConfiguration, PushRegistrationProvider pushRegistrationProvider) {
        return new CoreModule(settingsProvider, restServiceProvider, blipsProvider, sessionStorage, networkInfoProvider, context, actionHandlerRegistry, memoryCache, scheduledExecutorService, authenticationProvider, applicationConfiguration, pushRegistrationProvider);
    }

    @Singleton
    public static ProviderStore provideProviderStore(UserProvider userProvider, PushRegistrationProvider pushRegistrationProvider) {
        return new ZendeskProviderStore(userProvider, pushRegistrationProvider);
    }

    @Singleton
    public static PushRegistrationProvider providePushRegistrationProvider(PushRegistrationService pushRegistrationService, IdentityManager identityManager, SettingsProvider settingsProvider, BlipsCoreProvider blipsCoreProvider, PushDeviceIdStorage pushDeviceIdStorage, @Named("application_context") Context context) {
        return new ZendeskPushRegistrationProvider(pushRegistrationService, identityManager, settingsProvider, blipsCoreProvider, pushDeviceIdStorage, DeviceInfo.getCurrentLocale(context));
    }

    @Singleton
    public static PushRegistrationProviderInternal providePushRegistrationProviderInternal(PushRegistrationProvider pushRegistrationProvider) {
        return (ZendeskPushRegistrationProvider) pushRegistrationProvider;
    }

    public static PushRegistrationService providePushRegistrationService(@Named("PushProviderRetrofit") C15300s sVar) {
        return (PushRegistrationService) sVar.m87a(PushRegistrationService.class);
    }

    @Singleton
    public static SettingsProvider provideSdkSettingsProvider(ZendeskSettingsProvider zendeskSettingsProvider) {
        return zendeskSettingsProvider;
    }

    @Singleton
    public static SdkSettingsProviderInternal provideSdkSettingsProviderInternal(ZendeskSettingsProvider zendeskSettingsProvider) {
        return zendeskSettingsProvider;
    }

    public static SdkSettingsService provideSdkSettingsService(@Named("CoreRetrofit") C15300s sVar) {
        return (SdkSettingsService) sVar.m87a(SdkSettingsService.class);
    }

    @Singleton
    public static UserProvider provideUserProvider(UserService userService) {
        return new ZendeskUserProvider(userService);
    }

    public static UserService provideUserService(@Named("Retrofit") C15300s sVar) {
        return (UserService) sVar.m87a(UserService.class);
    }

    @Singleton
    public static ZendeskSettingsProvider provideZendeskSdkSettingsProvider(SdkSettingsService sdkSettingsService, SettingsStorage settingsStorage, CoreSettingsStorage coreSettingsStorage, ActionHandlerRegistry actionHandlerRegistry, @Named("gson_serializer") Serializer serializer, ZendeskLocaleConverter zendeskLocaleConverter, ApplicationConfiguration applicationConfiguration, @Named("application_context") Context context) {
        return new ZendeskSettingsProvider(sdkSettingsService, settingsStorage, coreSettingsStorage, actionHandlerRegistry, serializer, zendeskLocaleConverter, applicationConfiguration.getApplicationId(), context);
    }

    @Singleton
    public static BlipsCoreProvider providerBlipsCoreProvider(ZendeskBlipsProvider zendeskBlipsProvider) {
        return zendeskBlipsProvider;
    }

    @Singleton
    public static BlipsProvider providerBlipsProvider(ZendeskBlipsProvider zendeskBlipsProvider) {
        return zendeskBlipsProvider;
    }

    @Singleton
    public static ConnectivityManager providerConnectivityManager(@Named("application_context") Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    @Singleton
    public static NetworkInfoProvider providerNetworkInfoProvider(@Named("application_context") Context context, ConnectivityManager connectivityManager) {
        return new ZendeskNetworkInfoProvider(context, connectivityManager);
    }

    @Singleton
    public static ZendeskBlipsProvider providerZendeskBlipsProvider(BlipsService blipsService, DeviceInfo deviceInfo, @Named("base_64_serializer") Serializer serializer, IdentityManager identityManager, ApplicationConfiguration applicationConfiguration, CoreSettingsStorage coreSettingsStorage, ExecutorService executorService) {
        return new ZendeskBlipsProvider(blipsService, deviceInfo, serializer, identityManager, applicationConfiguration.getApplicationId(), coreSettingsStorage, executorService);
    }
}
