package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzor.class */
public final class zzor implements zzoq {
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;
    public static final zzhu zzd;
    public static final zzhu zze;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.test.boolean_flag", false);
        zzb = zzhrVar.zzb("measurement.test.double_flag", -3.0d);
        zzc = zzhrVar.zzc("measurement.test.int_flag", -2L);
        zzd = zzhrVar.zzc("measurement.test.long_flag", -1L);
        zze = zzhrVar.zzd("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzoq
    public final double zza() {
        return ((Double) zzb.zzb()).doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoq
    public final long zzb() {
        return ((Long) zzc.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoq
    public final long zzc() {
        return ((Long) zzd.zzb()).longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzoq
    public final String zzd() {
        return (String) zze.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzoq
    public final boolean zze() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
