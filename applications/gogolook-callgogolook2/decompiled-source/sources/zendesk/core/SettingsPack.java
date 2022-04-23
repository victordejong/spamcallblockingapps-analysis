package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import zendesk.core.Settings;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsPack.class */
public class SettingsPack<E extends Settings> {
    public CoreSettings coreSettings;
    public E settings;

    public SettingsPack(@NonNull CoreSettings coreSettings, @Nullable E e) {
        this.coreSettings = coreSettings;
        this.settings = e;
    }

    @NonNull
    public CoreSettings getCoreSettings() {
        return this.coreSettings;
    }

    @Nullable
    public E getSettings() {
        return this.settings;
    }
}
