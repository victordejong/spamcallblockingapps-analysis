package com.google.android.gms.common.api.internal;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.common.api.internal.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/w.class */
final /* synthetic */ class ExecutorC6069w implements Executor {

    /* renamed from: d */
    private final Handler f19364d;

    private ExecutorC6069w(Handler handler) {
        this.f19364d = handler;
    }

    /* renamed from: b */
    public static Executor m17257b(Handler handler) {
        return new ExecutorC6069w(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f19364d.post(runnable);
    }
}
