package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/TextView$e.class */
public class TextView$e extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ int f2338a;

    /* renamed from: b */
    public final /* synthetic */ TextView f2339b;

    public TextView$e(TextView textView, int i) {
        this.f2339b = textView;
        this.f2338a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        TextView.f(this.f2339b, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (((ValueAnimator) animator).getAnimatedFraction() == 1.0f) {
            this.f2339b.setVisibility(this.f2338a);
        }
        animator.removeListener(this);
        TextView.f(this.f2339b, (Animator) null);
    }
}
