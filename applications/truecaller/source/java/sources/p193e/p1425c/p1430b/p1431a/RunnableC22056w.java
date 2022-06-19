package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDInterstitialController;
/* renamed from: e.c.b.a.w */
/* loaded from: classes-dex2jar.jar:e/c/b/a/w.class */
public final /* synthetic */ class RunnableC22056w implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDInterstitialController f61301a;

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDInterstitialController dTBAdMRAIDInterstitialController = this.f61301a;
        dTBAdMRAIDInterstitialController.interstitialListener.onAdLeftApplication(dTBAdMRAIDInterstitialController.adView);
    }
}
