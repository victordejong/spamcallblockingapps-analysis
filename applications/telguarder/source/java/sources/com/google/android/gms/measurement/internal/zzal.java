package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzal.class */
public abstract class zzal {
    private static volatile Handler zzb;
    private final zzgg zza;
    private final Runnable zzc;
    private volatile long zzd;

    public zzal(zzgg zzggVar) {
        Preconditions.checkNotNull(zzggVar);
        this.zza = zzggVar;
        this.zzc = new zzak(this, zzggVar);
    }

    private final Handler zzf() {
        Handler handler;
        if (zzb != null) {
            return zzb;
        }
        synchronized (zzal.class) {
            try {
                if (zzb == null) {
                    zzb = new zzl(this.zza.zzaw().getMainLooper());
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
            this.zzd = this.zza.zzax().currentTimeMillis();
            if (zzf().postDelayed(this.zzc, j)) {
                return;
            }
            this.zza.zzat().zzb().zzb("Failed to schedule delayed post. time", Long.valueOf(j));
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
