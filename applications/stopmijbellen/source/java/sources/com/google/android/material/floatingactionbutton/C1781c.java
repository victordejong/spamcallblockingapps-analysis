package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.C1782d;
/* renamed from: com.google.android.material.floatingactionbutton.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/c.class */
public class C1781c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ boolean f6653a;

    /* renamed from: b */
    public final /* synthetic */ C1782d.AbstractC1789g f6654b;

    /* renamed from: c */
    public final /* synthetic */ C1782d f6655c;

    public C1781c(C1782d c1782d, boolean z, C1782d.AbstractC1789g abstractC1789g) {
        this.f6655c = c1782d;
        this.f6653a = z;
        this.f6654b = abstractC1789g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C1782d c1782d = this.f6655c;
        c1782d.f6684s = 0;
        c1782d.f6678m = null;
        C1782d.AbstractC1789g abstractC1789g = this.f6654b;
        if (abstractC1789g != null) {
            C1779a c1779a = (C1779a) abstractC1789g;
            c1779a.f6647a.mo2655b(c1779a.f6648b);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f6655c.f6688w.m683b(0, this.f6653a);
        C1782d c1782d = this.f6655c;
        c1782d.f6684s = 2;
        c1782d.f6678m = animator;
    }
}
