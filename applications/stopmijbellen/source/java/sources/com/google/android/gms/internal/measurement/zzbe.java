package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbe.class */
final class zzbe implements zzbf {
    private final zzg zza;
    private final String zzb;

    public zzbe(zzg zzgVar, String str) {
        this.zza = zzgVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzbf
    public final zzg zza(zzap zzapVar) {
        zzg zzc = this.zza.zzc();
        zzc.zzf(this.zzb, zzapVar);
        return zzc;
    }
}
