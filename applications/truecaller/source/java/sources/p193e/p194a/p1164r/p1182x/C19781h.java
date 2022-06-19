package p193e.p194a.p1164r.p1182x;

import android.animation.ValueAnimator;
import java.util.Objects;
/* renamed from: e.a.r.x.h */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/h.class */
public final /* synthetic */ class C19781h implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ n f54826a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        n nVar = this.f54826a;
        Objects.requireNonNull(nVar);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        nVar.s.setAlpha(animatedFraction);
        nVar.t.setAlpha(animatedFraction);
        nVar.B.setAlpha(1.0f - animatedFraction);
    }
}
