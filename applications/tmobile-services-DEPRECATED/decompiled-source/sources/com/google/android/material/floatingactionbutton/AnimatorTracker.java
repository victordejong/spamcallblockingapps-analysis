package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/AnimatorTracker.class */
class AnimatorTracker {
    @Nullable

    /* renamed from: a */
    private Animator f10646a;

    /* renamed from: a */
    public void m9784a() {
        Animator animator = this.f10646a;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: b */
    public void m9783b() {
        this.f10646a = null;
    }

    /* renamed from: c */
    public void m9782c(Animator animator) {
        m9784a();
        this.f10646a = animator;
    }
}
