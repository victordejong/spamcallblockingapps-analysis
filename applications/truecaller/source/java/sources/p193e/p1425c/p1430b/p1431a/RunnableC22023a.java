package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.a */
/* loaded from: classes-dex2jar.jar:e/c/b/a/a.class */
public final /* synthetic */ class RunnableC22023a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61242a;

    /* renamed from: b */
    public final /* synthetic */ boolean f61243b;

    /* renamed from: c */
    public final /* synthetic */ int f61244c;

    public /* synthetic */ RunnableC22023a(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, boolean z, int i) {
        this.f61242a = dTBAdMRAIDBannerController;
        this.f61243b = z;
        this.f61244c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f61242a.c(this.f61243b, this.f61244c);
    }
}
