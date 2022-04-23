package com.google.android.play.core.tasks;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/r.class */
final class r implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f31579a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f31579a.post(runnable);
    }
}
