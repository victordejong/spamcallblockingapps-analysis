package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/RecyclerView$c.class */
public class RecyclerView$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ int f2322a;

    /* renamed from: b */
    public final /* synthetic */ RecyclerView f2323b;

    public RecyclerView$c(RecyclerView recyclerView, int i) {
        this.f2323b = recyclerView;
        this.f2322a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        RecyclerView.d(this.f2323b, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (((ValueAnimator) animator).getAnimatedFraction() == 1.0f) {
            this.f2323b.setVisibility(this.f2322a);
        }
        animator.removeListener(this);
        RecyclerView.d(this.f2323b, (Animator) null);
    }
}
