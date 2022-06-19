package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmj.class */
final class zzmj extends zzmh<zzmi, zzmi> {
    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ void zza(zzmi zzmiVar, int i, long j) {
        zzmiVar.zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ zzmi zzb() {
        return zzmi.zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ void zzc(Object obj, zzmi zzmiVar) {
        ((zzkd) obj).zzc = zzmiVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ zzmi zzd(Object obj) {
        return ((zzkd) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final void zze(Object obj) {
        ((zzkd) obj).zzc.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ zzmi zzf(zzmi zzmiVar, zzmi zzmiVar2) {
        zzmi zzmiVar3 = zzmiVar2;
        return zzmiVar3.equals(zzmi.zza()) ? zzmiVar : zzmi.zzc(zzmiVar, zzmiVar3);
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ int zzg(zzmi zzmiVar) {
        return zzmiVar.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ int zzh(zzmi zzmiVar) {
        return zzmiVar.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzmh
    public final /* bridge */ /* synthetic */ void zzi(zzmi zzmiVar, zzjl zzjlVar) throws IOException {
        zzmiVar.zzi(zzjlVar);
    }
}
