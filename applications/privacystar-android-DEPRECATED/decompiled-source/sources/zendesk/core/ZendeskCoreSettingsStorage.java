package zendesk.core;

import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskCoreSettingsStorage.class */
class ZendeskCoreSettingsStorage implements CoreSettingsStorage {
    static final String BLIPS_KEY = "blips";
    static final String CORE_KEY = "core";
    private static final String LOG_TAG = "ZendeskCoreSettingsStorage";
    private final SettingsStorage settingsStorage;
    static final CoreSettings DEFAULT_CORE_SETTINGS = new CoreSettings(new Date(0), null);
    static final BlipsSettings DEFAULT_BLIPS_SETTINGS = new BlipsSettings(new BlipsPermissions());

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskCoreSettingsStorage(SettingsStorage settingsStorage) {
        this.settingsStorage = settingsStorage;
    }

    @Override // zendesk.core.CoreSettingsStorage
    @NonNull
    public BlipsSettings getBlipsSettings() {
        BlipsSettings blipsSettings = (BlipsSettings) this.settingsStorage.getSettings(BLIPS_KEY, BlipsSettings.class);
        if (blipsSettings != null) {
            return blipsSettings;
        }
        Logger.m298d(LOG_TAG, "Unable to load blips settings, returning defaults.", new Object[0]);
        return DEFAULT_BLIPS_SETTINGS;
    }

    @Override // zendesk.core.CoreSettingsStorage
    @NonNull
    public CoreSettings getCoreSettings() {
        CoreSettings coreSettings = (CoreSettings) this.settingsStorage.getSettings(CORE_KEY, CoreSettings.class);
        if (coreSettings != null) {
            return coreSettings;
        }
        Logger.m298d(LOG_TAG, "Unable to load Core SDK Settings, returning default settings.", new Object[0]);
        return DEFAULT_CORE_SETTINGS;
    }
}
