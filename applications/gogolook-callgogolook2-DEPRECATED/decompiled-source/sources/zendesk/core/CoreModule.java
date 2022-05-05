package zendesk.core;

import android.content.Context;
import androidx.annotation.RestrictTo;
import java.util.concurrent.ScheduledExecutorService;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule.class */
public class CoreModule {
    public final ActionHandlerRegistry actionHandlerRegistry;
    public final Context applicationContext;
    public final AuthenticationProvider authenticationProvider;
    public final BlipsProvider blipsProvider;
    public final MemoryCache memoryCache;
    public final RestServiceProvider restServiceProvider;
    public final SessionStorage sessionStorage;
    public final SettingsProvider settingsProvider;

    public CoreModule(SettingsProvider settingsProvider, RestServiceProvider restServiceProvider, BlipsProvider blipsProvider, SessionStorage sessionStorage, NetworkInfoProvider networkInfoProvider, Context context, ActionHandlerRegistry actionHandlerRegistry, MemoryCache memoryCache, ScheduledExecutorService scheduledExecutorService, AuthenticationProvider authenticationProvider, ApplicationConfiguration applicationConfiguration, PushRegistrationProvider pushRegistrationProvider) {
        this.settingsProvider = settingsProvider;
        this.restServiceProvider = restServiceProvider;
        this.blipsProvider = blipsProvider;
        this.sessionStorage = sessionStorage;
        this.applicationContext = context;
        this.actionHandlerRegistry = actionHandlerRegistry;
        this.memoryCache = memoryCache;
        this.authenticationProvider = authenticationProvider;
    }

    public ActionHandlerRegistry actionHandlerRegistry() {
        return this.actionHandlerRegistry;
    }

    public Context getApplicationContext() {
        return this.applicationContext;
    }

    public AuthenticationProvider getAuthenticationProvider() {
        return this.authenticationProvider;
    }

    public BlipsProvider getBlipsProvider() {
        return this.blipsProvider;
    }

    public MemoryCache getMemoryCache() {
        return this.memoryCache;
    }

    public RestServiceProvider getRestServiceProvider() {
        return this.restServiceProvider;
    }

    public SessionStorage getSessionStorage() {
        return this.sessionStorage;
    }

    public SettingsProvider getSettingsProvider() {
        return this.settingsProvider;
    }
}
