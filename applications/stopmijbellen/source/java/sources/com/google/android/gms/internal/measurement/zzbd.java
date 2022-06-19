package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbd.class */
final class zzbd implements zzbf {
    private final zzg zza;
    private final String zzb;

    public zzbd(zzg zzgVar, String str) {
        this.zza = zzgVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbf
    public final zzg zza(zzap zzapVar) {
        zzg zzc = this.zza.zzc();
        zzc.zzg(this.zzb, zzapVar);
        return zzc;
    }
}
