package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyc.class */
public final class zzbyc implements zzo {
    public final /* synthetic */ zzbye zza;

    public zzbyc(zzbye zzbyeVar) {
        this.zza = zzbyeVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbp() {
        MediationInterstitialListener mediationInterstitialListener;
        zzcgt.zzd("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.zza.zzb;
        mediationInterstitialListener.onAdOpened(this.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbq() {
        zzcgt.zzd("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbr() {
        zzcgt.zzd("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzbs(int i) {
        MediationInterstitialListener mediationInterstitialListener;
        zzcgt.zzd("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.zza.zzb;
        mediationInterstitialListener.onAdClosed(this.zza);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzd() {
        zzcgt.zzd("Delay close AdMobCustomTabsAdapter overlay.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zze() {
    }
}
