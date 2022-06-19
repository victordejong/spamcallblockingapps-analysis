package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/transformation/FabTransformationScrimBehavior$a.class */
public class FabTransformationScrimBehavior$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ boolean f6992a;

    /* renamed from: b */
    public final /* synthetic */ View f6993b;

    public FabTransformationScrimBehavior$a(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
        this.f6992a = z;
        this.f6993b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f6992a) {
            this.f6993b.setVisibility(4);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (this.f6992a) {
            this.f6993b.setVisibility(0);
        }
    }
}
