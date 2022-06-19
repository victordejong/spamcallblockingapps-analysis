package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.zzl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjq.class */
public final class zzjq extends zzf {
    protected final zzjp zza = new zzjp(this);
    protected final zzjo zzb = new zzjo(this);
    protected final zzjm zzc = new zzjm(this);
    private Handler zzd;

    public zzjq(zzfl zzflVar) {
        super(zzflVar);
    }

    public static /* synthetic */ void zzh(zzjq zzjqVar, long j) {
        zzjqVar.zzg();
        zzjqVar.zzl();
        zzjqVar.zzx.zzat().zzk().zzb("Activity resumed, time", Long.valueOf(j));
        if (zzjqVar.zzx.zzc().zzn(null, zzdw.zzat)) {
            if (zzjqVar.zzx.zzc().zzt() || zzjqVar.zzx.zzd().zzq.zza()) {
                zzjqVar.zzb.zza(j);
            }
            zzjqVar.zzc.zza();
        } else {
            zzjqVar.zzc.zza();
            if (zzjqVar.zzx.zzc().zzt()) {
                zzjqVar.zzb.zza(j);
            }
        }
        zzjp zzjpVar = zzjqVar.zza;
        zzjpVar.zza.zzg();
        if (!zzjpVar.zza.zzx.zzF()) {
            return;
        }
        if (!zzjpVar.zza.zzx.zzc().zzn(null, zzdw.zzat)) {
            zzjpVar.zza.zzx.zzd().zzq.zzb(false);
        }
        zzjpVar.zzb(zzjpVar.zza.zzx.zzax().currentTimeMillis(), false);
    }

    public static /* synthetic */ void zzi(zzjq zzjqVar, long j) {
        zzjqVar.zzg();
        zzjqVar.zzl();
        zzjqVar.zzx.zzat().zzk().zzb("Activity paused, time", Long.valueOf(j));
        zzjqVar.zzc.zzb(j);
        if (zzjqVar.zzx.zzc().zzt()) {
            zzjqVar.zzb.zzb(j);
        }
        zzjp zzjpVar = zzjqVar.zza;
        if (!zzjpVar.zza.zzx.zzc().zzn(null, zzdw.zzat)) {
            zzjpVar.zza.zzx.zzd().zzq.zzb(true);
        }
    }

    public final void zzl() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new zzl(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return false;
    }
}
