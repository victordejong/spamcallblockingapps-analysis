package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznd.class */
public final class zznd implements zznc {
    public static final zzfg<Boolean> zza = new zzfe(zzex.zza("com.google.android.gms.measurement")).zzb("measurement.client.safer_resources", true);

    @Override // com.google.android.gms.internal.measurement.zznc
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznc
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
