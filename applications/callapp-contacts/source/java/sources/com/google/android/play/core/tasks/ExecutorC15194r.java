package com.google.android.play.core.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.tasks.r */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/r.class */
final class ExecutorC15194r implements Executor {

    /* renamed from: a */
    private final Handler f55026a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f55026a.post(runnable);
    }
}
