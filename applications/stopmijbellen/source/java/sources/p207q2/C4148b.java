package p207q2;

import android.content.Context;
import android.util.Log;
import com.facebook.ads.AbstractC1609Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: q2.b */
/* loaded from: classes-dex2jar.jar:q2/b.class */
public class C4148b implements MediationInterstitialAd, InterstitialAdExtendedListener {

    /* renamed from: a */
    public MediationInterstitialAdConfiguration f13090a;

    /* renamed from: b */
    public MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> f13091b;

    /* renamed from: c */
    public InterstitialAd f13092c;

    /* renamed from: d */
    public MediationInterstitialAdCallback f13093d;

    /* renamed from: e */
    public AtomicBoolean f13094e = new AtomicBoolean();

    /* renamed from: f */
    public AtomicBoolean f13095f = new AtomicBoolean();

    public C4148b(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.f13090a = mediationInterstitialAdConfiguration;
        this.f13091b = mediationAdLoadCallback;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.f13093d;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
        this.f13093d = this.f13091b.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC1609Ad abstractC1609Ad, AdError adError) {
        com.google.android.gms.ads.AdError adError2 = FacebookMediationAdapter.getAdError(adError);
        Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
        if (!this.f13094e.get()) {
            this.f13091b.onFailure(adError2);
            return;
        }
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.f13093d;
        if (mediationInterstitialAdCallback == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdOpened();
        this.f13093d.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (this.f13095f.getAndSet(true) || (mediationInterstitialAdCallback = this.f13093d) == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(AbstractC1609Ad abstractC1609Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback;
        if (this.f13095f.getAndSet(true) || (mediationInterstitialAdCallback = this.f13093d) == null) {
            return;
        }
        mediationInterstitialAdCallback.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(AbstractC1609Ad abstractC1609Ad) {
        MediationInterstitialAdCallback mediationInterstitialAdCallback = this.f13093d;
        if (mediationInterstitialAdCallback != null) {
            mediationInterstitialAdCallback.onAdOpened();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdCompleted() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerFailed() {
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerSucceeded() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.f13094e.set(true);
        if (!this.f13092c.show()) {
            Log.w(FacebookMediationAdapter.TAG, new com.google.android.gms.ads.AdError(110, "Failed to present interstitial ad.", FacebookMediationAdapter.ERROR_DOMAIN).getMessage());
            MediationInterstitialAdCallback mediationInterstitialAdCallback = this.f13093d;
            if (mediationInterstitialAdCallback == null) {
                return;
            }
            mediationInterstitialAdCallback.onAdOpened();
            this.f13093d.onAdClosed();
        }
    }
}
