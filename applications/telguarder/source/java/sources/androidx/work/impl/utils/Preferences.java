package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/Preferences.class */
public class Preferences {
    private static final String KEY_LAST_CANCEL_ALL_TIME_MS = "last_cancel_all_time_ms";
    private static final String KEY_RESCHEDULE_NEEDED = "reschedule_needed";
    private static final String PREFERENCES_FILE_NAME = "androidx.work.util.preferences";
    private Context mContext;
    private SharedPreferences mSharedPreferences;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/Preferences$LastCancelAllLiveData.class */
    public static class LastCancelAllLiveData extends MutableLiveData<Long> implements SharedPreferences.OnSharedPreferenceChangeListener {
        private long mLastCancelAllTimeMillis;
        private SharedPreferences mSharedPreferences;

        LastCancelAllLiveData(SharedPreferences sharedPreferences) {
            this.mSharedPreferences = sharedPreferences;
            long j = sharedPreferences.getLong(Preferences.KEY_LAST_CANCEL_ALL_TIME_MS, 0L);
            this.mLastCancelAllTimeMillis = j;
            postValue(Long.valueOf(j));
        }

        @Override // androidx.lifecycle.LiveData
        public void onActive() {
            super.onActive();
            this.mSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        }

        @Override // androidx.lifecycle.LiveData
        public void onInactive() {
            super.onInactive();
            this.mSharedPreferences.unregisterOnSharedPreferenceChangeListener(this);
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (Preferences.KEY_LAST_CANCEL_ALL_TIME_MS.equals(str)) {
                long j = sharedPreferences.getLong(str, 0L);
                if (this.mLastCancelAllTimeMillis == j) {
                    return;
                }
                this.mLastCancelAllTimeMillis = j;
                setValue(Long.valueOf(j));
            }
        }
    }

    public Preferences(Context context) {
        this.mContext = context;
    }

    public Preferences(SharedPreferences sharedPreferences) {
        this.mSharedPreferences = sharedPreferences;
    }

    private SharedPreferences getSharedPreferences() {
        SharedPreferences sharedPreferences;
        synchronized (Preferences.class) {
            try {
                if (this.mSharedPreferences == null) {
                    this.mSharedPreferences = this.mContext.getSharedPreferences(PREFERENCES_FILE_NAME, 0);
                }
                sharedPreferences = this.mSharedPreferences;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }

    public long getLastCancelAllTimeMillis() {
        return getSharedPreferences().getLong(KEY_LAST_CANCEL_ALL_TIME_MS, 0L);
    }

    public LiveData<Long> getLastCancelAllTimeMillisLiveData() {
        return new LastCancelAllLiveData(getSharedPreferences());
    }

    public boolean needsReschedule() {
        return getSharedPreferences().getBoolean(KEY_RESCHEDULE_NEEDED, false);
    }

    public void setLastCancelAllTimeMillis(long j) {
        getSharedPreferences().edit().putLong(KEY_LAST_CANCEL_ALL_TIME_MS, j).apply();
    }

    public void setNeedsReschedule(boolean z) {
        getSharedPreferences().edit().putBoolean(KEY_RESCHEDULE_NEEDED, z).apply();
    }
}
