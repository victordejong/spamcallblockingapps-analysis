package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlz.class */
public final class zzlz implements zzma {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Double> zzb;
    private static final zzcl<Long> zzc;
    private static final zzcl<Long> zzd;
    private static final zzcl<String> zze;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.test.boolean_flag", false);
        zzb = zzcrVar.zza("measurement.test.double_flag", -3.0d);
        zzc = zzcrVar.zza("measurement.test.int_flag", -2L);
        zzd = zzcrVar.zza("measurement.test.long_flag", -1L);
        zze = zzcrVar.zza("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final double zzb() {
        return zzb.zzc().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final long zzc() {
        return zzc.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final long zzd() {
        return zzd.zzc().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzma
    public final String zze() {
        return zze.zzc();
    }
}
