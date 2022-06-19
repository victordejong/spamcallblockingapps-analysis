package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvr.class */
public final class zzbvr implements zzcjv<zzbuo> {
    public final /* synthetic */ zzbvs zza;

    public zzbvr(zzbvs zzbvsVar) {
        this.zza = zzbvsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final /* bridge */ /* synthetic */ void zza(zzbuo zzbuoVar) {
        final zzbuo zzbuoVar2 = zzbuoVar;
        zzcjm.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvq
            @Override // java.lang.Runnable
            public final void run() {
                zzbuo zzbuoVar3 = zzbuoVar2;
                zzbuoVar3.zzr("/result", zzbrs.zzo);
                zzbuoVar3.zzc();
            }
        });
    }
}
