package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkp.class */
public final class zzkp implements zzkq {
    private static final zzcl<Boolean> zza = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.service.use_appinfo_modified", false);

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }
}
