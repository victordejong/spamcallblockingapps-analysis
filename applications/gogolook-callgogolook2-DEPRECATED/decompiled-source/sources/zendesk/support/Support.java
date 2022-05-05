package zendesk.support;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import javax.inject.Inject;
import p081h.p451q.p453b.C10845a;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.AuthenticationProvider;
import zendesk.core.CoreModule;
import zendesk.core.Zendesk;
import zendesk.support.ApplicationScope;
import zendesk.support.DaggerSupportSdkProvidersComponent;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Support.class */
public enum Support {
    INSTANCE;
    
    @Inject
    public ActionHandlerRegistry actionHandlerRegistry;
    @Inject
    public AuthenticationProvider authenticationProvider;
    @Inject
    public SupportBlipsProvider blipsProvider;
    public boolean initialised;
    @Inject
    public ProviderStore providerStore;
    @Inject
    public RequestMigrator requestMigrator;
    @Inject
    public RequestProvider requestProvider;
    @Inject
    public SupportModule supportModule;

    public void init(@NonNull Zendesk zendesk2) {
        if (zendesk2.isInitialized()) {
            ApplicationScope.Builder builder = new ApplicationScope.Builder();
            builder.zendeskTracker(new AnswersTracker());
            initApplicationScope(zendesk2.coreModule(), builder.build());
            this.initialised = true;
            return;
        }
        C10845a.m10419b("ZendeskConfiguration", "Cannot use SupportSDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...)", new Object[0]);
    }

    public final void initApplicationScope(CoreModule coreModule, ApplicationScope applicationScope) {
        DaggerSupportSdkProvidersComponent.Builder builder = DaggerSupportSdkProvidersComponent.builder();
        builder.coreModule(coreModule);
        builder.providerModule(new ProviderModule());
        builder.storageModule(new StorageModule());
        builder.supportApplicationModule(new SupportApplicationModule(applicationScope));
        builder.build().inject(this);
    }

    public boolean isAuthenticated() {
        AuthenticationProvider authenticationProvider = this.authenticationProvider;
        return (authenticationProvider == null || authenticationProvider.getIdentity() == null) ? false : true;
    }

    public boolean isInitialized() {
        return this.initialised;
    }

    @Nullable
    public ProviderStore provider() {
        if (!isInitialized()) {
            C10845a.m10419b("ZendeskConfiguration", "Cannot get ProviderStore before SDK has been initialized. init() must be called before provider().", new Object[0]);
            return null;
        } else if (isAuthenticated()) {
            return this.providerStore;
        } else {
            C10845a.m10419b("ZendeskConfiguration", "Cannot get ProviderStore before an identity has been set. Zendesk.INSTANCE.setIdentity() must be called before provider().", new Object[0]);
            return null;
        }
    }
}
