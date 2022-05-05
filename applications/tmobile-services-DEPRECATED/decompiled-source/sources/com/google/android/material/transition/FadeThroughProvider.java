package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/FadeThroughProvider.class */
public final class FadeThroughProvider implements VisibilityAnimatorProvider {
    /* renamed from: c */
    private static Animator m8641c(final View view, final float f, final float f2, @FloatRange(from = 0.0d, to = 1.0d) final float f3, @FloatRange(from = 0.0d, to = 1.0d) final float f4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.FadeThroughProvider.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setAlpha(TransitionUtils.m8560k(f, f2, f3, f4, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            }
        });
        return ofFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: a */
    public Animator mo8552a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m8641c(view, 0.0f, 1.0f, 0.35f, 1.0f);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: b */
    public Animator mo8551b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m8641c(view, 1.0f, 0.0f, 0.0f, 0.35f);
    }
}
