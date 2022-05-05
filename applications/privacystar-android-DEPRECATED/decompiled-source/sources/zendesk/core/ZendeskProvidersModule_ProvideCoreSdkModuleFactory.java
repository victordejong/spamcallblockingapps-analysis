package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvideCoreSdkModuleFactory.class */
public final class ZendeskProvidersModule_ProvideCoreSdkModuleFactory implements Factory<CoreModule> {
    private final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private final Provider<AuthenticationProvider> authenticationProvider;
    private final Provider<BlipsProvider> blipsProvider;
    private final Provider<Context> contextProvider;
    private final Provider<ExecutorService> executorProvider;
    private final Provider<MemoryCache> memoryCacheProvider;
    private final Provider<NetworkInfoProvider> networkInfoProvider;
    private final Provider<PushRegistrationProvider> pushRegistrationProvider;
    private final Provider<RestServiceProvider> restServiceProvider;
    private final Provider<SessionStorage> sessionStorageProvider;
    private final Provider<SettingsProvider> settingsProvider;
    private final Provider<ApplicationConfiguration> zendeskConfigurationProvider;

    public ZendeskProvidersModule_ProvideCoreSdkModuleFactory(Provider<SettingsProvider> provider, Provider<RestServiceProvider> provider2, Provider<BlipsProvider> provider3, Provider<SessionStorage> provider4, Provider<NetworkInfoProvider> provider5, Provider<MemoryCache> provider6, Provider<ActionHandlerRegistry> provider7, Provider<ExecutorService> provider8, Provider<Context> provider9, Provider<AuthenticationProvider> provider10, Provider<ApplicationConfiguration> provider11, Provider<PushRegistrationProvider> provider12) {
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

    public static Factory<CoreModule> create(Provider<SettingsProvider> provider, Provider<RestServiceProvider> provider2, Provider<BlipsProvider> provider3, Provider<SessionStorage> provider4, Provider<NetworkInfoProvider> provider5, Provider<MemoryCache> provider6, Provider<ActionHandlerRegistry> provider7, Provider<ExecutorService> provider8, Provider<Context> provider9, Provider<AuthenticationProvider> provider10, Provider<ApplicationConfiguration> provider11, Provider<PushRegistrationProvider> provider12) {
        return new ZendeskProvidersModule_ProvideCoreSdkModuleFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12);
    }

    public static CoreModule proxyProvideCoreSdkModule(SettingsProvider settingsProvider, RestServiceProvider restServiceProvider, BlipsProvider blipsProvider, SessionStorage sessionStorage, NetworkInfoProvider networkInfoProvider, MemoryCache memoryCache, ActionHandlerRegistry actionHandlerRegistry, ExecutorService executorService, Context context, AuthenticationProvider authenticationProvider, ApplicationConfiguration applicationConfiguration, PushRegistrationProvider pushRegistrationProvider) {
        return ZendeskProvidersModule.provideCoreSdkModule(settingsProvider, restServiceProvider, blipsProvider, sessionStorage, networkInfoProvider, memoryCache, actionHandlerRegistry, executorService, context, authenticationProvider, applicationConfiguration, pushRegistrationProvider);
    }

    @Override // javax.inject.Provider
    public CoreModule get() {
        return (CoreModule) Preconditions.checkNotNull(ZendeskProvidersModule.provideCoreSdkModule(this.settingsProvider.get(), this.restServiceProvider.get(), this.blipsProvider.get(), this.sessionStorageProvider.get(), this.networkInfoProvider.get(), this.memoryCacheProvider.get(), this.actionHandlerRegistryProvider.get(), this.executorProvider.get(), this.contextProvider.get(), this.authenticationProvider.get(), this.zendeskConfigurationProvider.get(), this.pushRegistrationProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
