package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DataCollectionArbiter.class */
public class DataCollectionArbiter {
    private static final String FIREBASE_CRASHLYTICS_COLLECTION_ENABLED = "firebase_crashlytics_collection_enabled";
    private Boolean crashlyticsDataCollectionEnabled;
    private final FirebaseApp firebaseApp;
    private final SharedPreferences sharedPreferences;
    private final Object taskLock;
    boolean taskResolved;
    TaskCompletionSource<Void> dataCollectionEnabledTask = new TaskCompletionSource<>();
    private boolean setInManifest = false;
    private final TaskCompletionSource<Void> dataCollectionExplicitlyApproved = new TaskCompletionSource<>();

    public DataCollectionArbiter(FirebaseApp firebaseApp) {
        Object obj = new Object();
        this.taskLock = obj;
        this.taskResolved = false;
        Context applicationContext = firebaseApp.getApplicationContext();
        this.firebaseApp = firebaseApp;
        this.sharedPreferences = CommonUtils.getSharedPrefs(applicationContext);
        Boolean dataCollectionValueFromSharedPreferences = getDataCollectionValueFromSharedPreferences();
        this.crashlyticsDataCollectionEnabled = dataCollectionValueFromSharedPreferences == null ? getDataCollectionValueFromManifest(applicationContext) : dataCollectionValueFromSharedPreferences;
        synchronized (obj) {
            if (isAutomaticDataCollectionEnabled()) {
                this.dataCollectionEnabledTask.trySetResult(null);
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
        Logger.getLogger().m1348d(String.format("Crashlytics automatic data collection %s by %s.", z ? "ENABLED" : "DISABLED", this.crashlyticsDataCollectionEnabled == null ? "global Firebase setting" : this.setInManifest ? "firebase_crashlytics_collection_enabled manifest flag" : "API"));
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
            Logger.getLogger().m1345e("Could not read data collection permission from manifest", e);
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
            this.dataCollectionExplicitlyApproved.trySetResult(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public boolean isAutomaticDataCollectionEnabled() {
        boolean booleanValue;
        synchronized (this) {
            Boolean bool = this.crashlyticsDataCollectionEnabled;
            booleanValue = bool != null ? bool.booleanValue() : this.firebaseApp.isDataCollectionDefaultEnabled();
            logDataCollectionState(booleanValue);
        }
        return booleanValue;
    }

    public void setCrashlyticsDataCollectionEnabled(Boolean bool) {
        synchronized (this) {
            if (bool != null) {
                this.setInManifest = false;
            }
            this.crashlyticsDataCollectionEnabled = bool != null ? bool : getDataCollectionValueFromManifest(this.firebaseApp.getApplicationContext());
            storeDataCollectionValueInSharedPreferences(this.sharedPreferences, bool);
            synchronized (this.taskLock) {
                if (isAutomaticDataCollectionEnabled()) {
                    if (!this.taskResolved) {
                        this.dataCollectionEnabledTask.trySetResult(null);
                        this.taskResolved = true;
                    }
                } else if (this.taskResolved) {
                    this.dataCollectionEnabledTask = new TaskCompletionSource<>();
                    this.taskResolved = false;
                }
            }
        }
    }

    public Task<Void> waitForAutomaticDataCollectionEnabled() {
        Task<Void> task;
        synchronized (this.taskLock) {
            task = this.dataCollectionEnabledTask.getTask();
        }
        return task;
    }

    public Task<Void> waitForDataCollectionPermission() {
        return Utils.race(this.dataCollectionExplicitlyApproved.getTask(), waitForAutomaticDataCollectionEnabled());
    }
}
