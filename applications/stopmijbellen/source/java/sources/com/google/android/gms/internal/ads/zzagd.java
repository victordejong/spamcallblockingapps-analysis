package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagd.class */
public final class zzagd implements Runnable {
    public final /* synthetic */ zzags zza;
    public final /* synthetic */ zzage zzb;

    public zzagd(zzage zzageVar, zzags zzagsVar) {
        this.zzb = zzageVar;
        this.zza = zzagsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.zzb.zzc;
            blockingQueue.put(this.zza);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
