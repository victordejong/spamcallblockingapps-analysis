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
import com.google.android.material.a.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    public int f30252a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f30253b = 2;

    /* renamed from: c  reason: collision with root package name */
    public int f30254c = 0;

    /* renamed from: d  reason: collision with root package name */
    private ViewPropertyAnimator f30255d;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f30255d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f30255d = null;
            }
        });
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            if (this.f30253b != 1) {
                ViewPropertyAnimator viewPropertyAnimator = this.f30255d;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.cancel();
                    v.clearAnimation();
                }
                this.f30253b = 1;
                a((HideBottomViewOnScrollBehavior<V>) v, this.f30252a + this.f30254c, 175L, a.f30175c);
            }
        } else if (i2 < 0 && this.f30253b != 2) {
            ViewPropertyAnimator viewPropertyAnimator2 = this.f30255d;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                v.clearAnimation();
            }
            this.f30253b = 2;
            a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, a.f30176d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f30252a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }
}
