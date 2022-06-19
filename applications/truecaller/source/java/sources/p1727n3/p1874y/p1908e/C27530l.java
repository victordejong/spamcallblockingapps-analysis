package p1727n3.p1874y.p1908e;

import android.animation.ValueAnimator;
/* renamed from: n3.y.e.l */
/* loaded from: classes-dex2jar.jar:n3/y/e/l.class */
public class C27530l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ k f77562a;

    public C27530l(k kVar) {
        this.f77562a = kVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        k kVar = this.f77562a;
        kVar.Q.getThumb().setLevel((int) ((kVar.o == 2 ? 0 : 10000) * floatValue));
        this.f77562a.J.setAlpha(floatValue);
        this.f77562a.N.setAlpha(floatValue);
    }
}
