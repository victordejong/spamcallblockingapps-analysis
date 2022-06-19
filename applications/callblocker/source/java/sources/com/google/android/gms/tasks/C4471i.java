package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i.class */
public final class C4471i {

    /* renamed from: a */
    public static final Executor f19509a = new ExecutorC4472a();

    /* renamed from: b */
    static final Executor f19510b = new ExecutorC4460aa();

    /* renamed from: com.google.android.gms.tasks.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i$a.class */
    private static final class ExecutorC4472a implements Executor {

        /* renamed from: a */
        private final Handler f19511a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f19511a.post(runnable);
        }
    }
}
