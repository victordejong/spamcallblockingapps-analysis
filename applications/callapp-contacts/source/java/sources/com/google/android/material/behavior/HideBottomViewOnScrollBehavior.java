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
import com.google.android.material.p364a.C14389a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    public int f52511a = 0;

    /* renamed from: b */
    public int f52512b = 2;

    /* renamed from: c */
    public int f52513c = 0;

    /* renamed from: d */
    private ViewPropertyAnimator f52514d;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m11222a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f52514d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f52514d = null;
            }
        });
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final void mo11127a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            if (this.f52512b == 1) {
                return;
            }
            ViewPropertyAnimator viewPropertyAnimator = this.f52514d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                v.clearAnimation();
            }
            this.f52512b = 1;
            m11222a((HideBottomViewOnScrollBehavior<V>) v, this.f52511a + this.f52513c, 175L, C14389a.f52370c);
        } else if (i2 >= 0 || this.f52512b == 2) {
        } else {
            ViewPropertyAnimator viewPropertyAnimator2 = this.f52514d;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                v.clearAnimation();
            }
            this.f52512b = 2;
            m11222a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, C14389a.f52371d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo9852a(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f52511a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.mo9852a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo11125a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }
}
