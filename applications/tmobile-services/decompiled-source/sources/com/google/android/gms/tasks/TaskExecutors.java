package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors.class */
public final class TaskExecutors {

    /* renamed from: a */
    public static final Executor f9841a = new zza();

    /* renamed from: b */
    static final Executor f9842b = new zzt();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/TaskExecutors$zza.class */
    private static final class zza implements Executor {

        /* renamed from: f */
        private final Handler f9843f = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            this.f9843f.post(runnable);
        }
    }

    private TaskExecutors() {
    }
}
