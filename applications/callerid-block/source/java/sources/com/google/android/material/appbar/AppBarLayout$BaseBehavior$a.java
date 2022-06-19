package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$BaseBehavior$a.class */
class AppBarLayout$BaseBehavior$a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ CoordinatorLayout f10562a;

    /* renamed from: b */
    final /* synthetic */ AppBarLayout f10563b;

    /* renamed from: c */
    final /* synthetic */ AppBarLayout.BaseBehavior f10564c;

    AppBarLayout$BaseBehavior$a(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f10564c = baseBehavior;
        this.f10562a = coordinatorLayout;
        this.f10563b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f10564c.P(this.f10562a, this.f10563b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
