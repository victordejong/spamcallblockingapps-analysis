package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzekn.class */
public final class zzekn implements zzelx<zzcvh> {
    public final /* synthetic */ zzeko zza;

    public zzekn(zzeko zzekoVar) {
        this.zza = zzekoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final /* bridge */ /* synthetic */ void zzb(zzcvh zzcvhVar) {
        zzcvh zzcvhVar2;
        zzcvh zzcvhVar3;
        zzcvh zzcvhVar4;
        zzcvh zzcvhVar5 = zzcvhVar;
        synchronized (this.zza) {
            zzcvhVar2 = this.zza.zzg;
            if (zzcvhVar2 != null) {
                zzcvhVar4 = this.zza.zzg;
                zzcvhVar4.zzT();
            }
            this.zza.zzg = zzcvhVar5;
            zzcvhVar3 = this.zza.zzg;
            zzcvhVar3.zzS();
        }
    }
}
