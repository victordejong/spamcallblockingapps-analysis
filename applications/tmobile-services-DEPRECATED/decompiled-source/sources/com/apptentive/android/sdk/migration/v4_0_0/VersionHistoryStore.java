package com.apptentive.android.sdk.migration.v4_0_0;

import android.content.SharedPreferences;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore.class */
public class VersionHistoryStore {
    private static List<VersionHistoryEntry> versionHistoryEntries;

    /* renamed from: com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryStore$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1.class */
    static /* synthetic */ class C07781 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector */
        static final /* synthetic */ int[] f6447xff2048cc;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Selector.values().length];
            f6447xff2048cc = iArr;
            try {
                iArr[Selector.total.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6447xff2048cc[Selector.version_code.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6447xff2048cc[Selector.version_name.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$Selector.class */
    public enum Selector {
        total,
        version_code,
        version_name,
        other;

        public static Selector parse(String str) {
            try {
                return valueOf(str);
            } catch (IllegalArgumentException e) {
                return other;
            }
        }
    }

    static {
        VersionHistoryStoreMigrator.performMigrationIfNeeded();
    }

    private VersionHistoryStore() {
    }

    private static void ensureLoaded() {
        if (versionHistoryEntries == null) {
            versionHistoryEntries = new ArrayList();
            SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
            if (globalSharedPrefs != null) {
                try {
                    JSONArray jSONArray = new JSONArray(globalSharedPrefs.getString("versionHistoryV2", HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
                    for (int i = 0; i < jSONArray.length(); i++) {
                        versionHistoryEntries.add(new VersionHistoryEntry(jSONArray.getJSONObject(i)));
                    }
                } catch (Exception e) {
                    ApptentiveLog.m15634w(ApptentiveLogTag.CONVERSATION, e, "Error loading VersionHistoryStore.", new Object[0]);
                    ErrorMetrics.logException(e);
                }
            }
        }
    }

    public static JSONArray getBaseArray() {
        ensureLoaded();
        JSONArray jSONArray = new JSONArray();
        for (VersionHistoryEntry versionHistoryEntry : versionHistoryEntries) {
            jSONArray.put(versionHistoryEntry);
        }
        return jSONArray;
    }

    private static void save() {
        SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
        JSONArray baseArray = getBaseArray();
        if (baseArray != null) {
            globalSharedPrefs.edit().putString("versionHistoryV2", baseArray.toString()).apply();
        }
    }

    public static void updateVersionHistory(Integer num, String str, double d) {
        synchronized (VersionHistoryStore.class) {
            try {
                ensureLoaded();
                try {
                    boolean z = false;
                    for (VersionHistoryEntry versionHistoryEntry : versionHistoryEntries) {
                        if (versionHistoryEntry.getVersionCode() == num.intValue() && versionHistoryEntry.getVersionName().equals(str)) {
                            z = true;
                        }
                    }
                    if (!z) {
                        ApptentiveLog.m15638v(ApptentiveLogTag.CONVERSATION, "Adding Version History entry: %s", new VersionHistoryEntry(num, str, Double.valueOf(d)));
                        versionHistoryEntries.add(new VersionHistoryEntry(num, str, Double.valueOf(d)));
                        save();
                    }
                } catch (Exception e) {
                    ApptentiveLog.m15634w(ApptentiveLogTag.CONVERSATION, e, "Error updating VersionHistoryStore.", new Object[0]);
                    ErrorMetrics.logException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
