package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:carbon/widget/RecyclerView$b.class */
public class RecyclerView$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f2321a;

    public RecyclerView$b(RecyclerView recyclerView) {
        this.f2321a = recyclerView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
        RecyclerView.d(this.f2321a, (Animator) null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        animator.removeListener(this);
        RecyclerView.d(this.f2321a, (Animator) null);
    }
}
