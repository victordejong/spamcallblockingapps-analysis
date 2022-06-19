package p193e.p1425c.p1430b.p1431a;

import android.animation.ValueAnimator;
import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.f */
/* loaded from: classes-dex2jar.jar:e/c/b/a/f.class */
public final /* synthetic */ class C22033f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61260a;

    /* renamed from: b */
    public final /* synthetic */ int f61261b;

    /* renamed from: c */
    public final /* synthetic */ int f61262c;

    /* renamed from: d */
    public final /* synthetic */ int f61263d;

    /* renamed from: e */
    public final /* synthetic */ int f61264e;

    public /* synthetic */ C22033f(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, int i, int i2, int i3, int i4) {
        this.f61260a = dTBAdMRAIDBannerController;
        this.f61261b = i;
        this.f61262c = i2;
        this.f61263d = i3;
        this.f61264e = i4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f61260a.g(this.f61261b, this.f61262c, this.f61263d, this.f61264e, valueAnimator);
    }
}
