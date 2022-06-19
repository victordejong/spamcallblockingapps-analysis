package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$e.class */
class c$e extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$a0 f2348a;

    /* renamed from: b */
    final /* synthetic */ View f2349b;

    /* renamed from: c */
    final /* synthetic */ ViewPropertyAnimator f2350c;

    /* renamed from: d */
    final /* synthetic */ c f2351d;

    c$e(c cVar, RecyclerView$a0 recyclerView$a0, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2351d = cVar;
        this.f2348a = recyclerView$a0;
        this.f2349b = view;
        this.f2350c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2349b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2350c.setListener(null);
        this.f2351d.A(this.f2348a);
        this.f2351d.o.remove(this.f2348a);
        this.f2351d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2351d.B(this.f2348a);
    }
}
