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
import p078c.p084c.p085a.p096b.p097m.C1897a;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private int f36129a = 0;

    /* renamed from: b */
    private int f36130b = 2;

    /* renamed from: c */
    private int f36131c = 0;

    /* renamed from: d */
    private ViewPropertyAnimator f36132d;

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior$a.class */
    public class C8005a extends AnimatorListenerAdapter {
        C8005a() {
            HideBottomViewOnScrollBehavior.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f36132d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: F */
    private void m5598F(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f36132d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C8005a());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: A */
    public boolean mo5462A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    /* renamed from: G */
    public void m5597G(V v, int i) {
        this.f36131c = i;
        if (this.f36130b == 1) {
            v.setTranslationY(this.f36129a + i);
        }
    }

    /* renamed from: H */
    public void m5596H(V v) {
        if (this.f36130b == 1) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f36132d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f36130b = 1;
        m5598F(v, this.f36129a + this.f36131c, 175L, C1897a.f6815c);
    }

    /* renamed from: I */
    public void m5595I(V v) {
        if (this.f36130b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f36132d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f36130b = 2;
        m5598F(v, 0, 225L, C1897a.f6816d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo3828l(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f36129a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.mo3828l(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: t */
    public void mo5416t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            m5596H(v);
        } else if (i2 >= 0) {
        } else {
            m5595I(v);
        }
    }
}
