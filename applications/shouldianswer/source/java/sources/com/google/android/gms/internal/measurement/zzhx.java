package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhx.class */
final class zzhx extends zzhv<zzhy, zzhy> {
    /* renamed from: zza */
    private static void zza2(Object obj, zzhy zzhyVar) {
        ((zzfd) obj).zzb = zzhyVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ zzhy zza() {
        return zzhy.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ zzhy zza(zzhy zzhyVar) {
        zzhy zzhyVar2 = zzhyVar;
        zzhyVar2.zzc();
        return zzhyVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i, int i2) {
        zzhyVar.zza((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ void zza(zzhy zzhyVar, int i, long j) {
        zzhyVar.zza(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ void zza(zzhy zzhyVar, int i, zzdu zzduVar) {
        zzhyVar.zza((i << 3) | 2, zzduVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zza(zzhy zzhyVar, int i, zzhy zzhyVar2) {
        zzhyVar.zza((i << 3) | 3, zzhyVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ void zza(zzhy zzhyVar, zzis zzisVar) {
        zzhyVar.zzb(zzisVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* bridge */ /* synthetic */ void zza(Object obj, zzhy zzhyVar) {
        zza2(obj, zzhyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final boolean zza(zzhe zzheVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ zzhy zzb(Object obj) {
        return ((zzfd) obj).zzb;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    final /* synthetic */ void zzb(zzhy zzhyVar, int i, long j) {
        zzhyVar.zza((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ void zzb(zzhy zzhyVar, zzis zzisVar) {
        zzhyVar.zza(zzisVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ void zzb(Object obj, zzhy zzhyVar) {
        zza2(obj, zzhyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ zzhy zzc(Object obj) {
        zzhy zzhyVar = ((zzfd) obj).zzb;
        zzhy zzhyVar2 = zzhyVar;
        if (zzhyVar == zzhy.zza()) {
            zzhyVar2 = zzhy.zzb();
            zza2(obj, zzhyVar2);
        }
        return zzhyVar2;
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ zzhy zzc(zzhy zzhyVar, zzhy zzhyVar2) {
        zzhy zzhyVar3 = zzhyVar;
        zzhy zzhyVar4 = zzhyVar2;
        return zzhyVar4.equals(zzhy.zza()) ? zzhyVar3 : zzhy.zza(zzhyVar3, zzhyVar4);
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final void zzd(Object obj) {
        ((zzfd) obj).zzb.zzc();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ int zze(zzhy zzhyVar) {
        return zzhyVar.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzhv
    public final /* synthetic */ int zzf(zzhy zzhyVar) {
        return zzhyVar.zze();
    }
}
