package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.animation.AnimationUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior.class */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a */
    private int f10074a = 0;

    /* renamed from: b */
    private int f10075b = 2;

    /* renamed from: c */
    private int f10076c = 0;
    @Nullable

    /* renamed from: d */
    private ViewPropertyAnimator f10077d;

    public HideBottomViewOnScrollBehavior() {
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: F */
    private void m10569F(@NonNull V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f10077d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.behavior.HideBottomViewOnScrollBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                HideBottomViewOnScrollBehavior.this.f10077d = null;
            }
        });
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: A */
    public boolean mo10443A(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        return i == 2;
    }

    /* renamed from: G */
    public void m10568G(@NonNull V v, @Dimension int i) {
        this.f10076c = i;
        if (this.f10075b == 1) {
            v.setTranslationY(this.f10074a + i);
        }
    }

    /* renamed from: H */
    public void m10567H(@NonNull V v) {
        if (this.f10075b != 1) {
            ViewPropertyAnimator viewPropertyAnimator = this.f10077d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                v.clearAnimation();
            }
            this.f10075b = 1;
            m10569F(v, this.f10074a + this.f10076c, 175L, AnimationUtils.f9925c);
        }
    }

    /* renamed from: I */
    public void m10566I(@NonNull V v) {
        if (this.f10075b != 2) {
            ViewPropertyAnimator viewPropertyAnimator = this.f10077d;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                v.clearAnimation();
            }
            this.f10075b = 2;
            m10569F(v, 0, 225L, AnimationUtils.f9926d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: l */
    public boolean mo8678l(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        this.f10074a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.mo8678l(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: t */
    public void mo10397t(CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        if (i2 > 0) {
            m10567H(v);
        } else if (i2 < 0) {
            m10566I(v);
        }
    }
}
