package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyd.class */
final class zzyd extends zzyb<zzyc, zzyc> {
    private static void zza(Object obj, zzyc zzycVar) {
        ((zzvm) obj).zzbym = zzycVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zza(zzyc zzycVar, int i, long j) {
        zzycVar.zzb(i << 3, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zza(zzyc zzycVar, int i, zzud zzudVar) {
        zzycVar.zzb((i << 3) | 2, zzudVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzyb
    final /* synthetic */ void zza(zzyc zzycVar, int i, zzyc zzycVar2) {
        zzycVar.zzb((i << 3) | 3, zzycVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zza(zzyc zzycVar, zzyw zzywVar) throws IOException {
        zzycVar.zzb(zzywVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final boolean zza(zzxi zzxiVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzyb
    final /* synthetic */ zzyc zzab(zzyc zzycVar) {
        zzyc zzycVar2 = zzycVar;
        zzycVar2.zzsm();
        return zzycVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ int zzae(zzyc zzycVar) {
        return zzycVar.zzvu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ zzyc zzah(Object obj) {
        return ((zzvm) obj).zzbym;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ zzyc zzai(Object obj) {
        zzyc zzycVar = ((zzvm) obj).zzbym;
        zzyc zzycVar2 = zzycVar;
        if (zzycVar == zzyc.zzyf()) {
            zzycVar2 = zzyc.zzyg();
            zza(obj, zzycVar2);
        }
        return zzycVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ int zzaj(zzyc zzycVar) {
        return zzycVar.zzyh();
    }

    @Override // com.google.android.gms.internal.measurement.zzyb
    final /* synthetic */ void zzb(zzyc zzycVar, int i, long j) {
        zzycVar.zzb((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.measurement.zzyb
    final /* synthetic */ void zzc(zzyc zzycVar, int i, int i2) {
        zzycVar.zzb((i << 3) | 5, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zzc(zzyc zzycVar, zzyw zzywVar) throws IOException {
        zzycVar.zza(zzywVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zzf(Object obj, zzyc zzycVar) {
        zza(obj, zzycVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ void zzg(Object obj, zzyc zzycVar) {
        zza(obj, zzycVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ zzyc zzh(zzyc zzycVar, zzyc zzycVar2) {
        zzyc zzycVar3 = zzycVar;
        zzyc zzycVar4 = zzycVar2;
        return zzycVar4.equals(zzyc.zzyf()) ? zzycVar3 : zzyc.zza(zzycVar3, zzycVar4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final void zzu(Object obj) {
        ((zzvm) obj).zzbym.zzsm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzyb
    public final /* synthetic */ zzyc zzye() {
        return zzyc.zzyg();
    }
}
