package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p090f3.C2727a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.AbstractC0321c<V> {

    /* renamed from: a */
    public int f6271a = 0;

    /* renamed from: b */
    public int f6272b = 2;

    /* renamed from: c */
    public int f6273c = 0;

    /* renamed from: d */
    public ViewPropertyAnimator f6274d;

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior$a.class */
    public class C1695a extends AnimatorListenerAdapter {
        public C1695a() {
            HideBottomViewOnScrollBehavior.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f6274d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: h */
    public boolean mo2976h(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f6271a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: l */
    public void mo4738l(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        boolean z = false;
        if (i2 > 0) {
            if (this.f6272b == 1) {
                z = true;
            }
            if (z) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f6274d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                v.clearAnimation();
            }
            this.f6272b = 1;
            m4765s(v, this.f6271a + this.f6273c, 175L, C2727a.f9374c);
        } else if (i2 >= 0) {
        } else {
            if (this.f6272b == 2) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator2 = this.f6274d;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                v.clearAnimation();
            }
            this.f6272b = 2;
            m4765s(v, 0, 225L, C2727a.f9375d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0321c
    /* renamed from: p */
    public boolean mo4735p(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    /* renamed from: s */
    public final void m4765s(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f6274d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C1695a());
    }
}
