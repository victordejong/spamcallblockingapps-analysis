package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.yi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yi.class */
final class ExecutorC3652yi implements Executor {

    /* renamed from: a */
    private final Handler f17648a = new HandlerC3559ux(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f17648a.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            C2341q.m14744c();
            C3567ve.m7000a(C2341q.m14740g().m7083i(), th);
            throw th;
        }
    }
}
