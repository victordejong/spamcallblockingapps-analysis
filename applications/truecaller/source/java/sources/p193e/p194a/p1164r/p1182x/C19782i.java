package p193e.p194a.p1164r.p1182x;

import android.animation.ValueAnimator;
import java.util.Objects;
/* renamed from: e.a.r.x.i */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/i.class */
public final /* synthetic */ class C19782i implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ n f54827a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        n nVar = this.f54827a;
        Objects.requireNonNull(nVar);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float height = nVar.t.getHeight() / nVar.B.getHeight();
        float top = nVar.B.getTop() - nVar.t.getTop();
        float height2 = nVar.B.getHeight();
        float height3 = nVar.B.getHeight();
        float f = -animatedFraction;
        float f2 = 1.0f - ((1.0f - height) * animatedFraction);
        nVar.B.setTranslationY((((height2 - (height3 * height)) * 0.5f) + top) * f);
        if (f2 >= 0.0f) {
            nVar.B.setScaleX(f2);
            nVar.B.setScaleY(f2);
        }
    }
}
