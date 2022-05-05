package zendesk.core;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Zendesk.class */
public enum Zendesk {
    INSTANCE;
    
    private static final String LOG_TAG = "Zendesk";
    private ActionHandlerRegistry actionHandlerRegistry = new ZendeskActionHandlerRegistry();
    private ZendeskShadow zendeskShadow;

    Zendesk() {
    }

    @VisibleForTesting
    static boolean checkConfig(Context context, String str, String str2, String str3) {
        if (context != null && StringUtils.hasLengthMany(str, str2, str3)) {
            return true;
        }
        Logger.m295e(LOG_TAG, String.format("Invalid zendesk configuration provided | Context: %b | Url: %b | Application Id: %b | OauthClientId: %b", context, Boolean.valueOf(StringUtils.hasLength(str)), Boolean.valueOf(StringUtils.hasLength(str2)), Boolean.valueOf(StringUtils.hasLength(str3))), new Object[0]);
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ActionHandlerRegistry actionHandlerRegistry() {
        return this.actionHandlerRegistry;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public CoreModule coreModule() {
        return this.zendeskShadow.coreModule();
    }

    @Nullable
    public Identity getIdentity() {
        if (!isInitialized()) {
            return null;
        }
        return this.zendeskShadow.getIdentity();
    }

    public void init(@NonNull Context context, @NonNull String str, @NonNull String str2, String str3) {
        checkConfig(context, str, str2, str3);
        ApplicationConfiguration applicationConfiguration = new ApplicationConfiguration(str2, str, str3);
        init(DaggerZendeskApplicationComponent.builder().zendeskApplicationModule(new ZendeskApplicationModule(context, applicationConfiguration)).build(), applicationConfiguration);
    }

    @VisibleForTesting
    void init(ZendeskApplicationComponent zendeskApplicationComponent, ApplicationConfiguration applicationConfiguration) {
        boolean z = this.zendeskShadow != null;
        if (z) {
            this.zendeskShadow.cleanupIfNewConfig(applicationConfiguration);
        }
        ZendeskShadow zendeskShadow = zendeskApplicationComponent.zendeskShadow();
        zendeskShadow.init(applicationConfiguration, z);
        this.zendeskShadow = zendeskShadow;
    }

    public boolean isInitialized() {
        return this.zendeskShadow != null;
    }

    @Nullable
    public ProviderStore provider() {
        if (!isInitialized()) {
            Logger.m295e(LOG_TAG, "Cannot get ProviderStore before SDK has been initialized. init() must be called before provider().", new Object[0]);
            return null;
        } else if (getIdentity() != null) {
            return this.zendeskShadow.providers();
        } else {
            Logger.m295e(LOG_TAG, "Cannot get ProviderStore before an identity has been set. Zendesk.INSTANCE.setIdentity() must be called before provider().", new Object[0]);
            return null;
        }
    }

    @VisibleForTesting
    void reset() {
        if (isInitialized()) {
            this.zendeskShadow.reset();
            this.zendeskShadow = null;
            Logger.m293i(LOG_TAG, "Tearing down Zendesk", new Object[0]);
            return;
        }
        Logger.m293i(LOG_TAG, "Cant reset, Zendesk is uninitialized", new Object[0]);
    }

    public void setIdentity(@NonNull Identity identity) {
        if (!isInitialized()) {
            Logger.m295e(LOG_TAG, "Cannot get set identity before SDK has been initialized. init() must be called before setIdentity(...).", new Object[0]);
        } else {
            this.zendeskShadow.setIdentity(identity);
        }
    }
}
