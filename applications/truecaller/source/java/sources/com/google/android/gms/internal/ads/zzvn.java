package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvn.class */
public final class zzvn implements Runnable {
    public final /* synthetic */ zzwc zza;
    public final /* synthetic */ zzvo zzb;

    public zzvn(zzvo zzvoVar, zzwc zzwcVar) {
        this.zzb = zzvoVar;
        this.zza = zzwcVar;
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
