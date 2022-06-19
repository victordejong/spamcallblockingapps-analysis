package p193e.p194a.p1164r.p1182x;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: e.a.r.x.g */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/g.class */
public final /* synthetic */ class C19780g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ View f54825a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view = this.f54825a;
        int[] iArr = n.P;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        view.setTranslationY((1.0f - animatedFraction) * view.getHeight() * 2);
        view.setAlpha(animatedFraction);
    }
}
