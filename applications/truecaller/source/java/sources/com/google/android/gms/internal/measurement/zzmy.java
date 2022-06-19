package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmy.class */
public final class zzmy implements zzmx {
    public static final zzhu zza;
    public static final zzhu zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.androidId.delete_feature", true);
        zzb = zzhrVar.zze("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzmx
    public final boolean zza() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
