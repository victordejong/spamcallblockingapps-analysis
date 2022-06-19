package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/IdGenerator.class */
public class IdGenerator {
    public static final int INITIAL_ID = 0;
    static final String NEXT_ALARM_MANAGER_ID_KEY = "next_alarm_manager_id";
    static final String NEXT_JOB_SCHEDULER_ID_KEY = "next_job_scheduler_id";
    static final String PREFERENCE_FILE_KEY = "androidx.work.util.id";
    private final Context mContext;
    private boolean mLoadedPreferences;
    private SharedPreferences mSharedPrefs;

    public IdGenerator(Context context) {
        this.mContext = context;
    }

    private void loadPreferencesIfNecessary() {
        if (!this.mLoadedPreferences) {
            this.mSharedPrefs = this.mContext.getSharedPreferences(PREFERENCE_FILE_KEY, 0);
            this.mLoadedPreferences = true;
        }
    }

    private int nextId(String str) {
        int i = 0;
        int i2 = this.mSharedPrefs.getInt(str, 0);
        if (i2 != Integer.MAX_VALUE) {
            i = i2 + 1;
        }
        update(str, i);
        return i2;
    }

    private void update(String str, int i) {
        this.mSharedPrefs.edit().putInt(str, i).apply();
    }

    public int nextAlarmManagerId() {
        int nextId;
        synchronized (IdGenerator.class) {
            try {
                loadPreferencesIfNecessary();
                nextId = nextId(NEXT_ALARM_MANAGER_ID_KEY);
            } catch (Throwable th) {
                throw th;
            }
        }
        return nextId;
    }

    public int nextJobSchedulerIdWithRange(int i, int i2) {
        synchronized (IdGenerator.class) {
            try {
                loadPreferencesIfNecessary();
                int nextId = nextId(NEXT_JOB_SCHEDULER_ID_KEY);
                if (nextId < i || nextId > i2) {
                    update(NEXT_JOB_SCHEDULER_ID_KEY, i + 1);
                } else {
                    i = nextId;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
