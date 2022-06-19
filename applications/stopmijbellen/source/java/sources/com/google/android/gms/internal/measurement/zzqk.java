package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzqk.class */
public final class zzqk implements zzqj {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.zzqj
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzqj
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
