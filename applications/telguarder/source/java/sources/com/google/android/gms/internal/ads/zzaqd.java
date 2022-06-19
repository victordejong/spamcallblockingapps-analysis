package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqd.class */
final class zzaqd implements zzq {
    private final /* synthetic */ zzaqa zzdpb;

    public zzaqd(zzaqa zzaqaVar) {
        this.zzdpb = zzaqaVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        MediationInterstitialListener mediationInterstitialListener;
        zzazk.zzdy("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.zzdpb.zzdoz;
        mediationInterstitialListener.onAdClosed(this.zzdpb);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        MediationInterstitialListener mediationInterstitialListener;
        zzazk.zzdy("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.zzdpb.zzdoz;
        mediationInterstitialListener.onAdOpened(this.zzdpb);
    }
}
