package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbey.class */
public final class zzbey extends zzbgw {
    private final AdListener zza;

    public zzbey(AdListener adListener) {
        this.zza = adListener;
    }

    public final AdListener zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzc() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdClicked();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzd() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzf(zzbew zzbewVar) {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdFailedToLoad(zzbewVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzg() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdImpression();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzi() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbgx
    public final void zzj() {
        AdListener adListener = this.zza;
        if (adListener != null) {
            adListener.onAdOpened();
        }
    }
}
