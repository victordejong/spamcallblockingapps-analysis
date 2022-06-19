package p165m2;

import android.util.Log;
import android.view.View;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import p068d2.AbstractC2328k;
import p068d2.C2319j;
import p068d2.C2402s;
/* renamed from: m2.a */
/* loaded from: classes-dex2jar.jar:m2/a.class */
public class C3634a extends AbstractC2328k implements MediationBannerAd {

    /* renamed from: d */
    public MediationBannerAdCallback f11901d;

    /* renamed from: e */
    public final MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> f11902e;

    /* renamed from: f */
    public C2319j f11903f;

    /* renamed from: g */
    public final MediationBannerAdConfiguration f11904g;

    public C3634a(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.f11902e = mediationAdLoadCallback;
        this.f11904g = mediationBannerAdConfiguration;
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: a */
    public void mo1961a(C2319j c2319j) {
        this.f11901d.reportAdClicked();
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: b */
    public void mo1960b(C2319j c2319j) {
        this.f11901d.onAdClosed();
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: c */
    public void mo1959c(C2319j c2319j) {
        this.f11901d.onAdLeftApplication();
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: d */
    public void mo1958d(C2319j c2319j) {
        this.f11901d.onAdOpened();
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: e */
    public void mo1957e(C2319j c2319j) {
        this.f11903f = c2319j;
        this.f11901d = this.f11902e.onSuccess(this);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: f */
    public void mo1956f(C2402s c2402s) {
        AdError createSdkError = AdColonyMediationAdapter.createSdkError();
        Log.w(AdColonyMediationAdapter.TAG, createSdkError.getMessage());
        this.f11902e.onFailure(createSdkError);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f11903f;
    }
}
