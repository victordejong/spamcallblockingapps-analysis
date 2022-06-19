package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjr.class */
public final class zzjr implements zzjs {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Long> zzb;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.upload_dsid_enabled", true);
        zzb = zzcrVar.zza("measurement.id.upload_dsid_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }
}
