package com.apptentive.android.sdk.migration.v4_0_0;

import android.content.SharedPreferences;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/v4_0_0/VersionHistoryStoreMigrator.class */
public class VersionHistoryStoreMigrator {
    private static boolean migrated_to_v2;

    private static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    public static void migrateV1ToV2(String str) {
        String[] split;
        ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "Migrating VersionHistoryStore V1 to V2.", new Object[0]);
        ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "V1: %s", str);
        try {
            for (String str2 : str.split("__")) {
                String[] split2 = str2.split(HelpFormatter.DEFAULT_LONG_OPT_PREFIX);
                try {
                    VersionHistoryStore.updateVersionHistory(Integer.valueOf(Integer.parseInt(split2[1])), split2[2], Double.parseDouble(split2[0]));
                } catch (Exception e) {
                    ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Error migrating old version history entry: %s", str2);
                    logException(e);
                }
            }
            ApptentiveLog.m15640i(ApptentiveLogTag.CONVERSATION, "V2: %s", VersionHistoryStore.getBaseArray().toString());
        } catch (Exception e2) {
            ApptentiveLog.m15635w(ApptentiveLogTag.CONVERSATION, "Error migrating old version history entries: %s", str);
            logException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void performMigrationIfNeeded() {
        performMigrationIfNeededV1ToV2();
    }

    private static void performMigrationIfNeededV1ToV2() {
        SharedPreferences globalSharedPrefs;
        if (!migrated_to_v2 && ApptentiveInternal.isApptentiveRegistered() && (globalSharedPrefs = ApptentiveInternal.getInstance().getGlobalSharedPrefs()) != null) {
            boolean z = globalSharedPrefs.getBoolean("versionHistoryV2Migrated", false);
            migrated_to_v2 = z;
            if (!z) {
                migrateV1ToV2(globalSharedPrefs.getString("versionHistory", null));
                globalSharedPrefs.edit().putBoolean("versionHistoryV2Migrated", true).apply();
            }
        }
    }
}
