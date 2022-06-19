package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzm.class */
public final class zzdzm<V> implements Runnable {
    private final Future<V> zziam;
    private final zzdzl<? super V> zzian;

    public zzdzm(Future<V> future, zzdzl<? super V> zzdzlVar) {
        this.zziam = future;
        this.zzian = zzdzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable zza;
        Future<V> future = this.zziam;
        if ((future instanceof zzeao) && (zza = zzean.zza((zzeao) future)) != null) {
            this.zzian.zzb(zza);
            return;
        }
        try {
            this.zzian.onSuccess(zzdzk.zza(this.zziam));
        } catch (Error e2) {
            e = e2;
            this.zzian.zzb(e);
        } catch (RuntimeException e3) {
            e = e3;
            this.zzian.zzb(e);
        } catch (ExecutionException e4) {
            this.zzian.zzb(e4.getCause());
        }
    }

    public final String toString() {
        return zzdwb.zzw(this).zzy(this.zzian).toString();
    }
}
