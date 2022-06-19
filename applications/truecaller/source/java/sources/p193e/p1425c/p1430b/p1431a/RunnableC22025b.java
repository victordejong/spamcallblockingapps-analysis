package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDBannerController;
import com.amazon.device.ads.MraidUnloadCommand;
/* renamed from: e.c.b.a.b */
/* loaded from: classes-dex2jar.jar:e/c/b/a/b.class */
public final /* synthetic */ class RunnableC22025b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61246a;

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDBannerController dTBAdMRAIDBannerController = this.f61246a;
        dTBAdMRAIDBannerController.getAdView().loadUrl("about:blank");
        dTBAdMRAIDBannerController.commandCompleted(MraidUnloadCommand.NAME);
    }
}
