package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsa.class */
public final class zzfsa<V> implements Runnable {
    public final Future<V> zza;
    public final zzfrz<? super V> zzb;

    public zzfsa(Future<V> future, zzfrz<? super V> zzfrzVar) {
        this.zza = future;
        this.zzb = zzfrzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable zza;
        Future<V> future = this.zza;
        if ((future instanceof zzfte) && (zza = zzftf.zza((zzfte) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzfsd.zzq(this.zza));
        } catch (Error e2) {
            e = e2;
            this.zzb.zza(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.zzb.zza(e);
        } catch (ExecutionException e4) {
            this.zzb.zza(e4.getCause());
        }
    }

    public final String toString() {
        zzflr zza = zzfls.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}
