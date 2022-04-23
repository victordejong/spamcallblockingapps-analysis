package zendesk.core;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory.class */
public final class ZendeskProvidersModule_ProvideCoreSdkModuleFactory implements AbstractC10866b<CoreModule> {
    public final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    public final Provider<AuthenticationProvider> authenticationProvider;
    public final Provider<BlipsProvider> blipsProvider;
    public final Provider<Context> contextProvider;
    public final Provider<ScheduledExecutorService> executorProvider;
    public final Provider<MemoryCache> memoryCacheProvider;
    public final Provider<NetworkInfoProvider> networkInfoProvider;
    public final Provider<PushRegistrationProvider> pushRegistrationProvider;
    public final Provider<RestServiceProvider> restServiceProvider;
    public final Provider<SessionStorage> sessionStorageProvider;
    public final Provider<SettingsProvider> settingsProvider;
    public final Provider<ApplicationConfiguration> zendeskConfigurationProvider;

    public ZendeskProvidersModule_ProvideCoreSdkModuleFactory(Provider<SettingsProvider> provider, Provider<RestServiceProvider> provider2, Provider<BlipsProvider> provider3, Provider<SessionStorage> provider4, Provider<NetworkInfoProvider> provider5, Provider<MemoryCache> provider6, Provider<ActionHandlerRegistry> provider7, Provider<ScheduledExecutorService> provider8, Provider<Context> provider9, Provider<AuthenticationProvider> provider10, Provider<ApplicationConfiguration> provider11, Provider<PushRegistrationProvider> provider12) {
        this.settingsProvider = provider;
        this.restServiceProvider = provider2;
        this.blipsProvider = provider3;
        this.sessionStorageProvider = provider4;
        this.networkInfoProvider = provider5;
        this.memoryCacheProvider = provider6;
        this.actionHandlerRegistryProvider = provider7;
        this.executorProvider = provider8;
        this.contextProvider = provider9;
        this.authenticationProvider = provider10;
        this.zendeskConfigurationProvider = provider11;
        this.pushRegistrationProvider = provider12;
    }

    public static ZendeskProvidersModule_ProvideCoreSdkModuleFactory create(Provider<SettingsProvider> provider, Provider<RestServiceProvider> provider2, Provider<BlipsProvider> provider3, Provider<SessionStorage> provider4, Provider<NetworkInfoProvider> provider5, Provider<MemoryCache> provider6, Provider<ActionHandlerRegistry> provider7, Provider<ScheduledExecutorService> provider8, Provider<Context> provider9, Provider<AuthenticationProvider> provider10, Provider<ApplicationConfiguration> provider11, Provider<PushRegistrationProvider> provider12) {
        return new ZendeskProvidersModule_ProvideCoreSdkModuleFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12);
    }

    public static CoreModule provideCoreSdkModule(SettingsProvider settingsProvider, RestServiceProvider restServiceProvider, BlipsProvider blipsProvider, SessionStorage sessionStorage, NetworkInfoProvider networkInfoProvider, MemoryCache memoryCache, ActionHandlerRegistry actionHandlerRegistry, ScheduledExecutorService scheduledExecutorService, Context context, AuthenticationProvider authenticationProvider, ApplicationConfiguration applicationConfiguration, PushRegistrationProvider pushRegistrationProvider) {
        CoreModule provideCoreSdkModule = ZendeskProvidersModule.provideCoreSdkModule(settingsProvider, restServiceProvider, blipsProvider, sessionStorage, networkInfoProvider, memoryCache, actionHandlerRegistry, scheduledExecutorService, context, authenticationProvider, applicationConfiguration, pushRegistrationProvider);
        C10867c.m10383a(provideCoreSdkModule, "Cannot return null from a non-@Nullable @Provides method");
        return provideCoreSdkModule;
    }

    @Override // javax.inject.Provider
    public CoreModule get() {
        return provideCoreSdkModule(this.settingsProvider.get(), this.restServiceProvider.get(), this.blipsProvider.get(), this.sessionStorageProvider.get(), this.networkInfoProvider.get(), this.memoryCacheProvider.get(), this.actionHandlerRegistryProvider.get(), this.executorProvider.get(), this.contextProvider.get(), this.authenticationProvider.get(), this.zendeskConfigurationProvider.get(), this.pushRegistrationProvider.get());
    }
}
