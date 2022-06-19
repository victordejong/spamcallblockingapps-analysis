package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/FrameLayout$c.class */
public class FrameLayout$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ int f2277a;

    /* renamed from: b */
    public final /* synthetic */ FrameLayout f2278b;

    public FrameLayout$c(FrameLayout frameLayout, int i) {
        this.f2278b = frameLayout;
        this.f2277a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        FrameLayout.d(this.f2278b, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (((ValueAnimator) animator).getAnimatedFraction() == 1.0f) {
            this.f2278b.setVisibility(this.f2277a);
        }
        animator.removeListener(this);
        FrameLayout.d(this.f2278b, (Animator) null);
    }
}
