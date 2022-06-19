package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade$b.class */
class Fade$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    private final View f2665a;

    /* renamed from: b */
    private boolean f2666b = false;

    Fade$b(View view) {
        this.f2665a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C0497j0.m12016h(this.f2665a, 1.0f);
        if (this.f2666b) {
            this.f2665a.setLayerType(0, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (!t.O(this.f2665a) || this.f2665a.getLayerType() != 0) {
            return;
        }
        this.f2666b = true;
        this.f2665a.setLayerType(2, null);
    }
}
