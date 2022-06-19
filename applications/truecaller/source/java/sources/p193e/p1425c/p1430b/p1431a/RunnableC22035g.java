package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.g */
/* loaded from: classes-dex2jar.jar:e/c/b/a/g.class */
public final /* synthetic */ class RunnableC22035g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61266a;

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDBannerController dTBAdMRAIDBannerController = this.f61266a;
        dTBAdMRAIDBannerController.bannerListener.onAdOpen(dTBAdMRAIDBannerController.adView);
        dTBAdMRAIDBannerController.bannerListener.onAdLeftApplication(dTBAdMRAIDBannerController.adView);
    }
}
