package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pj.class */
final class pj implements zzp {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzaqt f28281a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pj(zzaqt zzaqtVar) {
        this.f28281a = zzaqtVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        za.zzdz("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        za.zzdz("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        MediationInterstitialListener mediationInterstitialListener;
        za.zzdz("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.f28281a.f28601b;
        mediationInterstitialListener.onAdClosed(this.f28281a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        MediationInterstitialListener mediationInterstitialListener;
        za.zzdz("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.f28281a.f28601b;
        mediationInterstitialListener.onAdOpened(this.f28281a);
    }
}
