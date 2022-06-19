package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzps.class */
public final class zzps implements zzpr {
    public static final zzht<Boolean> zza;
    public static final zzht<Double> zzb;
    public static final zzht<Long> zzc;
    public static final zzht<Long> zzd;
    public static final zzht<String> zze;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.test.boolean_flag", false);
        zzb = zzhrVar.zzc("measurement.test.double_flag", -3.0d);
        zzc = zzhrVar.zza("measurement.test.int_flag", -2L);
        zzd = zzhrVar.zza("measurement.test.long_flag", -1L);
        zze = zzhrVar.zzd("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzpr
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpr
    public final double zzb() {
        return zzb.zze().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpr
    public final long zzc() {
        return zzc.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpr
    public final long zzd() {
        return zzd.zze().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzpr
    public final String zze() {
        return zze.zze();
    }
}
