package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/transformation/FabTransformationBehavior$a.class */
public class FabTransformationBehavior$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ boolean f6987a;

    /* renamed from: b */
    public final /* synthetic */ View f6988b;

    /* renamed from: c */
    public final /* synthetic */ View f6989c;

    public FabTransformationBehavior$a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
        this.f6987a = z;
        this.f6988b = view;
        this.f6989c = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f6987a) {
            this.f6988b.setVisibility(4);
            this.f6989c.setAlpha(1.0f);
            this.f6989c.setVisibility(0);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (this.f6987a) {
            this.f6988b.setVisibility(0);
            this.f6989c.setAlpha(0.0f);
            this.f6989c.setVisibility(4);
        }
    }
}
