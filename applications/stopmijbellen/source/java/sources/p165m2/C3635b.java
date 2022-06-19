package p165m2;

import android.content.Context;
import android.support.p012v4.media.AbstractC0081a;
import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import p068d2.C2168b;
import p068d2.C2387q;
import p068d2.C2402s;
/* renamed from: m2.b */
/* loaded from: classes-dex2jar.jar:m2/b.class */
public class C3635b extends AbstractC0081a implements MediationInterstitialAd {

    /* renamed from: a */
    public MediationInterstitialAdCallback f11905a;

    /* renamed from: b */
    public final MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> f11906b;

    /* renamed from: c */
    public C2387q f11907c;

    /* renamed from: d */
    public final MediationInterstitialAdConfiguration f11908d;

    public C3635b(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.f11906b = mediationAdLoadCallback;
        this.f11908d = mediationInterstitialAdConfiguration;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: D */
    public void mo1954D(C2387q c2387q) {
        this.f11905a.reportAdClicked();
        this.f11905a.onAdLeftApplication();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: E */
    public void mo1953E(C2387q c2387q) {
        this.f11905a.onAdOpened();
        this.f11905a.reportAdImpression();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: F */
    public void mo1952F(C2387q c2387q) {
        this.f11907c = c2387q;
        this.f11905a = this.f11906b.onSuccess(this);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: G */
    public void mo1951G(C2402s c2402s) {
        AdError createSdkError = AdColonyMediationAdapter.createSdkError();
        Log.w(AdColonyMediationAdapter.TAG, createSdkError.getMessage());
        this.f11906b.onFailure(createSdkError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        this.f11907c.m3614d();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: x */
    public void mo1947x(C2387q c2387q) {
        this.f11905a.onAdClosed();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: y */
    public void mo1946y(C2387q c2387q) {
        C2168b.m3787k(c2387q.f8444i, this);
    }
}
