package com.apptentive.android.sdk.migration.v4_0_0;

import android.content.SharedPreferences;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.Constants;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator.class */
public class VersionHistoryStoreMigrator {
    private static final String OLD_ENTRY_SEP = "__";
    private static final String OLD_FIELD_SEP = "--";
    private static final int OLD_POSITION_TIMESTAMP = 0;
    private static final int OLD_POSITION_VERSION_CODE = 1;
    private static final int OLD_POSITION_VERSION_NAME = 2;
    private static boolean migrated_to_v2;

    public static void migrateV1ToV2(String str) {
        String[] split;
        ApptentiveLog.m407i(ApptentiveLogTag.CONVERSATION, "Migrating VersionHistoryStore V1 to V2.", new Object[0]);
        ApptentiveLog.m407i(ApptentiveLogTag.CONVERSATION, "V1: %s", str);
        try {
            for (String str2 : str.split(OLD_ENTRY_SEP)) {
                String[] split2 = str2.split("--");
                try {
                    VersionHistoryStore.updateVersionHistory(Integer.valueOf(Integer.parseInt(split2[1])), split2[2], Double.parseDouble(split2[0]));
                } catch (Exception e) {
                    ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error migrating old version history entry: %s", str2);
                }
            }
            ApptentiveLog.m407i(ApptentiveLogTag.CONVERSATION, "V2: %s", VersionHistoryStore.getBaseArray().toString());
        } catch (Exception e2) {
            ApptentiveLog.m399w(ApptentiveLogTag.CONVERSATION, "Error migrating old version history entries: %s", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void performMigrationIfNeeded() {
        performMigrationIfNeededV1ToV2();
    }

    private static void performMigrationIfNeededV1ToV2() {
        SharedPreferences globalSharedPrefs;
        if (!migrated_to_v2 && ApptentiveInternal.isApptentiveRegistered() && (globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs()) != null) {
            migrated_to_v2 = globalSharedPrefs.getBoolean(Constants.PREF_KEY_VERSION_HISTORY_V2_MIGRATED, false);
            if (!migrated_to_v2) {
                migrateV1ToV2(globalSharedPrefs.getString(Constants.PREF_KEY_VERSION_HISTORY, null));
                globalSharedPrefs.edit().putBoolean(Constants.PREF_KEY_VERSION_HISTORY_V2_MIGRATED, true).apply();
            }
        }
    }
}
