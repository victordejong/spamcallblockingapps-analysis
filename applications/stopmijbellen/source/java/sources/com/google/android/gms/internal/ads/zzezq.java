package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzezq.class */
final class zzezq implements zzepm<zzcyp> {
    public final /* synthetic */ zzezr zza;

    public zzezq(zzezr zzezrVar) {
        this.zza = zzezrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzepm
    public final /* bridge */ /* synthetic */ void zzb(zzcyp zzcypVar) {
        zzezj zzezjVar;
        zzezj zzezjVar2;
        zzcyp zzcypVar2 = zzcypVar;
        synchronized (this.zza) {
            zzcyp zzcypVar3 = this.zza.zza;
            if (zzcypVar3 != null) {
                zzcypVar3.zzT();
            }
            zzezr zzezrVar = this.zza;
            zzezrVar.zza = zzcypVar2;
            zzcypVar2.zzc(zzezrVar);
            zzezjVar = this.zza.zzg;
            zzezr zzezrVar2 = this.zza;
            zzezjVar2 = zzezrVar2.zzg;
            zzezjVar.zzl(new zzcyq(zzcypVar2, zzezrVar2, zzezjVar2));
            zzcypVar2.zzU();
        }
    }
}
