package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior$a.class */
public class ExpandableTransformationBehavior$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ExpandableTransformationBehavior f6986a;

    public ExpandableTransformationBehavior$a(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f6986a = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f6986a.b = null;
    }
}
