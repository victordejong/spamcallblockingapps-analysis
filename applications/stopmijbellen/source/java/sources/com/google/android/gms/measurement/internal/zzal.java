package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzby;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzal.class */
public abstract class zzal {
    private static volatile Handler zzb;
    private final zzgp zza;
    private final Runnable zzc;
    private volatile long zzd;

    public zzal(zzgp zzgpVar) {
        Preconditions.checkNotNull(zzgpVar);
        this.zza = zzgpVar;
        this.zzc = new zzak(this, zzgpVar);
    }

    private final Handler zzf() {
        Handler handler;
        if (zzb != null) {
            return zzb;
        }
        synchronized (zzal.class) {
            try {
                if (zzb == null) {
                    zzb = new zzby(this.zza.zzax().getMainLooper());
                }
                handler = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public abstract void zza();

    public final void zzb(long j) {
        zzd();
        if (j >= 0) {
            this.zzd = this.zza.zzay().currentTimeMillis();
            if (zzf().postDelayed(this.zzc, j)) {
                return;
            }
            this.zza.zzau().zzb().zzb("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final boolean zzc() {
        return this.zzd != 0;
    }

    public final void zzd() {
        this.zzd = 0L;
        zzf().removeCallbacks(this.zzc);
    }
}
