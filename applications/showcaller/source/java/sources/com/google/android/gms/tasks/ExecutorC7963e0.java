package com.google.android.gms.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p078c.p084c.p085a.p086a.p088b.p094f.HandlerC1877a;
/* renamed from: com.google.android.gms.tasks.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/e0.class */
final class ExecutorC7963e0 implements Executor {

    /* renamed from: d */
    private final Handler f35942d = new HandlerC1877a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f35942d.post(runnable);
    }
}
