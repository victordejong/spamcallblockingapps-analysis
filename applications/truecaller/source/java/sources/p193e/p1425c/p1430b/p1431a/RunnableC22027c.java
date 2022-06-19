package p193e.p1425c.p1430b.p1431a;

import android.view.View;
import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.c */
/* loaded from: classes-dex2jar.jar:e/c/b/a/c.class */
public final /* synthetic */ class RunnableC22027c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61248a;

    /* renamed from: b */
    public final /* synthetic */ View f61249b;

    public /* synthetic */ RunnableC22027c(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, View view) {
        this.f61248a = dTBAdMRAIDBannerController;
        this.f61249b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DTBAdMRAIDBannerController dTBAdMRAIDBannerController = this.f61248a;
        dTBAdMRAIDBannerController.bannerListener.onAdClicked(this.f61249b);
    }
}
