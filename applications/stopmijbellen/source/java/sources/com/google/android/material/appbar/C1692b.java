package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: com.google.android.material.appbar.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/b.class */
public class C1692b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f6261a;

    /* renamed from: b */
    public final /* synthetic */ AppBarLayout f6262b;

    /* renamed from: c */
    public final /* synthetic */ AppBarLayout.BaseBehavior f6263c;

    public C1692b(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f6263c = baseBehavior;
        this.f6261a = coordinatorLayout;
        this.f6262b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f6263c.m2990B(this.f6261a, this.f6262b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
