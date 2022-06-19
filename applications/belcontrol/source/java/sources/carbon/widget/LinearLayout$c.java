package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/LinearLayout$c.class */
public class LinearLayout$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ int f2297a;

    /* renamed from: b */
    public final /* synthetic */ LinearLayout f2298b;

    public LinearLayout$c(LinearLayout linearLayout, int i) {
        this.f2298b = linearLayout;
        this.f2297a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        LinearLayout.d(this.f2298b, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (((ValueAnimator) animator).getAnimatedFraction() == 1.0f) {
            this.f2298b.setVisibility(this.f2297a);
        }
        animator.removeListener(this);
        LinearLayout.d(this.f2298b, (Animator) null);
    }
}
