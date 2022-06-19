package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznh.class */
public final class zznh implements zzng {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;
    public static final zzht<Long> zzc;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.frontend.directly_maybe_log_error_events", false);
        zzb = zzhrVar.zzb("measurement.upload.directly_maybe_log_error_events", true);
        zzc = zzhrVar.zza("measurement.id.frontend.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzng
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }
}
