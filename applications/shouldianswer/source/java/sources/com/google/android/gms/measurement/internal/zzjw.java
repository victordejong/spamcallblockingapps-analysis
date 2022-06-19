package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzkt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjw.class */
public final class zzjw {
    private long zza;
    private long zzb;
    private final zzaf zzc;
    private final /* synthetic */ zzjo zzd;

    public zzjw(zzjo zzjoVar) {
        this.zzd = zzjoVar;
        this.zzc = new zzjv(this, this.zzd.zzx);
        this.zza = zzjoVar.zzm().elapsedRealtime();
        this.zzb = this.zza;
    }

    public final void zzc() {
        this.zzd.zzd();
        zza(false, false);
        this.zzd.zze().zza(this.zzd.zzm().elapsedRealtime());
    }

    public final void zza() {
        this.zzc.zzc();
        this.zza = 0L;
        this.zzb = this.zza;
    }

    public final void zza(long j) {
        this.zzd.zzd();
        this.zzc.zzc();
        this.zza = j;
        this.zzb = this.zza;
    }

    public final boolean zza(boolean z, boolean z2) {
        this.zzd.zzd();
        this.zzd.zzw();
        long elapsedRealtime = this.zzd.zzm().elapsedRealtime();
        if (!zzkt.zzb() || !this.zzd.zzt().zza(zzap.zzcm) || this.zzd.zzx.zzab()) {
            this.zzd.zzs().zzq.zza(this.zzd.zzm().currentTimeMillis());
        }
        long j = elapsedRealtime - this.zza;
        if (!z && j < 1000) {
            this.zzd.zzr().zzx().zza("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
            return false;
        }
        this.zzd.zzs().zzr.zza(j);
        this.zzd.zzr().zzx().zza("Recording user engagement, ms", Long.valueOf(j));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j);
        zzii.zza(this.zzd.zzi().zzab(), bundle, true);
        if (this.zzd.zzt().zze(this.zzd.zzg().zzab(), zzap.zzay)) {
            if (this.zzd.zzt().zza(zzap.zzaz)) {
                if (!z2) {
                    zzb();
                }
            } else if (z2) {
                bundle.putLong("_fr", 1L);
            } else {
                zzb();
            }
        }
        if (!this.zzd.zzt().zza(zzap.zzaz) || !z2) {
            this.zzd.zzf().zza("auto", "_e", bundle);
        }
        this.zza = elapsedRealtime;
        this.zzc.zzc();
        this.zzc.zza(Math.max(0L, 3600000 - this.zzd.zzs().zzr.zza()));
        return true;
    }

    public final long zzb() {
        long elapsedRealtime = this.zzd.zzm().elapsedRealtime();
        long j = this.zzb;
        this.zzb = elapsedRealtime;
        return elapsedRealtime - j;
    }

    public final void zzb(long j) {
        this.zzc.zzc();
        if (this.zza != 0) {
            this.zzd.zzs().zzr.zza(this.zzd.zzs().zzr.zza() + (j - this.zza));
        }
    }
}
