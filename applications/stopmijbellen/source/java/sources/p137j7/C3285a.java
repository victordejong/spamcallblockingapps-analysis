package p137j7;

import android.support.p012v4.media.AbstractC0081a;
import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.jirbo.adcolony.AdColonyAdapter;
import p068d2.C2168b;
import p068d2.C2387q;
import p068d2.C2402s;
/* renamed from: j7.a */
/* loaded from: classes2-dex2jar.jar:j7/a.class */
public class C3285a extends AbstractC0081a {

    /* renamed from: a */
    public MediationInterstitialListener f11125a;

    /* renamed from: b */
    public AdColonyAdapter f11126b;

    public C3285a(AdColonyAdapter adColonyAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f11125a = mediationInterstitialListener;
        this.f11126b = adColonyAdapter;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: C */
    public void mo1955C(C2387q c2387q, String str, int i) {
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter != null) {
            adColonyAdapter.f7256b = c2387q;
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: D */
    public void mo1954D(C2387q c2387q) {
        MediationInterstitialListener mediationInterstitialListener;
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || (mediationInterstitialListener = this.f11125a) == null) {
            return;
        }
        adColonyAdapter.f7256b = c2387q;
        mediationInterstitialListener.onAdLeftApplication(adColonyAdapter);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: E */
    public void mo1953E(C2387q c2387q) {
        MediationInterstitialListener mediationInterstitialListener;
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || (mediationInterstitialListener = this.f11125a) == null) {
            return;
        }
        adColonyAdapter.f7256b = c2387q;
        mediationInterstitialListener.onAdOpened(adColonyAdapter);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: F */
    public void mo1952F(C2387q c2387q) {
        MediationInterstitialListener mediationInterstitialListener;
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || (mediationInterstitialListener = this.f11125a) == null) {
            return;
        }
        adColonyAdapter.f7256b = c2387q;
        mediationInterstitialListener.onAdLoaded(adColonyAdapter);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: G */
    public void mo1951G(C2402s c2402s) {
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || this.f11125a == null) {
            return;
        }
        adColonyAdapter.f7256b = null;
        AdError createSdkError = AdColonyMediationAdapter.createSdkError();
        Log.w(AdColonyMediationAdapter.TAG, createSdkError.getMessage());
        this.f11125a.onAdFailedToLoad(this.f11126b, createSdkError);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: w */
    public void mo1948w(C2387q c2387q) {
        MediationInterstitialListener mediationInterstitialListener;
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || (mediationInterstitialListener = this.f11125a) == null) {
            return;
        }
        adColonyAdapter.f7256b = c2387q;
        mediationInterstitialListener.onAdClicked(adColonyAdapter);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: x */
    public void mo1947x(C2387q c2387q) {
        MediationInterstitialListener mediationInterstitialListener;
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter == null || (mediationInterstitialListener = this.f11125a) == null) {
            return;
        }
        adColonyAdapter.f7256b = c2387q;
        mediationInterstitialListener.onAdClosed(adColonyAdapter);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: y */
    public void mo1946y(C2387q c2387q) {
        AdColonyAdapter adColonyAdapter = this.f11126b;
        if (adColonyAdapter != null) {
            adColonyAdapter.f7256b = c2387q;
            C2168b.m3787k(c2387q.f8444i, this);
        }
    }
}
