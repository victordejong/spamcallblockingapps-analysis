package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqg.class */
public final class zzcqg implements zzdrp {
    private final zzcqb zzgrc;

    public zzcqg(zzcqb zzcqbVar) {
        this.zzgrc = zzcqbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrkVar, String str, Throwable th) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() || zzdrk.RENDERER != zzdrkVar || this.zzgrc.zzaru() == 0) {
            return;
        }
        this.zzgrc.zzer(zzr.zzky().elapsedRealtime() - this.zzgrc.zzaru());
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrkVar, String str) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() || zzdrk.RENDERER != zzdrkVar) {
            return;
        }
        this.zzgrc.zzfe(zzr.zzky().elapsedRealtime());
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrkVar, String str) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue() || zzdrk.RENDERER != zzdrkVar || this.zzgrc.zzaru() == 0) {
            return;
        }
        this.zzgrc.zzer(zzr.zzky().elapsedRealtime() - this.zzgrc.zzaru());
    }
}
