package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/ScaleProvider.class */
public final class ScaleProvider implements VisibilityAnimatorProvider {

    /* renamed from: a */
    private float f11894a;

    /* renamed from: b */
    private float f11895b;

    /* renamed from: c */
    private float f11896c;

    /* renamed from: d */
    private float f11897d;

    /* renamed from: e */
    private boolean f11898e;

    /* renamed from: f */
    private boolean f11899f;

    public ScaleProvider() {
        this(true);
    }

    public ScaleProvider(boolean z) {
        this.f11894a = 1.0f;
        this.f11895b = 1.1f;
        this.f11896c = 0.8f;
        this.f11897d = 1.0f;
        this.f11899f = true;
        this.f11898e = z;
    }

    /* renamed from: c */
    private static Animator m8483c(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.SCALE_X, f, f2), PropertyValuesHolder.ofFloat(View.SCALE_Y, f, f2));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: a */
    public Animator mo8454a(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f11898e ? m8483c(view, this.f11896c, this.f11897d) : m8483c(view, this.f11895b, this.f11894a);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    /* renamed from: b */
    public Animator mo8453b(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (!this.f11899f) {
            return null;
        }
        return this.f11898e ? m8483c(view, this.f11894a, this.f11895b) : m8483c(view, this.f11897d, this.f11896c);
    }

    /* renamed from: d */
    public void m8482d(float f) {
        this.f11896c = f;
    }

    /* renamed from: e */
    public void m8481e(boolean z) {
        this.f11899f = z;
    }
}
