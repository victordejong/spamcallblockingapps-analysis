package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$f.class */
class c$f extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$a0 f2352a;

    /* renamed from: b */
    final /* synthetic */ int f2353b;

    /* renamed from: c */
    final /* synthetic */ View f2354c;

    /* renamed from: d */
    final /* synthetic */ int f2355d;

    /* renamed from: e */
    final /* synthetic */ ViewPropertyAnimator f2356e;

    /* renamed from: f */
    final /* synthetic */ c f2357f;

    c$f(c cVar, RecyclerView$a0 recyclerView$a0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2357f = cVar;
        this.f2352a = recyclerView$a0;
        this.f2353b = i;
        this.f2354c = view;
        this.f2355d = i2;
        this.f2356e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f2353b != 0) {
            this.f2354c.setTranslationX(0.0f);
        }
        if (this.f2355d != 0) {
            this.f2354c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2356e.setListener(null);
        this.f2357f.E(this.f2352a);
        this.f2357f.p.remove(this.f2352a);
        this.f2357f.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2357f.F(this.f2352a);
    }
}
