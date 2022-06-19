package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDBannerController;
import java.util.Map;
/* renamed from: e.c.b.a.j */
/* loaded from: classes-dex2jar.jar:e/c/b/a/j.class */
public final /* synthetic */ class RunnableC22041j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61273a;

    /* renamed from: b */
    public final /* synthetic */ Map f61274b;

    public /* synthetic */ RunnableC22041j(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, Map map) {
        this.f61273a = dTBAdMRAIDBannerController;
        this.f61274b = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f61273a.b(this.f61274b);
    }
}
