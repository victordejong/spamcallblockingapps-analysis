package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import com.google.firebase.C15601b;
import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DataCollectionArbiter.class */
public class DataCollectionArbiter {
    private static final String FIREBASE_CRASHLYTICS_COLLECTION_ENABLED = "firebase_crashlytics_collection_enabled";
    private Boolean crashlyticsDataCollectionEnabled;
    private final C15601b firebaseApp;
    private final SharedPreferences sharedPreferences;
    private final Object taskLock;
    boolean taskResolved;
    C14186i<Void> dataCollectionEnabledTask = new C14186i<>();
    private boolean setInManifest = false;
    private final C14186i<Void> dataCollectionExplicitlyApproved = new C14186i<>();

    public DataCollectionArbiter(C15601b c15601b) {
        Object obj = new Object();
        this.taskLock = obj;
        this.taskResolved = false;
        Context m8583a = c15601b.m8583a();
        this.firebaseApp = c15601b;
        this.sharedPreferences = CommonUtils.getSharedPrefs(m8583a);
        Boolean dataCollectionValueFromSharedPreferences = getDataCollectionValueFromSharedPreferences();
        this.crashlyticsDataCollectionEnabled = dataCollectionValueFromSharedPreferences == null ? getDataCollectionValueFromManifest(m8583a) : dataCollectionValueFromSharedPreferences;
        synchronized (obj) {
            if (isAutomaticDataCollectionEnabled()) {
                this.dataCollectionEnabledTask.m11469b((C14186i<Void>) null);
                this.taskResolved = true;
            }
        }
    }

    private Boolean getDataCollectionValueFromManifest(Context context) {
        Boolean readCrashlyticsDataCollectionEnabledFromManifest = readCrashlyticsDataCollectionEnabledFromManifest(context);
        if (readCrashlyticsDataCollectionEnabledFromManifest == null) {
            this.setInManifest = false;
            return null;
        }
        this.setInManifest = true;
        return Boolean.valueOf(Boolean.TRUE.equals(readCrashlyticsDataCollectionEnabledFromManifest));
    }

    private Boolean getDataCollectionValueFromSharedPreferences() {
        if (this.sharedPreferences.contains(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED)) {
            this.setInManifest = false;
            return Boolean.valueOf(this.sharedPreferences.getBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED, true));
        }
        return null;
    }

    private void logDataCollectionState(boolean z) {
        Logger.getLogger().m8488d(String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.crashlyticsDataCollectionEnabled == null ? "global Firebase setting" : this.setInManifest ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
    }

    private static Boolean readCrashlyticsDataCollectionEnabledFromManifest(Context context) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED)) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.getLogger().m8485e("Could not read data collection permission from manifest", e);
            return null;
        }
    }

    private static void storeDataCollectionValueInSharedPreferences(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (bool != null) {
            edit.putBoolean(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED, bool.booleanValue());
        } else {
            edit.remove(FIREBASE_CRASHLYTICS_COLLECTION_ENABLED);
        }
        edit.commit();
    }

    public void grantDataCollectionPermission(boolean z) {
        if (z) {
            this.dataCollectionExplicitlyApproved.m11469b((C14186i<Void>) null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public boolean isAutomaticDataCollectionEnabled() {
        boolean booleanValue;
        synchronized (this) {
            Boolean bool = this.crashlyticsDataCollectionEnabled;
            booleanValue = bool != null ? bool.booleanValue() : this.firebaseApp.m8572e();
            logDataCollectionState(booleanValue);
        }
        return booleanValue;
    }

    public void setCrashlyticsDataCollectionEnabled(Boolean bool) {
        synchronized (this) {
            if (bool != null) {
                this.setInManifest = false;
            }
            this.crashlyticsDataCollectionEnabled = bool != null ? bool : getDataCollectionValueFromManifest(this.firebaseApp.m8583a());
            storeDataCollectionValueInSharedPreferences(this.sharedPreferences, bool);
            synchronized (this.taskLock) {
                if (isAutomaticDataCollectionEnabled()) {
                    if (!this.taskResolved) {
                        this.dataCollectionEnabledTask.m11469b((C14186i<Void>) null);
                        this.taskResolved = true;
                    }
                } else if (this.taskResolved) {
                    this.dataCollectionEnabledTask = new C14186i<>();
                    this.taskResolved = false;
                }
            }
        }
    }

    public AbstractC14185h<Void> waitForAutomaticDataCollectionEnabled() {
        AbstractC14185h<Void> m11473a;
        synchronized (this.taskLock) {
            m11473a = this.dataCollectionEnabledTask.m11473a();
        }
        return m11473a;
    }

    public AbstractC14185h<Void> waitForDataCollectionPermission() {
        return Utils.race(this.dataCollectionExplicitlyApproved.m11473a(), waitForAutomaticDataCollectionEnabled());
    }
}
