package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$i.class */
class ChangeBounds$i extends AnimatorListenerAdapter {

    /* renamed from: a */
    private boolean f2628a;

    /* renamed from: b */
    final /* synthetic */ View f2629b;

    /* renamed from: c */
    final /* synthetic */ Rect f2630c;

    /* renamed from: d */
    final /* synthetic */ int f2631d;

    /* renamed from: e */
    final /* synthetic */ int f2632e;

    /* renamed from: f */
    final /* synthetic */ int f2633f;

    /* renamed from: g */
    final /* synthetic */ int f2634g;

    ChangeBounds$i(ChangeBounds changeBounds, View view, Rect rect, int i, int i2, int i3, int i4) {
        this.f2629b = view;
        this.f2630c = rect;
        this.f2631d = i;
        this.f2632e = i2;
        this.f2633f = i3;
        this.f2634g = i4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2628a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f2628a) {
            t.t0(this.f2629b, this.f2630c);
            C0497j0.m12017g(this.f2629b, this.f2631d, this.f2632e, this.f2633f, this.f2634g);
        }
    }
}
