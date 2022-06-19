package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import p188o3.AbstractC3850d;
/* renamed from: com.google.android.material.transformation.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/b.class */
public class C1849b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3850d f6965a;

    /* renamed from: b */
    public final /* synthetic */ Drawable f6966b;

    public C1849b(FabTransformationBehavior fabTransformationBehavior, AbstractC3850d abstractC3850d, Drawable drawable) {
        this.f6965a = abstractC3850d;
        this.f6966b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f6965a.setCircularRevealOverlayDrawable(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f6965a.setCircularRevealOverlayDrawable(this.f6966b);
    }
}
