package p1727n3.p1874y.p1908e;

import android.animation.ValueAnimator;
/* renamed from: n3.y.e.n */
/* loaded from: classes-dex2jar.jar:n3/y/e/n.class */
public class C27532n implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ k f77564a;

    public C27532n(k kVar) {
        this.f77564a = kVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        k kVar = this.f77564a;
        kVar.Q.getThumb().setLevel((int) ((kVar.o == 2 ? 0 : 10000) * floatValue));
        this.f77564a.J.setAlpha(floatValue);
        this.f77564a.N.setAlpha(floatValue);
    }
}
