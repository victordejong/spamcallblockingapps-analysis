package zendesk.core;

import android.content.Context;
import android.support.annotation.RestrictTo;
import dagger.Module;
import dagger.Provides;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
@Module
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule.class */
public class CoreModule {
    private final ActionHandlerRegistry actionHandlerRegistry;
    private final ApplicationConfiguration applicationConfiguration;
    private final Context applicationContext;
    private final AuthenticationProvider authenticationProvider;
    private final BlipsProvider blipsProvider;
    private final ExecutorService executor;
    private final MemoryCache memoryCache;
    private final NetworkInfoProvider networkInfoProvider;
    private final PushRegistrationProvider pushRegistrationProvider;
    private final RestServiceProvider restServiceProvider;
    private final SessionStorage sessionStorage;
    private final SettingsProvider settingsProvider;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CoreModule(SettingsProvider settingsProvider, RestServiceProvider restServiceProvider, BlipsProvider blipsProvider, SessionStorage sessionStorage, NetworkInfoProvider networkInfoProvider, Context context, ActionHandlerRegistry actionHandlerRegistry, MemoryCache memoryCache, ExecutorService executorService, AuthenticationProvider authenticationProvider, ApplicationConfiguration applicationConfiguration, PushRegistrationProvider pushRegistrationProvider) {
        this.settingsProvider = settingsProvider;
        this.restServiceProvider = restServiceProvider;
        this.blipsProvider = blipsProvider;
        this.sessionStorage = sessionStorage;
        this.networkInfoProvider = networkInfoProvider;
        this.applicationContext = context;
        this.actionHandlerRegistry = actionHandlerRegistry;
        this.memoryCache = memoryCache;
        this.executor = executorService;
        this.authenticationProvider = authenticationProvider;
        this.applicationConfiguration = applicationConfiguration;
        this.pushRegistrationProvider = pushRegistrationProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public ActionHandlerRegistry actionHandlerRegistry() {
        return this.actionHandlerRegistry;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public ApplicationConfiguration getApplicationConfiguration() {
        return this.applicationConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public Context getApplicationContext() {
        return this.applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public AuthenticationProvider getAuthenticationProvider() {
        return this.authenticationProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public BlipsProvider getBlipsProvider() {
        return this.blipsProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public Executor getExecutor() {
        return this.executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public ExecutorService getExecutorService() {
        return this.executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public MemoryCache getMemoryCache() {
        return this.memoryCache;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public NetworkInfoProvider getNetworkInfoProvider() {
        return this.networkInfoProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public PushRegistrationProvider getPushRegistrationProvider() {
        return this.pushRegistrationProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public RestServiceProvider getRestServiceProvider() {
        return this.restServiceProvider;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public SessionStorage getSessionStorage() {
        return this.sessionStorage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Provides
    public SettingsProvider getSettingsProvider() {
        return this.settingsProvider;
    }
}
