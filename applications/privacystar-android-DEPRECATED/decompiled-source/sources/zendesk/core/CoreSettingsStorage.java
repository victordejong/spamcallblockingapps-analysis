package zendesk.core;

import android.support.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreSettingsStorage.class */
public interface CoreSettingsStorage {
    @NonNull
    BlipsSettings getBlipsSettings();

    @NonNull
    CoreSettings getCoreSettings();
}
