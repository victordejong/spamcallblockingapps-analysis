package p1727n3.p1874y.p1908e;

import android.animation.ValueAnimator;
/* renamed from: n3.y.e.i */
/* loaded from: classes-dex2jar.jar:n3/y/e/i.class */
public class C27526i implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ k f77535a;

    public C27526i(k kVar) {
        this.f77535a = kVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f77535a.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
