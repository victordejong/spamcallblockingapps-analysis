package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfoStorage.class */
class HeartBeatInfoStorage {
    private static final String GLOBAL = "fire-global";
    private static HeartBeatInfoStorage instance;
    private static final String preferencesName = "FirebaseAppHeartBeat";
    private final SharedPreferences sharedPreferences;

    private HeartBeatInfoStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences(preferencesName, 0);
    }

    @RestrictTo
    @VisibleForTesting
    HeartBeatInfoStorage(SharedPreferences sharedPreferences) {
        this.sharedPreferences = sharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HeartBeatInfoStorage getInstance(Context context) {
        HeartBeatInfoStorage heartBeatInfoStorage;
        synchronized (HeartBeatInfoStorage.class) {
            try {
                if (instance == null) {
                    instance = new HeartBeatInfoStorage(context);
                }
                heartBeatInfoStorage = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return heartBeatInfoStorage;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldSendGlobalHeartBeat(long j) {
        boolean shouldSendSdkHeartBeat;
        synchronized (this) {
            shouldSendSdkHeartBeat = shouldSendSdkHeartBeat(GLOBAL, j);
        }
        return shouldSendSdkHeartBeat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldSendSdkHeartBeat(String str, long j) {
        synchronized (this) {
            if (!this.sharedPreferences.contains(str)) {
                this.sharedPreferences.edit().putLong(str, j).apply();
                return true;
            } else if (j - this.sharedPreferences.getLong(str, -1L) < 86400000) {
                return false;
            } else {
                this.sharedPreferences.edit().putLong(str, j).apply();
                return true;
            }
        }
    }
}
