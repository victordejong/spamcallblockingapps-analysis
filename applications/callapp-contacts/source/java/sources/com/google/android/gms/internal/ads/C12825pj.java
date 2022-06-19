package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
/* renamed from: com.google.android.gms.internal.ads.pj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pj.class */
final class C12825pj implements zzp {

    /* renamed from: a */
    private final /* synthetic */ zzaqt f49653a;

    public C12825pj(zzaqt zzaqtVar) {
        this.f49653a = zzaqtVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        C13088za.zzdz("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        C13088za.zzdz("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        MediationInterstitialListener mediationInterstitialListener;
        C13088za.zzdz("AdMobCustomTabsAdapter overlay is closed.");
        mediationInterstitialListener = this.f49653a.f50149b;
        mediationInterstitialListener.onAdClosed(this.f49653a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        MediationInterstitialListener mediationInterstitialListener;
        C13088za.zzdz("Opening AdMobCustomTabsAdapter overlay.");
        mediationInterstitialListener = this.f49653a.f50149b;
        mediationInterstitialListener.onAdOpened(this.f49653a);
    }
}
