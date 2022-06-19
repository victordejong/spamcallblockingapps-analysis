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
import com.google.android.material.p142a.C4505a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.AbstractC0423b<V> {

    /* renamed from: a */
    private int f19680a = 0;

    /* renamed from: b */
    private int f19681b = 2;

    /* renamed from: c */
    private int f19682c = 0;

    /* renamed from: d */
    private ViewPropertyAnimator f19683d;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m3689a(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f19683d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f19683d = null;
            }
        });
    }

    /* renamed from: a */
    public void m3691a(V v) {
        if (this.f19681b == 2) {
            return;
        }
        if (this.f19683d != null) {
            this.f19683d.cancel();
            v.clearAnimation();
        }
        this.f19681b = 2;
        m3689a((HideBottomViewOnScrollBehavior<V>) v, 0, 225L, C4505a.f19572d);
    }

    /* renamed from: a */
    public void m3690a(V v, int i) {
        this.f19682c = i;
        if (this.f19681b == 1) {
            v.setTranslationY(this.f19680a + this.f19682c);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public void mo3688a(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        if (i2 > 0) {
            m3685b(v);
        } else if (i2 >= 0) {
        } else {
            m3691a((HideBottomViewOnScrollBehavior<V>) v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2219a(CoordinatorLayout coordinatorLayout, V v, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        this.f19680a = marginLayoutParams.bottomMargin + v.getMeasuredHeight();
        return super.mo2219a(coordinatorLayout, (CoordinatorLayout) v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo3687a(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }

    /* renamed from: b */
    public void m3685b(V v) {
        if (this.f19681b == 1) {
            return;
        }
        if (this.f19683d != null) {
            this.f19683d.cancel();
            v.clearAnimation();
        }
        this.f19681b = 1;
        m3689a((HideBottomViewOnScrollBehavior<V>) v, this.f19680a + this.f19682c, 175L, C4505a.f19571c);
    }
}
