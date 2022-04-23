package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/ScaleProvider.class */
public final class ScaleProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    private float f11756a;

    /* renamed from: b */
    private float f11757b;

    /* renamed from: c */
    private float f11758c;

    /* renamed from: d */
    private float f11759d;

    /* renamed from: e */
    private boolean f11760e;

    /* renamed from: f */
    private boolean f11761f;

    public ScaleProvider() {
        this(true);
    }

    public ScaleProvider(boolean z) {
        this.f11756a = 1.0f;
        this.f11757b = 1.1f;
        this.f11758c = 0.8f;
        this.f11759d = 1.0f;
        this.f11761f = true;
        this.f11760e = z;
    }

    /* renamed from: c */
    private static Animator m8584c(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.SCALE_X, f, f2), PropertyValuesHolder.ofFloat(View.SCALE_Y, f, f2));
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: a */
    public Animator mo8552a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f11760e ? m8584c(view, this.f11758c, this.f11759d) : m8584c(view, this.f11757b, this.f11756a);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: b */
    public Animator mo8551b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (!this.f11761f) {
            return null;
        }
        return this.f11760e ? m8584c(view, this.f11756a, this.f11757b) : m8584c(view, this.f11759d, this.f11758c);
    }

    /* renamed from: d */
    public void m8583d(float f) {
        this.f11758c = f;
    }

    /* renamed from: e */
    public void m8582e(boolean z) {
        this.f11761f = z;
    }
}
