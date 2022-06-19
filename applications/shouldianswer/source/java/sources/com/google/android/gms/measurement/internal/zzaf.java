package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaf.class */
public abstract class zzaf {
    private static volatile Handler zzb;
    private final zzgt zza;
    private final Runnable zzc;
    private volatile long zzd;

    public zzaf(zzgt zzgtVar) {
        Preconditions.checkNotNull(zzgtVar);
        this.zza = zzgtVar;
        this.zzc = new zzai(this, zzgtVar);
    }

    private final Handler zzd() {
        Handler handler;
        if (zzb != null) {
            return zzb;
        }
        synchronized (zzaf.class) {
            try {
                if (zzb == null) {
                    zzb = new zzj(this.zza.zzn().getMainLooper());
                }
                handler = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public abstract void zza();

    public final void zza(long j) {
        zzc();
        if (j >= 0) {
            this.zzd = this.zza.zzm().currentTimeMillis();
            if (zzd().postDelayed(this.zzc, j)) {
                return;
            }
            this.zza.zzr().zzf().zza("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final boolean zzb() {
        return this.zzd != 0;
    }

    public final void zzc() {
        this.zzd = 0L;
        zzd().removeCallbacks(this.zzc);
    }
}
