package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziy.class */
public final class zziy implements zziv {
    private static final zzcl<Boolean> zza = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.module.collection.conditionally_omit_admob_app_id", true);

    @Override // com.google.android.gms.internal.measurement.zziv
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }
}
