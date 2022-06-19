package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.AbstractC14490c;
/* renamed from: com.google.android.material.circularreveal.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/circularreveal/a.class */
public final class C14486a {
    private C14486a() {
    }

    /* renamed from: a */
    public static Animator m10888a(AbstractC14490c abstractC14490c, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(abstractC14490c, (Property<AbstractC14490c, V>) AbstractC14490c.C14493b.f52926a, (TypeEvaluator) AbstractC14490c.C14492a.f52924a, (Object[]) new AbstractC14490c.C14495d[]{new AbstractC14490c.C14495d(f, f2, f3)});
        if (Build.VERSION.SDK_INT >= 21) {
            AbstractC14490c.C14495d mo10867c = abstractC14490c.mo10867c();
            if (mo10867c == null) {
                throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
            }
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) abstractC14490c, (int) f, (int) f2, mo10867c.f52930c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        return ofObject;
    }
}
