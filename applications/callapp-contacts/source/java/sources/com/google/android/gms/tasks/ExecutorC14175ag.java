package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.p361g.HandlerC13311a;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.ag */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ag.class */
final class ExecutorC14175ag implements Executor {

    /* renamed from: a */
    private final Handler f52132a = new HandlerC13311a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f52132a.post(runnable);
    }
}
