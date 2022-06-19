package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/g.class */
public final class C14636g {

    /* renamed from: a */
    public final ArrayList<C14638a> f53406a = new ArrayList<>();

    /* renamed from: b */
    public C14638a f53407b = null;

    /* renamed from: c */
    public ValueAnimator f53408c = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f53409d = new AnimatorListenerAdapter() { // from class: com.google.android.material.internal.g.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (C14636g.this.f53408c == animator) {
                C14636g.this.f53408c = null;
            }
        }
    };

    /* renamed from: com.google.android.material.internal.g$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/g$a.class */
    public static final class C14638a {

        /* renamed from: a */
        public final int[] f53411a;

        /* renamed from: b */
        public final ValueAnimator f53412b;

        C14638a(int[] iArr, ValueAnimator valueAnimator) {
            this.f53411a = iArr;
            this.f53412b = valueAnimator;
        }
    }

    /* renamed from: a */
    public final void m10523a(int[] iArr, ValueAnimator valueAnimator) {
        C14638a c14638a = new C14638a(iArr, valueAnimator);
        valueAnimator.addListener(this.f53409d);
        this.f53406a.add(c14638a);
    }
}
