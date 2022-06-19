package p207q2;

import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.AbstractC1609Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
/* renamed from: q2.a */
/* loaded from: classes-dex2jar.jar:q2/a.class */
public class C4147a implements MediationBannerAd, AdListener {

    /* renamed from: a */
    public MediationBannerAdConfiguration f13085a;

    /* renamed from: b */
    public MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> f13086b;

    /* renamed from: c */
    public AdView f13087c;

    /* renamed from: d */
    public FrameLayout f13088d;

    /* renamed from: e */
    public MediationBannerAdCallback f13089e;

    public C4147a(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.f13085a = mediationBannerAdConfiguration;
        this.f13086b = mediationAdLoadCallback;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f13088d;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(AbstractC1609Ad abstractC1609Ad) {
        MediationBannerAdCallback mediationBannerAdCallback = this.f13089e;
        if (mediationBannerAdCallback != null) {
            mediationBannerAdCallback.onAdOpened();
            this.f13089e.onAdLeftApplication();
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(AbstractC1609Ad abstractC1609Ad) {
        this.f13089e = this.f13086b.onSuccess(this);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(AbstractC1609Ad abstractC1609Ad, AdError adError) {
        com.google.android.gms.ads.AdError adError2 = FacebookMediationAdapter.getAdError(adError);
        Log.w(FacebookMediationAdapter.TAG, adError2.getMessage());
        this.f13086b.onFailure(adError2);
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(AbstractC1609Ad abstractC1609Ad) {
    }
}
