package p193e.p1425c.p1430b.p1431a;

import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.o */
/* loaded from: classes-dex2jar.jar:e/c/b/a/o.class */
public final /* synthetic */ class RunnableC22048o implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61288a;

    /* renamed from: b */
    public final /* synthetic */ boolean f61289b;

    /* renamed from: c */
    public final /* synthetic */ int f61290c;

    public /* synthetic */ RunnableC22048o(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, boolean z, int i) {
        this.f61288a = dTBAdMRAIDBannerController;
        this.f61289b = z;
        this.f61290c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f61288a.d(this.f61289b, this.f61290c);
    }
}
