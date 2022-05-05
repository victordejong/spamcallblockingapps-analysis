package zendesk.core;

import androidx.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreSettingsStorage.class */
public interface CoreSettingsStorage {
    @NonNull
    BlipsSettings getBlipsSettings();

    @NonNull
    CoreSettings getCoreSettings();
}
