package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzne.class */
public final class zzne implements zznd {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.androidId.delete_feature", true);
        zzb = zzhrVar.zzb("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
