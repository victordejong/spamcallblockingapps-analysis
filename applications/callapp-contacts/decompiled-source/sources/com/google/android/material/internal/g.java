package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList<a> f30630a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public a f30631b = null;

    /* renamed from: c  reason: collision with root package name */
    public ValueAnimator f30632c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Animator.AnimatorListener f30633d = new AnimatorListenerAdapter() { // from class: com.google.android.material.internal.g.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (g.this.f30632c == animator) {
                g.this.f30632c = null;
            }
        }
    };

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f30635a;

        /* renamed from: b  reason: collision with root package name */
        public final ValueAnimator f30636b;

        a(int[] iArr, ValueAnimator valueAnimator) {
            this.f30635a = iArr;
            this.f30636b = valueAnimator;
        }
    }

    public final void a(int[] iArr, ValueAnimator valueAnimator) {
        a aVar = new a(iArr, valueAnimator);
        valueAnimator.addListener(this.f30633d);
        this.f30630a.add(aVar);
    }
}
