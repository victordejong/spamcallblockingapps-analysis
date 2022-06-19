package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmw.class */
public final class zzmw implements zzmt {
    private static final zzcl<Boolean> zza = new zzcr(zzcm.zza("com.google.android.gms.measurement")).zza("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmt
    public final boolean zzb() {
        return zza.zzc().booleanValue();
    }
}
