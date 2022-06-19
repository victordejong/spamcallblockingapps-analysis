package com.google.android.material.p147f;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.p147f.AbstractC4647d;
/* renamed from: com.google.android.material.f.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/f/a.class */
public final class C4641a {
    /* renamed from: a */
    public static Animator.AnimatorListener m3091a(final AbstractC4647d abstractC4647d) {
        return new AnimatorListenerAdapter() { // from class: com.google.android.material.f.a.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                abstractC4647d.mo3070b();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                abstractC4647d.mo3071a();
            }
        };
    }

    /* renamed from: a */
    public static Animator m3090a(AbstractC4647d abstractC4647d, float f, float f2, float f3) {
        AnimatorSet animatorSet;
        ObjectAnimator ofObject = ObjectAnimator.ofObject(abstractC4647d, (Property<AbstractC4647d, V>) AbstractC4647d.C4650b.f20165a, (TypeEvaluator) AbstractC4647d.C4649a.f20163a, (Object[]) new AbstractC4647d.C4652d[]{new AbstractC4647d.C4652d(f, f2, f3)});
        if (Build.VERSION.SDK_INT >= 21) {
            AbstractC4647d.C4652d revealInfo = abstractC4647d.getRevealInfo();
            if (revealInfo == null) {
                throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
            }
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) abstractC4647d, (int) f, (int) f2, revealInfo.f20169c, f3);
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(ofObject, createCircularReveal);
            animatorSet = animatorSet2;
        } else {
            animatorSet = ofObject;
        }
        return animatorSet;
    }
}
