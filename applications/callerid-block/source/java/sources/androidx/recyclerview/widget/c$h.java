package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$h.class */
class c$h extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ c$i f2362a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2363b;

    /* renamed from: c */
    final /* synthetic */ View f2364c;

    /* renamed from: d */
    final /* synthetic */ c f2365d;

    c$h(c cVar, c$i c_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2365d = cVar;
        this.f2362a = c_i;
        this.f2363b = viewPropertyAnimator;
        this.f2364c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2363b.setListener(null);
        this.f2364c.setAlpha(1.0f);
        this.f2364c.setTranslationX(0.0f);
        this.f2364c.setTranslationY(0.0f);
        this.f2365d.C(this.f2362a.f2367b, false);
        this.f2365d.r.remove(this.f2362a.f2367b);
        this.f2365d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2365d.D(this.f2362a.f2367b, false);
    }
}
