package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjz.class */
final class zzjz extends zzjx<zzka, zzka> {
    private static void zza(Object obj, zzka zzkaVar) {
        ((zzhi) obj).zztc = zzkaVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zza(zzka zzkaVar, int i, long j) {
        zzkaVar.zzb(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zza(zzka zzkaVar, int i, zzfx zzfxVar) {
        zzkaVar.zzb((i << 3) | 2, zzfxVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    final /* synthetic */ void zza(zzka zzkaVar, int i, zzka zzkaVar2) {
        zzkaVar.zzb((i << 3) | 3, zzkaVar2);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zza(zzka zzkaVar, zzku zzkuVar) {
        zzkaVar.zzb(zzkuVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final boolean zza(zzjg zzjgVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ zzka zzaa(Object obj) {
        return ((zzhi) obj).zztc;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ zzka zzab(Object obj) {
        zzka zzkaVar = ((zzhi) obj).zztc;
        zzka zzkaVar2 = zzkaVar;
        if (zzkaVar == zzka.zzja()) {
            zzkaVar2 = zzka.zzjb();
            zza(obj, zzkaVar2);
        }
        return zzkaVar2;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ int zzac(zzka zzkaVar) {
        return zzkaVar.zzjc();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    final /* synthetic */ void zzb(zzka zzkaVar, int i, long j) {
        zzkaVar.zzb((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    final /* synthetic */ void zzc(zzka zzkaVar, int i, int i2) {
        zzkaVar.zzb((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zzc(zzka zzkaVar, zzku zzkuVar) {
        zzkaVar.zza(zzkuVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zzg(Object obj, zzka zzkaVar) {
        zza(obj, zzkaVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ void zzh(Object obj, zzka zzkaVar) {
        zza(obj, zzkaVar);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ zzka zzi(zzka zzkaVar, zzka zzkaVar2) {
        zzka zzkaVar3 = zzkaVar;
        zzka zzkaVar4 = zzkaVar2;
        return zzkaVar4.equals(zzka.zzja()) ? zzkaVar3 : zzka.zza(zzkaVar3, zzkaVar4);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ zzka zziz() {
        return zzka.zzjb();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final void zzm(Object obj) {
        ((zzhi) obj).zztc.zzes();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    final /* synthetic */ zzka zzs(zzka zzkaVar) {
        zzka zzkaVar2 = zzkaVar;
        zzkaVar2.zzes();
        return zzkaVar2;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjx
    public final /* synthetic */ int zzw(zzka zzkaVar) {
        return zzkaVar.zzgs();
    }
}
