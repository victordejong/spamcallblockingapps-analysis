package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
public final class zzku implements zzkr {
    private static final zzcl<Boolean> zza = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.lifecycle.app_background_timestamp_when_backgrounded", true);

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }
}
