package p193e.p194a.p1164r.p1185z;

import android.animation.ValueAnimator;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.r.z.j */
/* loaded from: classes16-dex2jar.jar:e/a/r/z/j.class */
public final class C19803j implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ l f54849a;

    public C19803j(l lVar) {
        this.f54849a = lVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        l.d(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        l.RA(this.f54849a).setTranslationX((-l.RA(this.f54849a).getWidth()) * floatValue);
        l.RA(this.f54849a).setTranslationY(l.RA(this.f54849a).getHeight() * floatValue);
    }
}
