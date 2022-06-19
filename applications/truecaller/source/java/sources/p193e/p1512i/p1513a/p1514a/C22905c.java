package p193e.p1512i.p1513a.p1514a;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.i.a.a.c */
/* loaded from: classes-dex2jar.jar:e/i/a/a/c.class */
public class C22905c implements CriteoInterstitialAdListener {

    /* renamed from: a */
    public final CustomEventInterstitialListener f63573a;

    public C22905c(CustomEventInterstitialListener customEventInterstitialListener) {
        this.f63573a = customEventInterstitialListener;
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdClicked() {
        this.f63573a.onAdClicked();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdClosed() {
        this.f63573a.onAdClosed();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        this.f63573a.onAdFailedToLoad(C26232y.m2374c(criteoErrorCode));
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdLeftApplication() {
        this.f63573a.onAdLeftApplication();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdOpened() {
        this.f63573a.onAdOpened();
    }

    @Override // com.criteo.publisher.CriteoInterstitialAdListener
    public void onAdReceived(CriteoInterstitial criteoInterstitial) {
        this.f63573a.onAdLoaded();
    }
}
