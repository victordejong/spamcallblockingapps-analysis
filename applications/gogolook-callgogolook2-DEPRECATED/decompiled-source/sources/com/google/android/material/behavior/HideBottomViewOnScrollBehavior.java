package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p081h.p203i.p204a.p294f.p295a.C9167a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    public int f7296a = 0;

    /* renamed from: b */
    public int f7297b = 2;

    /* renamed from: c */
    public ViewPropertyAnimator f7298c;

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior$a.class */
    public class C3599a extends AnimatorListenerAdapter {
        public C3599a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f7298c = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void mo31503a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f7298c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f7297b = 1;
        m31549a(v, this.f7296a, 175L, C9167a.f20881c);
    }

    /* renamed from: a */
    public final void m31549a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f7298c = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C3599a());
    }

    /* renamed from: b */
    public void mo31498b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f7298c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f7297b = 2;
        m31549a(v, 0, 225L, C9167a.f20882d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f7296a = v.getMeasuredHeight();
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        if (this.f7297b != 1 && i2 > 0) {
            mo31503a(v);
        } else if (this.f7297b != 2 && i2 < 0) {
            mo31498b(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }
}
