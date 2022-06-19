package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import e.m.a.g.n.m;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a.class */
public class ExtendedFloatingActionButton$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f6697a;

    /* renamed from: b */
    public final /* synthetic */ m f6698b;

    public ExtendedFloatingActionButton$a(ExtendedFloatingActionButton extendedFloatingActionButton, m mVar) {
        this.f6698b = mVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f6697a = true;
        this.f6698b.f();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f6698b.g();
        if (!this.f6697a) {
            this.f6698b.d((ExtendedFloatingActionButton$h) null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f6698b.onAnimationStart(animator);
        this.f6697a = false;
    }
}
