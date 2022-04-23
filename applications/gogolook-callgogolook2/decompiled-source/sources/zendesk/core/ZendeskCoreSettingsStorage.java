package zendesk.core;

import androidx.annotation.NonNull;
import java.util.Date;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskCoreSettingsStorage.class */
public class ZendeskCoreSettingsStorage implements CoreSettingsStorage {
    public final SettingsStorage settingsStorage;
    public static final CoreSettings DEFAULT_CORE_SETTINGS = new CoreSettings(new Date(0), null);
    public static final BlipsSettings DEFAULT_BLIPS_SETTINGS = new BlipsSettings(new BlipsPermissions());

    public ZendeskCoreSettingsStorage(SettingsStorage settingsStorage) {
        this.settingsStorage = settingsStorage;
    }

    @Override // zendesk.core.CoreSettingsStorage
    @NonNull
    public BlipsSettings getBlipsSettings() {
        BlipsSettings blipsSettings = (BlipsSettings) this.settingsStorage.getSettings("blips", BlipsSettings.class);
        if (blipsSettings != null) {
            return blipsSettings;
        }
        C10845a.m10422a("ZendeskCoreSettingsStorage", "Unable to load blips settings, returning defaults.", new Object[0]);
        return DEFAULT_BLIPS_SETTINGS;
    }

    @Override // zendesk.core.CoreSettingsStorage
    @NonNull
    public CoreSettings getCoreSettings() {
        CoreSettings coreSettings = (CoreSettings) this.settingsStorage.getSettings("core", CoreSettings.class);
        if (coreSettings != null) {
            return coreSettings;
        }
        C10845a.m10422a("ZendeskCoreSettingsStorage", "Unable to load Core SDK Settings, returning default settings.", new Object[0]);
        return DEFAULT_CORE_SETTINGS;
    }
}
