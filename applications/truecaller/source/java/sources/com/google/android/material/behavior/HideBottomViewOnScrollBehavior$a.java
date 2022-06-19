package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/behavior/HideBottomViewOnScrollBehavior$a.class */
public class HideBottomViewOnScrollBehavior$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f6641a;

    public HideBottomViewOnScrollBehavior$a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f6641a = hideBottomViewOnScrollBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f6641a.d = null;
    }
}
