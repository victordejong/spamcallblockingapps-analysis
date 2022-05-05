package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import zendesk.core.Settings;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsPack.class */
public class SettingsPack<E extends Settings> {
    private CoreSettings coreSettings;
    private E settings;

    /* JADX INFO: Access modifiers changed from: package-private */
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
