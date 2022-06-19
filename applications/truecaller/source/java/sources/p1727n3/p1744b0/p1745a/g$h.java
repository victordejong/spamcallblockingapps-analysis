package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: n3.b0.a.g$h */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$h.class */
public class g$h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ g$i f71635a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f71636b;

    /* renamed from: c */
    public final /* synthetic */ View f71637c;

    /* renamed from: d */
    public final /* synthetic */ g f71638d;

    public g$h(g gVar, g$i g_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f71638d = gVar;
        this.f71635a = g_i;
        this.f71636b = viewPropertyAnimator;
        this.f71637c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f71636b.setListener(null);
        this.f71637c.setAlpha(1.0f);
        this.f71637c.setTranslationX(0.0f);
        this.f71637c.setTranslationY(0.0f);
        this.f71638d.dispatchChangeFinished(this.f71635a.f71640b, false);
        this.f71638d.mChangeAnimations.remove(this.f71635a.f71640b);
        this.f71638d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f71638d.dispatchChangeStarting(this.f71635a.f71640b, false);
    }
}
