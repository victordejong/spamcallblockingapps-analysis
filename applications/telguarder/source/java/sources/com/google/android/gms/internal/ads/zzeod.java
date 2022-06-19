package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeod.class */
final class zzeod extends zzeob<zzeoe, zzeoe> {
    private static void zza(Object obj, zzeoe zzeoeVar) {
        ((zzelb) obj).zziqk = zzeoeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zza(zzeoe zzeoeVar, int i, long j) {
        zzeoeVar.zzd(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zza(zzeoe zzeoeVar, int i, zzejr zzejrVar) {
        zzeoeVar.zzd((i << 3) | 2, zzejrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    final /* synthetic */ void zza(zzeoe zzeoeVar, int i, zzeoe zzeoeVar2) {
        zzeoeVar.zzd((i << 3) | 3, zzeoeVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zza(zzeoe zzeoeVar, zzeoy zzeoyVar) throws IOException {
        zzeoeVar.zzb(zzeoyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final boolean zza(zzend zzendVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final void zzak(Object obj) {
        ((zzelb) obj).zziqk.zzbgf();
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    final /* synthetic */ zzeoe zzaq(zzeoe zzeoeVar) {
        zzeoe zzeoeVar2 = zzeoeVar;
        zzeoeVar2.zzbgf();
        return zzeoeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ int zzau(zzeoe zzeoeVar) {
        return zzeoeVar.zzbik();
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ zzeoe zzay(Object obj) {
        return ((zzelb) obj).zziqk;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ zzeoe zzaz(Object obj) {
        zzeoe zzeoeVar = ((zzelb) obj).zziqk;
        zzeoe zzeoeVar2 = zzeoeVar;
        if (zzeoeVar == zzeoe.zzbkz()) {
            zzeoeVar2 = zzeoe.zzbla();
            zza(obj, zzeoeVar2);
        }
        return zzeoeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    final /* synthetic */ void zzb(zzeoe zzeoeVar, int i, long j) {
        zzeoeVar.zzd((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ int zzba(zzeoe zzeoeVar) {
        return zzeoeVar.zzblb();
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ zzeoe zzbky() {
        return zzeoe.zzbla();
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    final /* synthetic */ void zzc(zzeoe zzeoeVar, int i, int i2) {
        zzeoeVar.zzd((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zzc(zzeoe zzeoeVar, zzeoy zzeoyVar) throws IOException {
        zzeoeVar.zza(zzeoyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zzi(Object obj, zzeoe zzeoeVar) {
        zza(obj, zzeoeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ void zzj(Object obj, zzeoe zzeoeVar) {
        zza(obj, zzeoeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    public final /* synthetic */ zzeoe zzk(zzeoe zzeoeVar, zzeoe zzeoeVar2) {
        zzeoe zzeoeVar3 = zzeoeVar;
        zzeoe zzeoeVar4 = zzeoeVar2;
        return zzeoeVar4.equals(zzeoe.zzbkz()) ? zzeoeVar3 : zzeoe.zza(zzeoeVar3, zzeoeVar4);
    }
}
