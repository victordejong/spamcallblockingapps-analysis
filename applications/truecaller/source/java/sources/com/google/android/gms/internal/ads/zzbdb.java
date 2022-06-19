package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdb.class */
public final class zzbdb extends zzbez {
    private final AdListener zza;

    public zzbdb(AdListener adListener) {
        this.zza = adListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzb() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzd(zzbcz zzbczVar) {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdFailedToLoad(zzbczVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzf() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzg() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzh() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfa
    public final void zzi() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    public final AdListener zzj() {
        return this.zza;
    }
}
