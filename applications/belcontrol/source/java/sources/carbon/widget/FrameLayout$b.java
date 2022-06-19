package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:carbon/widget/FrameLayout$b.class */
public class FrameLayout$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f2276a;

    public FrameLayout$b(FrameLayout frameLayout) {
        this.f2276a = frameLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        FrameLayout.d(this.f2276a, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        animator.removeListener(this);
        FrameLayout.d(this.f2276a, (Animator) null);
    }
}
