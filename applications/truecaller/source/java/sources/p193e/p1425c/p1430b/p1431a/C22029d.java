package p193e.p1425c.p1430b.p1431a;

import android.animation.ValueAnimator;
import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.d */
/* loaded from: classes-dex2jar.jar:e/c/b/a/d.class */
public final /* synthetic */ class C22029d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61252a;

    /* renamed from: b */
    public final /* synthetic */ int f61253b;

    /* renamed from: c */
    public final /* synthetic */ boolean f61254c;

    public /* synthetic */ C22029d(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, int i, boolean z) {
        this.f61252a = dTBAdMRAIDBannerController;
        this.f61253b = i;
        this.f61254c = z;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f61252a.a(this.f61253b, this.f61254c, valueAnimator);
    }
}
