package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.g$d */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$d.class */
public class g$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f71617a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f71618b;

    /* renamed from: c */
    public final /* synthetic */ View f71619c;

    /* renamed from: d */
    public final /* synthetic */ g f71620d;

    public g$d(g gVar, RecyclerView.AbstractC0313c0 abstractC0313c0, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f71620d = gVar;
        this.f71617a = abstractC0313c0;
        this.f71618b = viewPropertyAnimator;
        this.f71619c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f71618b.setListener(null);
        this.f71619c.setAlpha(1.0f);
        this.f71620d.dispatchRemoveFinished(this.f71617a);
        this.f71620d.mRemoveAnimations.remove(this.f71617a);
        this.f71620d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f71620d.dispatchRemoveStarting(this.f71617a);
    }
}
