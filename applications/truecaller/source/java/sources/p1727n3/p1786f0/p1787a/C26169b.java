package p1727n3.p1786f0.p1787a;

import android.animation.ValueAnimator;
import p1727n3.p1786f0.p1787a.C26171d;
/* renamed from: n3.f0.a.b */
/* loaded from: classes-dex2jar.jar:n3/f0/a/b.class */
public class C26169b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C26171d.C26172a f72948a;

    /* renamed from: b */
    public final /* synthetic */ C26171d f72949b;

    public C26169b(C26171d c26171d, C26171d.C26172a c26172a) {
        this.f72949b = c26171d;
        this.f72948a = c26172a;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f72949b.m2624d(floatValue, this.f72948a);
        this.f72949b.m2627a(floatValue, this.f72948a, false);
        this.f72949b.invalidateSelf();
    }
}
