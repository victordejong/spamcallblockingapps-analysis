package p154l2;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* renamed from: l2.h */
/* loaded from: classes-dex2jar.jar:l2/h.class */
public final class C3490h extends InterstitialAdLoadCallback {
    @VisibleForTesting

    /* renamed from: a */
    public final AbstractAdViewAdapter f11599a;
    @VisibleForTesting

    /* renamed from: b */
    public final MediationInterstitialListener f11600b;

    public C3490h(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f11599a = abstractAdViewAdapter;
        this.f11600b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f11600b.onAdFailedToLoad(this.f11599a, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(InterstitialAd interstitialAd) {
        InterstitialAd interstitialAd2 = interstitialAd;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f11599a;
        abstractAdViewAdapter.mInterstitialAd = interstitialAd2;
        interstitialAd2.setFullScreenContentCallback(new C3491i(abstractAdViewAdapter, this.f11600b));
        this.f11600b.onAdLoaded(this.f11599a);
    }
}
