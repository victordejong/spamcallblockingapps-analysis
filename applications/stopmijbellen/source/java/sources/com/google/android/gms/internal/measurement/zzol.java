package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzol.class */
public final class zzol implements zzok {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.service.use_appinfo_modified", true);

    @Override // com.google.android.gms.internal.measurement.zzok
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzok
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
