package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzln.class */
public final class zzln implements zzlo {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;
    private static final zzcl<Long> zzd;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.lifecycle.app_backgrounded_engagement", false);
        zzb = zzcrVar.zza("measurement.lifecycle.app_backgrounded_tracking", false);
        zzc = zzcrVar.zza("measurement.lifecycle.app_in_background_parameter", false);
        zzd = zzcrVar.zza("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zzb() {
        return zzb.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final boolean zzc() {
        return zzc.zzc().booleanValue();
    }
}
