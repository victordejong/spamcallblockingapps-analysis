package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.zzby;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjz.class */
public final class zzjz extends zzf {
    public final zzjy zza = new zzjy(this);
    public final zzjx zzb = new zzjx(this);
    public final zzjv zzc = new zzjv(this);
    private Handler zzd;

    public zzjz(zzfu zzfuVar) {
        super(zzfuVar);
    }

    public static /* synthetic */ void zzh(zzjz zzjzVar, long j) {
        zzjzVar.zzg();
        zzjzVar.zzl();
        zzjzVar.zzs.zzau().zzk().zzb("Activity resumed, time", Long.valueOf(j));
        zzae zzc = zzjzVar.zzs.zzc();
        zzdz<Boolean> zzdzVar = zzea.zzar;
        if (zzc.zzn(null, zzdzVar)) {
            if (zzjzVar.zzs.zzc().zzt() || zzjzVar.zzs.zzd().zzl.zza()) {
                zzjzVar.zzb.zza(j);
            }
            zzjzVar.zzc.zza();
        } else {
            zzjzVar.zzc.zza();
            if (zzjzVar.zzs.zzc().zzt()) {
                zzjzVar.zzb.zza(j);
            }
        }
        zzjy zzjyVar = zzjzVar.zza;
        zzjyVar.zza.zzg();
        if (!zzjyVar.zza.zzs.zzF()) {
            return;
        }
        if (!zzjyVar.zza.zzs.zzc().zzn(null, zzdzVar)) {
            zzjyVar.zza.zzs.zzd().zzl.zzb(false);
        }
        zzjyVar.zzb(zzjyVar.zza.zzs.zzay().currentTimeMillis(), false);
    }

    public static /* synthetic */ void zzi(zzjz zzjzVar, long j) {
        zzjzVar.zzg();
        zzjzVar.zzl();
        zzjzVar.zzs.zzau().zzk().zzb("Activity paused, time", Long.valueOf(j));
        zzjzVar.zzc.zzb(j);
        if (zzjzVar.zzs.zzc().zzt()) {
            zzjzVar.zzb.zzb(j);
        }
        zzjy zzjyVar = zzjzVar.zza;
        if (!zzjyVar.zza.zzs.zzc().zzn(null, zzea.zzar)) {
            zzjyVar.zza.zzs.zzd().zzl.zzb(true);
        }
    }

    public final void zzl() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zze() {
        return false;
    }
}
