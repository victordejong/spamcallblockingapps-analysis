package com.google.android.play.core.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/tasks/o.class */
final class ExecutorC8583o implements Executor {

    /* renamed from: d */
    private final Handler f38183d = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f38183d.post(runnable);
    }
}
