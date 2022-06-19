package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzox.class */
public final class zzox implements zzow {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.ga.ga_app_id", false);

    @Override // com.google.android.gms.internal.measurement.zzow
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzow
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
