package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzp.class */
public final class zzp implements Runnable {
    private final /* synthetic */ zzab zzy;
    private final /* synthetic */ zzm zzz;

    public zzp(zzm zzmVar, zzab zzabVar) {
        this.zzz = zzmVar;
        this.zzy = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.zzz.zzm;
            blockingQueue.put(this.zzy);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
