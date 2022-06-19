package p1727n3.p1874y.p1908e;

import android.animation.ValueAnimator;
/* renamed from: n3.y.e.g */
/* loaded from: classes-dex2jar.jar:n3/y/e/g.class */
public class C27524g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ k f77533a;

    public C27524g(k kVar) {
        this.f77533a = kVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f77533a.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
