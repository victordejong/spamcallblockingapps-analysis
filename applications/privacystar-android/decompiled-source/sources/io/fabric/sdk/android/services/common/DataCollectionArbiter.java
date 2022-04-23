package io.fabric.sdk.android.services.common;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/DataCollectionArbiter.class */
public class DataCollectionArbiter {
    private static final String FIREBASE_CRASHLYTICS_COLLECTION_ENABLED = "firebase_crashlytics_collection_enabled";
    private static final String FIREBASE_CRASHLYTICS_PREFS = "com.google.firebase.crashlytics.prefs";
    private static DataCollectionArbiter instance;
    private static Object instanceLock = new Object();
    private volatile boolean crashlyticsDataCollectionEnabled;
    private volatile boolean crashlyticsDataCollectionExplicitlySet;
    private final FirebaseApp firebaseApp;
    private boolean isUnity;
    private final SharedPreferences sharedPreferences;

    /* JADX WARN: Removed duplicated region for block: B:24:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private DataCollectionArbiter(android.content.Context r6) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = 0
            r7 = r0
            r0 = r5
            r1 = 0
            r0.isUnity = r1
            r0 = r6
            if (r0 != 0) goto L_0x0019
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            java.lang.String r2 = "null context"
            r1.<init>(r2)
            throw r0
        L_0x0019:
            r0 = r5
            r1 = r6
            java.lang.String r2 = "com.google.firebase.crashlytics.prefs"
            r3 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r2, r3)
            r0.sharedPreferences = r1
            r0 = r5
            r1 = r6
            io.fabric.sdk.android.services.common.FirebaseApp r1 = io.fabric.sdk.android.services.common.FirebaseAppImpl.getInstance(r1)
            r0.firebaseApp = r1
            r0 = r5
            android.content.SharedPreferences r0 = r0.sharedPreferences
            java.lang.String r1 = "firebase_crashlytics_collection_enabled"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0053
            r0 = r5
            android.content.SharedPreferences r0 = r0.sharedPreferences
            java.lang.String r1 = "firebase_crashlytics_collection_enabled"
            r2 = 1
            boolean r0 = r0.getBoolean(r1, r2)
            r8 = r0
        L_0x0047:
            r0 = 1
            r9 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            r8 = r0
            goto L_0x00a9
        L_0x0053:
            r0 = r6
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: NameNotFoundException -> 0x0094
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00a4
            r0 = r11
            r1 = r6
            java.lang.String r1 = r1.getPackageName()     // Catch: NameNotFoundException -> 0x0094
            r2 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r1, r2)     // Catch: NameNotFoundException -> 0x0094
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x00a4
            r0 = r11
            android.os.Bundle r0 = r0.metaData     // Catch: NameNotFoundException -> 0x0094
            if (r0 == 0) goto L_0x00a4
            r0 = r11
            android.os.Bundle r0 = r0.metaData     // Catch: NameNotFoundException -> 0x0094
            java.lang.String r1 = "firebase_crashlytics_collection_enabled"
            boolean r0 = r0.containsKey(r1)     // Catch: NameNotFoundException -> 0x0094
            if (r0 == 0) goto L_0x00a4
            r0 = r11
            android.os.Bundle r0 = r0.metaData     // Catch: NameNotFoundException -> 0x0094
            java.lang.String r1 = "firebase_crashlytics_collection_enabled"
            boolean r0 = r0.getBoolean(r1)     // Catch: NameNotFoundException -> 0x0094
            r8 = r0
            goto L_0x0047
        L_0x0094:
            r11 = move-exception
            io.fabric.sdk.android.Logger r0 = io.fabric.sdk.android.Fabric.getLogger()
            java.lang.String r1 = "Fabric"
            java.lang.String r2 = "Unable to get PackageManager. Falling through"
            r3 = r11
            r0.mo287d(r1, r2, r3)
        L_0x00a4:
            r0 = 1
            r10 = r0
            r0 = 0
            r8 = r0
        L_0x00a9:
            r0 = r5
            r1 = r10
            r0.crashlyticsDataCollectionEnabled = r1
            r0 = r5
            r1 = r8
            r0.crashlyticsDataCollectionExplicitlySet = r1
            r0 = r7
            r8 = r0
            r0 = r6
            java.lang.String r0 = io.fabric.sdk.android.services.common.CommonUtils.resolveUnityEditorVersion(r0)
            if (r0 == 0) goto L_0x00bf
            r0 = 1
            r8 = r0
        L_0x00bf:
            r0 = r5
            r1 = r8
            r0.isUnity = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.common.DataCollectionArbiter.<init>(android.content.Context):void");
    }

    public static DataCollectionArbiter getInstance(Context context) {
        DataCollectionArbiter dataCollectionArbiter;
        synchronized (instanceLock) {
            if (instance == null) {
                instance = new DataCollectionArbiter(context);
            }
            dataCollectionArbiter = instance;
        }
        return dataCollectionArbiter;
    }

    public static void resetForTesting(Context context) {
        synchronized (instanceLock) {
            instance = new DataCollectionArbiter(context);
        }
    }

    public boolean isDataCollectionEnabled() {
        if (this.isUnity && this.crashlyticsDataCollectionExplicitlySet) {
            return this.crashlyticsDataCollectionEnabled;
        }
        if (this.firebaseApp != null) {
            return this.firebaseApp.isDataCollectionDefaultEnabled();
        }
        return true;
    }

    @SuppressLint({"CommitPrefEdits", "ApplySharedPref"})
    public void setCrashlyticsDataCollectionEnabled(boolean z) {
        this.crashlyticsDataCollectionEnabled = z;
        this.crashlyticsDataCollectionExplicitlySet = true;
        this.sharedPreferences.edit().putBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED, z).commit();
    }

    public boolean shouldAutoInitialize() {
        return this.crashlyticsDataCollectionEnabled;
    }
}
