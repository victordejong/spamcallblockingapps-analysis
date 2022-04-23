package com.apptentive.android.sdk.migration.v4_0_0;

import android.content.SharedPreferences;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore.class */
public class VersionHistoryStore {
    private static List<VersionHistoryEntry> versionHistoryEntries;

    /* renamed from: com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryStore$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStore$1.class */
    static /* synthetic */ class C07761 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$migration$v4_0_0$VersionHistoryStore$Selector */
        static final /* synthetic */ int[] f63xff2048cc = new int[Selector.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f63xff2048cc[Selector.total.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63xff2048cc[Selector.version_code.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f63xff2048cc[Selector.version_name.ordinal()] = 3;
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

    public static void clear() {
        synchronized (VersionHistoryStore.class) {
            try {
                ApptentiveInternal.getInstance().getGlobalSharedPrefs().edit().remove(Constants.PREF_KEY_VERSION_HISTORY_V2).apply();
                versionHistoryEntries.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void ensureLoaded() {
        if (versionHistoryEntries == null) {
            versionHistoryEntries = new ArrayList();
            SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
            if (globalSharedPrefs != null) {
                try {
                    JSONArray jSONArray = new JSONArray(globalSharedPrefs.getString(Constants.PREF_KEY_VERSION_HISTORY_V2, "[]"));
                    for (int i = 0; i < jSONArray.length(); i++) {
                        versionHistoryEntries.add(new VersionHistoryEntry(jSONArray.getJSONObject(i)));
                    }
                } catch (Exception e) {
                    ApptentiveLog.m398w(ApptentiveLogTag.CONVERSATION, e, "Error loading VersionHistoryStore.", new Object[0]);
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

    public static VersionHistoryEntry getLastVersionSeen() {
        synchronized (VersionHistoryStore.class) {
            try {
                ensureLoaded();
                if (versionHistoryEntries == null || versionHistoryEntries.isEmpty()) {
                    return null;
                }
                return versionHistoryEntries.get(versionHistoryEntries.size() - 1);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Apptentive.DateTime getTimeAtInstall(Selector selector) {
        synchronized (VersionHistoryStore.class) {
            try {
                ensureLoaded();
                for (VersionHistoryEntry versionHistoryEntry : versionHistoryEntries) {
                    switch (C07761.f63xff2048cc[selector.ordinal()]) {
                        case 1:
                            return new Apptentive.DateTime(versionHistoryEntry.getTimestamp().doubleValue());
                        case 2:
                            if (versionHistoryEntry.getVersionCode() != RuntimeUtils.getAppVersionCode(ApptentiveInternal.getInstance().getApplicationContext())) {
                                break;
                            } else {
                                return new Apptentive.DateTime(versionHistoryEntry.getTimestamp().doubleValue());
                            }
                        case 3:
                            Apptentive.Version version = new Apptentive.Version();
                            Apptentive.Version version2 = new Apptentive.Version();
                            version.setVersion(versionHistoryEntry.getVersionName());
                            version2.setVersion(RuntimeUtils.getAppVersionName(ApptentiveInternal.getInstance().getApplicationContext()));
                            if (!version.equals(version2)) {
                                break;
                            } else {
                                return new Apptentive.DateTime(versionHistoryEntry.getTimestamp().doubleValue());
                            }
                    }
                }
                return new Apptentive.DateTime(Util.currentTimeSeconds());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isUpdate(Selector selector) {
        boolean z;
        synchronized (VersionHistoryStore.class) {
            try {
                ensureLoaded();
                HashSet hashSet = new HashSet();
                for (VersionHistoryEntry versionHistoryEntry : versionHistoryEntries) {
                    switch (C07761.f63xff2048cc[selector.ordinal()]) {
                        case 2:
                            hashSet.add(String.valueOf(versionHistoryEntry.getVersionCode()));
                            break;
                        case 3:
                            hashSet.add(versionHistoryEntry.getVersionName());
                            break;
                    }
                }
                z = true;
                if (hashSet.size() <= 1) {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private static void save() {
        SharedPreferences globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs();
        JSONArray baseArray = getBaseArray();
        if (baseArray != null) {
            globalSharedPrefs.edit().putString(Constants.PREF_KEY_VERSION_HISTORY_V2, baseArray.toString()).apply();
        }
    }

    public static void updateVersionHistory(int i, String str) {
        synchronized (VersionHistoryStore.class) {
            try {
                updateVersionHistory(Integer.valueOf(i), str, Util.currentTimeSeconds());
            } catch (Throwable th) {
                throw th;
            }
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
                        ApptentiveLog.m403v(ApptentiveLogTag.CONVERSATION, "Adding Version History entry: %s", new VersionHistoryEntry(num, str, Double.valueOf(d)));
                        versionHistoryEntries.add(new VersionHistoryEntry(num, str, Double.valueOf(d)));
                        save();
                    }
                } catch (Exception e) {
                    ApptentiveLog.m398w(ApptentiveLogTag.CONVERSATION, e, "Error updating VersionHistoryStore.", new Object[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
