package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfoStorage.class */
public class HeartBeatInfoStorage {
    private static final SimpleDateFormat FORMATTER = new SimpleDateFormat("dd/MM/yyyy z");
    private static final String GLOBAL = "fire-global";
    private static final int HEART_BEAT_COUNT_LIMIT = 200;
    private static final String HEART_BEAT_COUNT_TAG = "fire-count";
    private static final String PREFERENCES_NAME = "FirebaseAppHeartBeat";
    private static final String STORAGE_PREFERENCES_NAME = "FirebaseAppHeartBeatStorage";
    private static HeartBeatInfoStorage instance;
    private final SharedPreferences heartBeatSharedPreferences;
    private final SharedPreferences sharedPreferences;

    private HeartBeatInfoStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences(PREFERENCES_NAME, 0);
        this.heartBeatSharedPreferences = context.getSharedPreferences(STORAGE_PREFERENCES_NAME, 0);
    }

    HeartBeatInfoStorage(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        this.sharedPreferences = sharedPreferences;
        this.heartBeatSharedPreferences = sharedPreferences2;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private void cleanUpStoredHeartBeats() {
        ?? r0;
        synchronized (this) {
            char c = this.sharedPreferences.getLong(HEART_BEAT_COUNT_TAG, 0L);
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.heartBeatSharedPreferences.getAll().entrySet()) {
                arrayList.add(Long.valueOf(Long.parseLong(entry.getKey())));
            }
            Collections.sort(arrayList);
            Iterator it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    return;
                }
                this.heartBeatSharedPreferences.edit().remove(String.valueOf((Long) it.next())).apply();
                r0 = c - 1;
                this.sharedPreferences.edit().putLong(HEART_BEAT_COUNT_TAG, r0).apply();
                c = r0;
            } while (r0 > 100);
        }
    }

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

    public static boolean isSameDateUtc(long j, long j2) {
        Date date = new Date(j);
        Date date2 = new Date(j2);
        SimpleDateFormat simpleDateFormat = FORMATTER;
        return !simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    void clearStoredHeartBeats() {
        synchronized (this) {
            this.heartBeatSharedPreferences.edit().clear().apply();
            this.sharedPreferences.edit().remove(HEART_BEAT_COUNT_TAG).apply();
        }
    }

    int getHeartBeatCount() {
        return (int) this.sharedPreferences.getLong(HEART_BEAT_COUNT_TAG, 0L);
    }

    public long getLastGlobalHeartBeat() {
        long j;
        synchronized (this) {
            j = this.sharedPreferences.getLong(GLOBAL, -1L);
        }
        return j;
    }

    public List<SdkHeartBeatResult> getStoredHeartBeats(boolean z) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.heartBeatSharedPreferences.getAll().entrySet()) {
                arrayList.add(SdkHeartBeatResult.create((String) entry.getValue(), Long.parseLong(entry.getKey())));
            }
            Collections.sort(arrayList);
            if (z) {
                clearStoredHeartBeats();
            }
        }
        return arrayList;
    }

    public boolean shouldSendGlobalHeartBeat(long j) {
        boolean shouldSendSdkHeartBeat;
        synchronized (this) {
            shouldSendSdkHeartBeat = shouldSendSdkHeartBeat(GLOBAL, j);
        }
        return shouldSendSdkHeartBeat;
    }

    public boolean shouldSendSdkHeartBeat(String str, long j) {
        synchronized (this) {
            if (!this.sharedPreferences.contains(str)) {
                this.sharedPreferences.edit().putLong(str, j).apply();
                return true;
            } else if (!isSameDateUtc(this.sharedPreferences.getLong(str, -1L), j)) {
                return false;
            } else {
                this.sharedPreferences.edit().putLong(str, j).apply();
                return true;
            }
        }
    }

    public void storeHeartBeatInformation(String str, long j) {
        synchronized (this) {
            long j2 = this.sharedPreferences.getLong(HEART_BEAT_COUNT_TAG, 0L);
            this.heartBeatSharedPreferences.edit().putString(String.valueOf(j), str).apply();
            long j3 = j2 + 1;
            this.sharedPreferences.edit().putLong(HEART_BEAT_COUNT_TAG, j3).apply();
            if (j3 > 200) {
                cleanUpStoredHeartBeats();
            }
        }
    }

    public void updateGlobalHeartBeat(long j) {
        synchronized (this) {
            this.sharedPreferences.edit().putLong(GLOBAL, j).apply();
        }
    }
}
