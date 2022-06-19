package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:carbon/widget/TextView$d.class */
public class TextView$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ TextView f2337a;

    public TextView$d(TextView textView) {
        this.f2337a = textView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        TextView.f(this.f2337a, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        animator.removeListener(this);
        TextView.f(this.f2337a, (Animator) null);
    }
}
