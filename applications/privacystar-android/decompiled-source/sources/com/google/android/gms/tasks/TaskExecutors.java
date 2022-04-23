package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors.class */
public final class TaskExecutors {
    public static final Executor MAIN_THREAD = new zza();
    static final Executor zzw = new zzt();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors$zza.class */
    private static final class zza implements Executor {
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}
