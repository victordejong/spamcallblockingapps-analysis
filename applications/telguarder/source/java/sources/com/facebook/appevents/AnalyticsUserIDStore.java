package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/AnalyticsUserIDStore.class */
public class AnalyticsUserIDStore {
    private static final String ANALYTICS_USER_ID_KEY = "com.facebook.appevents.AnalyticsUserIDStore.userID";
    private static final String TAG = "AnalyticsUserIDStore";
    private static String userID;
    private static ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    private static volatile boolean initialized = false;

    AnalyticsUserIDStore() {
    }

    public static String getUserID() {
        if (!initialized) {
            Log.w(TAG, "initStore should have been called before calling setUserID");
            initAndWait();
        }
        lock.readLock().lock();
        try {
            String str = userID;
            lock.readLock().unlock();
            return str;
        } catch (Throwable th) {
            lock.readLock().unlock();
            throw th;
        }
    }

    public static void initAndWait() {
        if (initialized) {
            return;
        }
        lock.writeLock().lock();
        try {
            if (initialized) {
                return;
            }
            userID = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).getString(ANALYTICS_USER_ID_KEY, null);
            initialized = true;
            lock.writeLock().unlock();
        } finally {
            lock.writeLock().unlock();
        }
    }

    public static void initStore() {
        if (initialized) {
            return;
        }
        InternalAppEventsLogger.getAnalyticsExecutor().execute(new Runnable() { // from class: com.facebook.appevents.AnalyticsUserIDStore.1
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    AnalyticsUserIDStore.initAndWait();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
    }

    public static void setUserID(final String str) {
        AppEventUtility.assertIsNotMainThread();
        if (!initialized) {
            Log.w(TAG, "initStore should have been called before calling setUserID");
            initAndWait();
        }
        InternalAppEventsLogger.getAnalyticsExecutor().execute(new Runnable() { // from class: com.facebook.appevents.AnalyticsUserIDStore.2
            @Override // java.lang.Runnable
            public void run() {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    AnalyticsUserIDStore.lock.writeLock().lock();
                    String unused = AnalyticsUserIDStore.userID = str;
                    SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
                    edit.putString(AnalyticsUserIDStore.ANALYTICS_USER_ID_KEY, AnalyticsUserIDStore.userID);
                    edit.apply();
                    AnalyticsUserIDStore.lock.writeLock().unlock();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
    }
}
