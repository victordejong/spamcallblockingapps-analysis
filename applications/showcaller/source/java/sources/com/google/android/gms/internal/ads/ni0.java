package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.HandlerC5725p1;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ni0.class */
final class ni0 implements Executor {

    /* renamed from: d */
    private final Handler f27152d = new HandlerC5725p1(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            this.f27152d.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th) {
            C5667s.m18160d();
            C5679c2.m18060o(C5667s.m18156h().m12229q(), th);
            throw th;
        }
    }
}
