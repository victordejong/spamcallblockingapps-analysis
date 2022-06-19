package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznm.class */
public final class zznm implements zznl {
    public static final zzfg<Boolean> zza = new zzfe(zzex.zza("com.google.android.gms.measurement")).zzb("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.zznl
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznl
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
