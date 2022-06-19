package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwj.class */
final class zzcwj implements zzbsx {
    private final /* synthetic */ zzcrl zzgvx;
    private boolean zzgwj = false;
    private final /* synthetic */ zzbaa zzgwk;
    private final /* synthetic */ zzcwi zzgwl;

    public zzcwj(zzcwi zzcwiVar, zzcrl zzcrlVar, zzbaa zzbaaVar) {
        this.zzgwl = zzcwiVar;
        this.zzgvx = zzcrlVar;
        this.zzgwk = zzbaaVar;
    }

    private final void zzm(zzvg zzvgVar) {
        zzdom zzdomVar = zzdom.INTERNAL_ERROR;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwj)).booleanValue()) {
            zzdomVar = zzdom.NO_FILL;
        }
        this.zzgwk.setException(new zzcrn(zzdomVar, zzvgVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void onAdFailedToLoad(int i) {
        if (this.zzgwj) {
            return;
        }
        zzm(new zzvg(i, zzcwi.zza(this.zzgvx.zzcio, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void onAdLoaded() {
        synchronized (this) {
            this.zzgwk.set(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzc(zzvg zzvgVar) {
        synchronized (this) {
            this.zzgwj = true;
            zzm(zzvgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsx
    public final void zzf(int i, String str) {
        synchronized (this) {
            if (this.zzgwj) {
                return;
            }
            this.zzgwj = true;
            String str2 = str;
            if (str == null) {
                str2 = zzcwi.zza(this.zzgvx.zzcio, i);
            }
            zzm(new zzvg(i, str2, AdError.UNDEFINED_DOMAIN, null, null));
        }
    }
}
