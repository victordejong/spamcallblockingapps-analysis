package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgnh.class */
final class zzgnh extends zzgnf<zzgng, zzgng> {
    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ int zza(zzgng zzgngVar) {
        return zzgngVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ int zzb(zzgng zzgngVar) {
        return zzgngVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ zzgng zzc(Object obj) {
        zzgkl zzgklVar = (zzgkl) obj;
        zzgng zzgngVar = zzgklVar.zzc;
        zzgng zzgngVar2 = zzgngVar;
        if (zzgngVar == zzgng.zzc()) {
            zzgngVar2 = zzgng.zze();
            zzgklVar.zzc = zzgngVar2;
        }
        return zzgngVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ zzgng zzd(Object obj) {
        return ((zzgkl) obj).zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ zzgng zze(zzgng zzgngVar, zzgng zzgngVar2) {
        zzgng zzgngVar3 = zzgngVar2;
        return zzgngVar3.equals(zzgng.zzc()) ? zzgngVar : zzgng.zzd(zzgngVar, zzgngVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ zzgng zzf() {
        return zzgng.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ zzgng zzg(zzgng zzgngVar) {
        zzgngVar.zzf();
        return zzgngVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ void zzh(zzgng zzgngVar, int i, int i2) {
        zzgngVar.zzh((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ void zzi(zzgng zzgngVar, int i, long j) {
        zzgngVar.zzh((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ void zzj(zzgng zzgngVar, int i, zzgng zzgngVar2) {
        zzgngVar.zzh((i << 3) | 3, zzgngVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ void zzk(zzgng zzgngVar, int i, zzgjf zzgjfVar) {
        zzgngVar.zzh((i << 3) | 2, zzgjfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* bridge */ /* synthetic */ void zzl(zzgng zzgngVar, int i, long j) {
        zzgngVar.zzh(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final void zzm(Object obj) {
        ((zzgkl) obj).zzc.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ void zzn(Object obj, zzgng zzgngVar) {
        ((zzgkl) obj).zzc = zzgngVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ void zzo(Object obj, zzgng zzgngVar) {
        ((zzgkl) obj).zzc = zzgngVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final boolean zzq(zzgmg zzgmgVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgnf
    public final /* synthetic */ void zzr(zzgng zzgngVar, zzgjt zzgjtVar) throws IOException {
        zzgngVar.zzi(zzgjtVar);
    }
}
