package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import e.c.a.a.a.f.a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i.class */
public final class C2399i {

    /* renamed from: a */
    public static final Executor f10543a = new ExecutorC2400a();

    /* renamed from: b */
    static final Executor f10544b = new ExecutorC2388a0();

    /* renamed from: com.google.android.gms.tasks.i$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/i$a.class */
    private static final class ExecutorC2400a implements Executor {

        /* renamed from: b */
        private final Handler f10545b = new a(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f10545b.post(runnable);
        }
    }
}
