package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.C1782d;
/* renamed from: com.google.android.material.floatingactionbutton.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/b.class */
public class C1780b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f6649a;

    /* renamed from: b */
    public final /* synthetic */ boolean f6650b;

    /* renamed from: c */
    public final /* synthetic */ C1782d.AbstractC1789g f6651c;

    /* renamed from: d */
    public final /* synthetic */ C1782d f6652d;

    public C1780b(C1782d c1782d, boolean z, C1782d.AbstractC1789g abstractC1789g) {
        this.f6652d = c1782d;
        this.f6650b = z;
        this.f6651c = abstractC1789g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f6649a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C1782d c1782d = this.f6652d;
        c1782d.f6684s = 0;
        c1782d.f6678m = null;
        if (!this.f6649a) {
            FloatingActionButton floatingActionButton = c1782d.f6688w;
            boolean z = this.f6650b;
            floatingActionButton.m683b(z ? 8 : 4, z);
            C1782d.AbstractC1789g abstractC1789g = this.f6651c;
            if (abstractC1789g == null) {
                return;
            }
            C1779a c1779a = (C1779a) abstractC1789g;
            c1779a.f6647a.mo2656a(c1779a.f6648b);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f6652d.f6688w.m683b(0, this.f6650b);
        C1782d c1782d = this.f6652d;
        c1782d.f6684s = 1;
        c1782d.f6678m = animator;
        this.f6649a = false;
    }
}
