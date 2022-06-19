package p193e.p1425c.p1430b.p1431a;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.n */
/* loaded from: classes-dex2jar.jar:e/c/b/a/n.class */
public final /* synthetic */ class C22047n implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61285a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f61286b;

    /* renamed from: c */
    public final /* synthetic */ boolean f61287c;

    public /* synthetic */ C22047n(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, ViewGroup viewGroup, boolean z) {
        this.f61285a = dTBAdMRAIDBannerController;
        this.f61286b = viewGroup;
        this.f61287c = z;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f61285a.e(this.f61286b, this.f61287c, valueAnimator);
    }
}
