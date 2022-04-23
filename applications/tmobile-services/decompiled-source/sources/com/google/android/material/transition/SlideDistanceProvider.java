package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/SlideDistanceProvider.class */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    private int f11762a;
    @AbstractC0040Px

    /* renamed from: b */
    private int f11763b;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/transition/SlideDistanceProvider$GravityFlag.class */
    public @interface GravityFlag {
    }

    /* renamed from: c */
    private static Animator m8581c(View view, View view2, int i, @AbstractC0040Px int i2) {
        if (i == 3) {
            return m8579e(view2, i2, 0.0f);
        }
        if (i == 5) {
            return m8579e(view2, -i2, 0.0f);
        }
        if (i == 48) {
            return m8578f(view2, -i2, 0.0f);
        }
        if (i == 80) {
            return m8578f(view2, i2, 0.0f);
        }
        if (i == 8388611) {
            return m8579e(view2, m8576h(view) ? i2 : -i2, 0.0f);
        } else if (i == 8388613) {
            return m8579e(view2, m8576h(view) ? -i2 : i2, 0.0f);
        } else {
            throw new IllegalArgumentException("Invalid slide direction: " + i);
        }
    }

    /* renamed from: d */
    private static Animator m8580d(View view, View view2, int i, @AbstractC0040Px int i2) {
        if (i == 3) {
            return m8579e(view2, 0.0f, -i2);
        }
        if (i == 5) {
            return m8579e(view2, 0.0f, i2);
        }
        if (i == 48) {
            return m8578f(view2, 0.0f, i2);
        }
        if (i == 80) {
            return m8578f(view2, 0.0f, -i2);
        }
        if (i == 8388611) {
            return m8579e(view2, 0.0f, m8576h(view) ? -i2 : i2);
        } else if (i == 8388613) {
            return m8579e(view2, 0.0f, m8576h(view) ? i2 : -i2);
        } else {
            throw new IllegalArgumentException("Invalid slide direction: " + i);
        }
    }

    /* renamed from: e */
    private static Animator m8579e(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f, f2));
    }

    /* renamed from: f */
    private static Animator m8578f(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f, f2));
    }

    /* renamed from: g */
    private int m8577g(Context context) {
        int i = this.f11763b;
        return i != -1 ? i : context.getResources().getDimensionPixelSize(C1027R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    /* renamed from: h */
    private static boolean m8576h(View view) {
        boolean z = true;
        if (ViewCompat.m19244A(view) != 1) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: a */
    public Animator mo8552a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m8581c(viewGroup, view, this.f11762a, m8577g(view.getContext()));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: b */
    public Animator mo8551b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return m8580d(viewGroup, view, this.f11762a, m8577g(view.getContext()));
    }
}
