package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDInterstitialController;
/* renamed from: e.c.b.a.y */
/* loaded from: classes-dex2jar.jar:e/c/b/a/y.class */
public final /* synthetic */ class RunnableC22058y implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDInterstitialController f61304a;

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDInterstitialController dTBAdMRAIDInterstitialController = this.f61304a;
        dTBAdMRAIDInterstitialController.interstitialListener.onAdClicked(dTBAdMRAIDInterstitialController.adView);
    }
}
