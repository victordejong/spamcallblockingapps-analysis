package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
/* renamed from: com.google.android.material.floatingactionbutton.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/floatingactionbutton/a.class */
class C8143a {

    /* renamed from: a */
    private Animator f36767a;

    /* renamed from: a */
    public void m4756a() {
        Animator animator = this.f36767a;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: b */
    public void m4755b() {
        this.f36767a = null;
    }

    /* renamed from: c */
    public void m4754c(Animator animator) {
        m4756a();
        this.f36767a = animator;
    }
}
