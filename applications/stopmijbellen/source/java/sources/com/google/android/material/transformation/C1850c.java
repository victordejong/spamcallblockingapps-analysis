package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p188o3.AbstractC3850d;
/* renamed from: com.google.android.material.transformation.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/c.class */
public class C1850c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3850d f6967a;

    public C1850c(FabTransformationBehavior fabTransformationBehavior, AbstractC3850d abstractC3850d) {
        this.f6967a = abstractC3850d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        AbstractC3850d.C3855e revealInfo = this.f6967a.getRevealInfo();
        revealInfo.f12344c = Float.MAX_VALUE;
        this.f6967a.setRevealInfo(revealInfo);
    }
}
