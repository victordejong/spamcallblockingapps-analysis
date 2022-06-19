package p193e.p1425c.p1430b.p1431a;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import com.amazon.device.ads.DTBAdMRAIDBannerController;
/* renamed from: e.c.b.a.e */
/* loaded from: classes-dex2jar.jar:e/c/b/a/e.class */
public final /* synthetic */ class C22031e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ DTBAdMRAIDBannerController f61256a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f61257b;

    /* renamed from: c */
    public final /* synthetic */ boolean f61258c;

    public /* synthetic */ C22031e(DTBAdMRAIDBannerController dTBAdMRAIDBannerController, ViewGroup viewGroup, boolean z) {
        this.f61256a = dTBAdMRAIDBannerController;
        this.f61257b = viewGroup;
        this.f61258c = z;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f61256a.f(this.f61257b, this.f61258c, valueAnimator);
    }
}
