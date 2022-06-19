package p193e.p1512i.p1513a.p1514a;

import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.i.a.a.a */
/* loaded from: classes-dex2jar.jar:e/i/a/a/a.class */
public class C22900a implements CriteoBannerAdListener {

    /* renamed from: a */
    public final CustomEventBannerListener f63565a;

    public C22900a(CustomEventBannerListener customEventBannerListener) {
        this.f63565a = customEventBannerListener;
    }

    @Override // com.criteo.publisher.CriteoBannerAdListener
    public void onAdClicked() {
        this.f63565a.onAdClicked();
    }

    @Override // com.criteo.publisher.CriteoBannerAdListener
    public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
        this.f63565a.onAdFailedToLoad(C26232y.m2374c(criteoErrorCode));
    }

    @Override // com.criteo.publisher.CriteoBannerAdListener
    public void onAdLeftApplication() {
        this.f63565a.onAdLeftApplication();
    }

    @Override // com.criteo.publisher.CriteoBannerAdListener
    public void onAdReceived(CriteoBannerView criteoBannerView) {
        this.f63565a.onAdLoaded(criteoBannerView);
    }
}
