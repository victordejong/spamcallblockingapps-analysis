package p000;

import android.animation.ValueAnimator;
import carbon.widget.ViewPagerIndicator;
/* renamed from: ch0 */
/* loaded from: classes-dex2jar.jar:ch0.class */
public final /* synthetic */ class ch0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ ViewPagerIndicator f2374a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f2374a.k(valueAnimator);
    }
}
