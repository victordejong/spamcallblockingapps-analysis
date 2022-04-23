package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import e.c.a.b.w.h;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/AppBarLayout$b.class */
class AppBarLayout$b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ h f10567a;

    AppBarLayout$b(AppBarLayout appBarLayout, h hVar) {
        this.f10567a = hVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f10567a.Z(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
