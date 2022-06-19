package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: n3.b0.a.g$g */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$g.class */
public class g$g extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ g$i f71631a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f71632b;

    /* renamed from: c */
    public final /* synthetic */ View f71633c;

    /* renamed from: d */
    public final /* synthetic */ g f71634d;

    public g$g(g gVar, g$i g_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f71634d = gVar;
        this.f71631a = g_i;
        this.f71632b = viewPropertyAnimator;
        this.f71633c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f71632b.setListener(null);
        this.f71633c.setAlpha(1.0f);
        this.f71633c.setTranslationX(0.0f);
        this.f71633c.setTranslationY(0.0f);
        this.f71634d.dispatchChangeFinished(this.f71631a.f71639a, true);
        this.f71634d.mChangeAnimations.remove(this.f71631a.f71639a);
        this.f71634d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f71634d.dispatchChangeStarting(this.f71631a.f71639a, true);
    }
}
