package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$d.class */
class c$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$a0 f2344a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2345b;

    /* renamed from: c */
    final /* synthetic */ View f2346c;

    /* renamed from: d */
    final /* synthetic */ c f2347d;

    c$d(c cVar, RecyclerView$a0 recyclerView$a0, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2347d = cVar;
        this.f2344a = recyclerView$a0;
        this.f2345b = viewPropertyAnimator;
        this.f2346c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2345b.setListener(null);
        this.f2346c.setAlpha(1.0f);
        this.f2347d.G(this.f2344a);
        this.f2347d.q.remove(this.f2344a);
        this.f2347d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2347d.H(this.f2344a);
    }
}
