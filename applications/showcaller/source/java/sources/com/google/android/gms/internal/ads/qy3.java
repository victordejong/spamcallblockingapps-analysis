package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qy3.class */
public final class qy3 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ dz3 f28689d;

    /* renamed from: e */
    final /* synthetic */ ry3 f28690e;

    public qy3(ry3 ry3Var, dz3 dz3Var) {
        this.f28690e = ry3Var;
        this.f28689d = dz3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f28690e.f29313f;
            blockingQueue.put(this.f28689d);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
