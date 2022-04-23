package p131c.p135b.p154b.p155f;

import android.content.Context;
import android.util.Log;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
/* renamed from: c.b.b.f.b */
/* loaded from: classes-dex2jar.jar:c/b/b/f/b.class */
public final class C2448b implements MediationInterstitialAd, AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdVideoPlaybackListener {

    /* renamed from: g */
    public static final String f9400g = "b";

    /* renamed from: a */
    public final MediationInterstitialAdConfiguration f9401a;

    /* renamed from: b */
    public final MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> f9402b;

    /* renamed from: c */
    public MediationInterstitialAdCallback f9403c;

    /* renamed from: d */
    public final AppLovinSdk f9404d;

    /* renamed from: e */
    public AppLovinInterstitialAdDialog f9405e;

    /* renamed from: f */
    public AppLovinAd f9406f;

    public C2448b(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.f9401a = mediationInterstitialAdConfiguration;
        this.f9402b = mediationAdLoadCallback;
        this.f9404d = AppLovinUtils.retrieveSdk(mediationInterstitialAdConfiguration.m17939e(), mediationInterstitialAdConfiguration.m17942b());
    }

    /* renamed from: a */
    public void m29730a() {
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f9404d, this.f9401a.m17942b());
        this.f9405e = create;
        create.setAdDisplayListener(this);
        this.f9405e.setAdClickListener(this);
        this.f9405e.setAdVideoPlaybackListener(this);
        this.f9404d.getAdService().loadNextAdForAdToken(this.f9401a.m17943a(), this);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Log.d(f9400g, "Interstitial clicked");
        this.f9403c.mo16290C();
        this.f9403c.mo17931k();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        Log.d(f9400g, "Interstitial displayed");
        this.f9403c.mo16291B();
        this.f9403c.mo16286t();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Log.d(f9400g, "Interstitial hidden");
        this.f9403c.mo16292A();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        String str = f9400g;
        Log.d(str, "Interstitial did load ad: " + appLovinAd.getAdIdNumber());
        this.f9406f = appLovinAd;
        this.f9403c = this.f9402b.onSuccess(this);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        String str = f9400g;
        Log.e(str, "Failed to load interstitial ad with error: " + i);
        this.f9402b.mo17937a(Integer.toString(AppLovinUtils.toAdMobErrorCode(i)));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.f9404d.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.f9401a.m17940d()));
        this.f9405e.showAndRender(this.f9406f);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        Log.d(f9400g, "Interstitial video playback began");
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        String str = f9400g;
        Log.d(str, "Interstitial video playback ended at playback percent: " + d + "%");
    }
}
