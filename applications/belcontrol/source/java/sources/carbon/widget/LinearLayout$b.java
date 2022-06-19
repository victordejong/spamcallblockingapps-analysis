package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:carbon/widget/LinearLayout$b.class */
public class LinearLayout$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ LinearLayout f2296a;

    public LinearLayout$b(LinearLayout linearLayout) {
        this.f2296a = linearLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        LinearLayout.d(this.f2296a, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        animator.removeListener(this);
        LinearLayout.d(this.f2296a, (Animator) null);
    }
}
