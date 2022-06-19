package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcad.class */
final class zzcad implements zzo {
    public final /* synthetic */ zzcaf zza;

    public zzcad(zzcaf zzcafVar) {
        this.zza = zzcafVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        MediationInterstitialListener mediationInterstitialListener;
        zzciz.zze("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.zza.zzb;
        mediationInterstitialListener.onAdOpened(this.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbK() {
        zzciz.zze("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbS() {
        zzciz.zze("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbz() {
        zzciz.zze("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzf(int i) {
        MediationInterstitialListener mediationInterstitialListener;
        zzciz.zze("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.zza.zzb;
        mediationInterstitialListener.onAdClosed(this.zza);
    }
}
