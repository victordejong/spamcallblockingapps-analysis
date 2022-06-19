package com.google.android.gms.common.api.internal;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.common.api.internal.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/z.class */
final /* synthetic */ class ExecutorC11920z implements Executor {

    /* renamed from: a */
    private final Handler f39413a;

    private ExecutorC11920z(Handler handler) {
        this.f39413a = handler;
    }

    /* renamed from: a */
    public static Executor m19301a(Handler handler) {
        return new ExecutorC11920z(handler);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f39413a.post(runnable);
    }
}
