package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzoo.class */
public final class zzoo implements zzon {
    public static final zzhu zza;
    public static final zzhu zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.validation.internal_limits_internal_event_params", true);
        zzb = zzhrVar.zzc("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzon
    public final boolean zza() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
