package zendesk.belvedere;

import android.content.Context;
import android.content.SharedPreferences;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/PermissionStorage.class */
public class PermissionStorage {
    private static final String BELVEDERE_SHARED_PREFERENCES = "belvedere_prefs";
    private final SharedPreferences sharedPreferences;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PermissionStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences(BELVEDERE_SHARED_PREFERENCES, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void neverEverAskForThatPermissionAgain(String str) {
        this.sharedPreferences.edit().putBoolean(str, true).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldINeverEverAskForThatPermissionAgain(String str) {
        return this.sharedPreferences.contains(str);
    }
}
