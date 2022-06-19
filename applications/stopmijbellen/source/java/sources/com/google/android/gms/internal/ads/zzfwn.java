package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwn.class */
public final class zzfwn<V> implements Runnable {
    public final Future<V> zza;
    public final zzfwm<? super V> zzb;

    public zzfwn(Future<V> future, zzfwm<? super V> zzfwmVar) {
        this.zza = future;
        this.zzb = zzfwmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable e;
        Throwable zza;
        Future<V> future = this.zza;
        if ((future instanceof zzfxs) && (zza = zzfxt.zza((zzfxs) future)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzfwq.zzp(this.zza));
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
        zzfqa zza = zzfqb.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}
