package p137j7;

import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.jirbo.adcolony.AdColonyAdapter;
import p068d2.AbstractC2328k;
import p068d2.C2319j;
import p068d2.C2402s;
/* renamed from: j7.b */
/* loaded from: classes2-dex2jar.jar:j7/b.class */
public class C3286b extends AbstractC2328k {

    /* renamed from: d */
    public MediationBannerListener f11127d;

    /* renamed from: e */
    public AdColonyAdapter f11128e;

    public C3286b(AdColonyAdapter adColonyAdapter, MediationBannerListener mediationBannerListener) {
        this.f11127d = mediationBannerListener;
        this.f11128e = adColonyAdapter;
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: a */
    public void mo1961a(C2319j c2319j) {
        AdColonyAdapter adColonyAdapter;
        MediationBannerListener mediationBannerListener = this.f11127d;
        if (mediationBannerListener == null || (adColonyAdapter = this.f11128e) == null) {
            return;
        }
        mediationBannerListener.onAdClicked(adColonyAdapter);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: b */
    public void mo1960b(C2319j c2319j) {
        AdColonyAdapter adColonyAdapter;
        MediationBannerListener mediationBannerListener = this.f11127d;
        if (mediationBannerListener == null || (adColonyAdapter = this.f11128e) == null) {
            return;
        }
        mediationBannerListener.onAdClosed(adColonyAdapter);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: c */
    public void mo1959c(C2319j c2319j) {
        AdColonyAdapter adColonyAdapter;
        MediationBannerListener mediationBannerListener = this.f11127d;
        if (mediationBannerListener == null || (adColonyAdapter = this.f11128e) == null) {
            return;
        }
        mediationBannerListener.onAdLeftApplication(adColonyAdapter);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: d */
    public void mo1958d(C2319j c2319j) {
        AdColonyAdapter adColonyAdapter;
        MediationBannerListener mediationBannerListener = this.f11127d;
        if (mediationBannerListener == null || (adColonyAdapter = this.f11128e) == null) {
            return;
        }
        mediationBannerListener.onAdOpened(adColonyAdapter);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: e */
    public void mo1957e(C2319j c2319j) {
        AdColonyAdapter adColonyAdapter;
        MediationBannerListener mediationBannerListener = this.f11127d;
        if (mediationBannerListener == null || (adColonyAdapter = this.f11128e) == null) {
            return;
        }
        adColonyAdapter.f7258d = c2319j;
        mediationBannerListener.onAdLoaded(adColonyAdapter);
    }

    @Override // p068d2.AbstractC2328k
    /* renamed from: f */
    public void mo1956f(C2402s c2402s) {
        if (this.f11127d == null || this.f11128e == null) {
            return;
        }
        AdError createSdkError = AdColonyMediationAdapter.createSdkError();
        Log.w(AdColonyMediationAdapter.TAG, createSdkError.getMessage());
        this.f11127d.onAdFailedToLoad(this.f11128e, createSdkError);
    }
}
