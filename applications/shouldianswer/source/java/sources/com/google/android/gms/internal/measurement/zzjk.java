package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjk.class */
public final class zzjk implements zzjh {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Long> zzb;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.service.disable_install_state_reporting", false);
        zzb = zzcrVar.zza("measurement.id.service.disable_install_state_reporting", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzjh
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }
}
