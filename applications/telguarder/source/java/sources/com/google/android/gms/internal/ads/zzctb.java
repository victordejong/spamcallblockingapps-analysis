package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctb.class */
public final class zzctb implements zzdzl<zzblv> {
    private final /* synthetic */ zzcta zzgue;

    public zzctb(zzcta zzctaVar) {
        this.zzgue = zzctaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(zzblv zzblvVar) {
        zzblvVar.zzakb();
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzbmr zzbmrVar;
        zzbrp zzbrpVar;
        zzbmrVar = this.zzgue.zzguc;
        zzvg zze = zzbmrVar.zzagj().zze(th);
        zzbrpVar = this.zzgue.zzgas;
        zzbrpVar.zzc(zze);
        zzdod.zza(zze.errorCode, th, "DelayedBannerAd.onFailure");
    }
}
