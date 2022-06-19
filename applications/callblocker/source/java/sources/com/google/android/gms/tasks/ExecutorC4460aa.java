package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.aa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/aa.class */
final class ExecutorC4460aa implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
