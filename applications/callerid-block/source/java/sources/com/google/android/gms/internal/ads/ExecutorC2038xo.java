package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.z0;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.xo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xo.class */
final class ExecutorC2038xo implements Executor {

    /* renamed from: b */
    private final Handler f9133b = new z0(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f9133b.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            C1407r.m8920d();
            C1433l1.m8754m(C1407r.m8916h().m4584m(), th);
            throw th;
        }
    }
}
