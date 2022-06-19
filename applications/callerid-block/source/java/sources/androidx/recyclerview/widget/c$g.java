package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$g.class */
class c$g extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ c$i f2358a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2359b;

    /* renamed from: c */
    final /* synthetic */ View f2360c;

    /* renamed from: d */
    final /* synthetic */ c f2361d;

    c$g(c cVar, c$i c_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2361d = cVar;
        this.f2358a = c_i;
        this.f2359b = viewPropertyAnimator;
        this.f2360c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2359b.setListener(null);
        this.f2360c.setAlpha(1.0f);
        this.f2360c.setTranslationX(0.0f);
        this.f2360c.setTranslationY(0.0f);
        this.f2361d.C(this.f2358a.f2366a, true);
        this.f2361d.r.remove(this.f2358a.f2366a);
        this.f2361d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2361d.D(this.f2358a.f2366a, true);
    }
}
