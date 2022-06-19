package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zo2.class */
public final class zo2 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC1676c1 f9419b;

    /* renamed from: c */
    final /* synthetic */ up2 f9420c;

    public zo2(up2 up2Var, AbstractC1676c1 abstractC1676c1) {
        this.f9420c = up2Var;
        this.f9419b = abstractC1676c1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f9420c.f8827c;
            blockingQueue.put(this.f9419b);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
