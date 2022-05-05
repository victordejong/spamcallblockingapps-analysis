package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SharedPreferencesLoader.class */
class SharedPreferencesLoader {
    private final Executor mExecutor = Executors.newSingleThreadExecutor();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SharedPreferencesLoader$LoadSharedPreferences.class */
    private static class LoadSharedPreferences implements Callable<SharedPreferences> {
        private final Context mContext;
        private final OnPrefsLoadedListener mListener;
        private final String mPrefsName;

        public LoadSharedPreferences(Context context, String str, OnPrefsLoadedListener onPrefsLoadedListener) {
            this.mContext = context;
            this.mPrefsName = str;
            this.mListener = onPrefsLoadedListener;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public SharedPreferences call() {
            SharedPreferences sharedPreferences = this.mContext.getSharedPreferences(this.mPrefsName, 0);
            if (this.mListener != null) {
                this.mListener.onPrefsLoaded(sharedPreferences);
            }
            return sharedPreferences;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/SharedPreferencesLoader$OnPrefsLoadedListener.class */
    public interface OnPrefsLoadedListener {
        void onPrefsLoaded(SharedPreferences sharedPreferences);
    }

    public Future<SharedPreferences> loadPreferences(Context context, String str, OnPrefsLoadedListener onPrefsLoadedListener) {
        FutureTask futureTask = new FutureTask(new LoadSharedPreferences(context, str, onPrefsLoadedListener));
        this.mExecutor.execute(futureTask);
        return futureTask;
    }
}
