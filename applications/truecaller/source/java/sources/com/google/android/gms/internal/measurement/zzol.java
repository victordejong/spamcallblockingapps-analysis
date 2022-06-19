package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzol.class */
public final class zzol implements zzok {
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;
    public static final zzhu zzd;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzc("measurement.id.lifecycle.app_in_background_parameter", 0L);
        zzb = zzhrVar.zze("measurement.lifecycle.app_backgrounded_tracking", true);
        zzc = zzhrVar.zze("measurement.lifecycle.app_in_background_parameter", false);
        zzd = zzhrVar.zzc("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzok
    public final boolean zza() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }
}
