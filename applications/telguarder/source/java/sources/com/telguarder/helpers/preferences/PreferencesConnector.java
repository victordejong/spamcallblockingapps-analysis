package com.telguarder.helpers.preferences;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceManager;
import com.facebook.internal.logging.monitor.MonitorLogServerProtocol;
import com.telguarder.ApplicationObject;
import com.telguarder.helpers.analytics.AnalyticsManager;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/preferences/PreferencesConnector.class */
public class PreferencesConnector {
    private static PreferencesConnector mInstance;
    private final SharedPreferences.Editor editor;
    private final String filename_telGuarder = "com.telguarder.PREFERENCES";
    private final SharedPreferences prefs;

    private PreferencesConnector(Context context) {
        SharedPreferences sharedPreferences;
        try {
            sharedPreferences = context.getSharedPreferences("com.telguarder.PREFERENCES", 0);
        } catch (Exception e) {
            sharedPreferences = null;
        }
        SharedPreferences sharedPreferences2 = sharedPreferences;
        if (sharedPreferences == null) {
            AnalyticsManager.getInstance().sendPreferencesFileOpenError("com.telguarder.PREFERENCES");
            try {
                sharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(context);
            } catch (Exception e2) {
                AnalyticsManager.getInstance().sendPreferencesFileOpenError(MonitorLogServerProtocol.DEFAULT_SAMPLE_RATES_KEY);
                sharedPreferences2 = sharedPreferences;
            }
        }
        if (sharedPreferences2 != null) {
            this.prefs = sharedPreferences2;
            this.editor = sharedPreferences2.edit();
            return;
        }
        this.editor = null;
        this.prefs = null;
        AnalyticsManager.getInstance().sendPreferencesFileOpenError("all");
    }

    public static PreferencesConnector getInstance() {
        if (mInstance == null) {
            mInstance = new PreferencesConnector(ApplicationObject.getContext());
        }
        return mInstance;
    }

    public void clearAll() {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError("clear_all");
            return;
        }
        editor.clear();
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError("clear_all");
    }

    public boolean contains(String str) {
        SharedPreferences sharedPreferences = this.prefs;
        return sharedPreferences != null && sharedPreferences.contains(str);
    }

    public boolean getBoolean(String str, boolean z) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getBoolean(str, z);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return z;
    }

    public double getDouble(String str, double d) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToLongBits(d)));
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return Double.doubleToLongBits(d);
    }

    public float getFloat(String str, float f) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getFloat(str, f);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return f;
    }

    public int getInt(String str, int i) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getInt(str, i);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return i;
    }

    public long getLong(String str, long j) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getLong(str, j);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return j;
    }

    public String getString(String str, String str2) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getString(str, str2);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return str2;
    }

    public Set<String> getStringList(String str) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getStringSet(str, null);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return null;
    }

    public Set<String> getStringList(String str, Set<String> set) {
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            return sharedPreferences.getStringSet(str, set);
        }
        AnalyticsManager.getInstance().sendPreferencesGetError(str);
        return set;
    }

    public void removeValue(String str) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesRemoveError(str);
            return;
        }
        editor.remove(str);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesRemoveError(str);
    }

    public void saveBoolean(String str, boolean z) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putBoolean(str, z);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveDouble(String str, double d) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putLong(str, Double.doubleToRawLongBits(d));
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveFloat(String str, float f) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putFloat(str, f);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveInt(String str, int i) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putInt(str, i);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveLong(String str, long j) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putLong(str, j);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveString(String str, String str2) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putString(str, str2);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }

    public void saveStringList(String str, Set<String> set) {
        SharedPreferences.Editor editor = this.editor;
        if (editor == null) {
            AnalyticsManager.getInstance().sendPreferencesCommitError(str);
            return;
        }
        editor.putStringSet(str, set);
        if (this.editor.commit()) {
            return;
        }
        AnalyticsManager.getInstance().sendPreferencesCommitError(str);
    }
}
