package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjw.class */
public final class zzjw implements zzjt {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;
    private static final zzcl<Boolean> zzc;
    private static final zzcl<Long> zzd;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.sdk.dynamite.allow_remote_dynamite", false);
        zzb = zzcrVar.zza("measurement.collection.init_params_control_enabled", true);
        zzc = zzcrVar.zza("measurement.sdk.dynamite.use_dynamite2", false);
        zzd = zzcrVar.zza("measurement.id.sdk.dynamite.use_dynamite", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjt
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzjt
    public final boolean zzb() {
        return zzc.zzc().booleanValue();
    }
}
