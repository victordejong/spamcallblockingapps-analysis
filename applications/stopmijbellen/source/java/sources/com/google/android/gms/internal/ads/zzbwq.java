package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwq.class */
public final class zzbwq {
    private final zzbvt zza;
    private zzfxa<zzbvu> zzb;

    public zzbwq(zzbvt zzbvtVar) {
        this.zza = zzbvtVar;
    }

    private final void zzd() {
        if (this.zzb == null) {
            final zzcjr zzcjrVar = new zzcjr();
            this.zzb = zzcjrVar;
            this.zza.zzb(null).zzi(new zzcjv() { // from class: com.google.android.gms.internal.ads.zzbwn
                @Override // com.google.android.gms.internal.ads.zzcjv
                public final void zza(Object obj) {
                    zzcjr.this.zzd((zzbvu) obj);
                }
            }, new zzcjt() { // from class: com.google.android.gms.internal.ads.zzbwm
                @Override // com.google.android.gms.internal.ads.zzcjt
                public final void zza() {
                    zzcjr.this.zze(new zzbvw("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final <I, O> zzbwt<I, O> zza(String str, zzbwa<I> zzbwaVar, zzbvz<O> zzbvzVar) {
        zzd();
        return new zzbwt<>(this.zzb, "google.afma.activeView.handleUpdate", zzbwaVar, zzbvzVar);
    }

    public final void zzb(final String str, final zzbrt<? super zzbvu> zzbrtVar) {
        zzd();
        this.zzb = zzfwq.zzn(this.zzb, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzbwp
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                zzbvu zzbvuVar = (zzbvu) obj;
                zzbvuVar.zzq(str, zzbrtVar);
                return zzfwq.zzi(zzbvuVar);
            }
        }, zzcjm.zzf);
    }

    public final void zzc(final String str, final zzbrt<? super zzbvu> zzbrtVar) {
        this.zzb = zzfwq.zzm(this.zzb, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzbwo
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                zzbvu zzbvuVar = (zzbvu) obj;
                zzbvuVar.zzr(str, zzbrtVar);
                return zzbvuVar;
            }
        }, zzcjm.zzf);
    }
}
