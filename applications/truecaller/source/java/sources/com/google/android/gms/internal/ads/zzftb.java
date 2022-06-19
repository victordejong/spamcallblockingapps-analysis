package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzftb.class */
public final class zzftb<V> extends zzfrt<V> implements RunnableFuture<V> {
    private volatile zzfsl<?> zza;

    public zzftb(zzfrj<V> zzfrjVar) {
        this.zza = new zzfsz(this, zzfrjVar);
    }

    public zzftb(Callable<V> callable) {
        this.zza = new zzfta(this, callable);
    }

    public static <V> zzftb<V> zza(Runnable runnable, V v) {
        return new zzftb<>(Executors.callable(runnable, v));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzfsl<?> zzfslVar = this.zza;
        if (zzfslVar != null) {
            zzfslVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        zzfsl<?> zzfslVar = this.zza;
        if (zzfslVar != null) {
            String zzfslVar2 = zzfslVar.toString();
            return C22128a.m8610j(new StringBuilder(zzfslVar2.length() + 7), "task=[", zzfslVar2, "]");
        }
        return super.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzd() {
        zzfsl<?> zzfslVar;
        if (zzo() && (zzfslVar = this.zza) != null) {
            zzfslVar.zzh();
        }
        this.zza = null;
    }
}
