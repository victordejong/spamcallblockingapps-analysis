package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/f.class */
public final class C4694f {

    /* renamed from: b */
    private final ArrayList<C4696a> f20373b = new ArrayList<>();

    /* renamed from: c */
    private C4696a f20374c = null;

    /* renamed from: a */
    ValueAnimator f20372a = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f20375d = new AnimatorListenerAdapter() { // from class: com.google.android.material.internal.f.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (C4694f.this.f20372a == animator) {
                C4694f.this.f20372a = null;
            }
        }
    };

    /* renamed from: com.google.android.material.internal.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/f$a.class */
    public static class C4696a {

        /* renamed from: a */
        final int[] f20377a;

        /* renamed from: b */
        final ValueAnimator f20378b;

        C4696a(int[] iArr, ValueAnimator valueAnimator) {
            this.f20377a = iArr;
            this.f20378b = valueAnimator;
        }
    }

    /* renamed from: a */
    private void m2847a(C4696a c4696a) {
        this.f20372a = c4696a.f20378b;
        this.f20372a.start();
    }

    /* renamed from: b */
    private void m2844b() {
        if (this.f20372a != null) {
            this.f20372a.cancel();
            this.f20372a = null;
        }
    }

    /* renamed from: a */
    public void m2848a() {
        if (this.f20372a != null) {
            this.f20372a.end();
            this.f20372a = null;
        }
    }

    /* renamed from: a */
    public void m2846a(int[] iArr) {
        C4696a c4696a;
        int size = this.f20373b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c4696a = null;
                break;
            }
            C4696a c4696a2 = this.f20373b.get(i);
            if (StateSet.stateSetMatches(c4696a2.f20377a, iArr)) {
                c4696a = c4696a2;
                break;
            }
            i++;
        }
        if (c4696a == this.f20374c) {
            return;
        }
        if (this.f20374c != null) {
            m2844b();
        }
        this.f20374c = c4696a;
        if (c4696a == null) {
            return;
        }
        m2847a(c4696a);
    }

    /* renamed from: a */
    public void m2845a(int[] iArr, ValueAnimator valueAnimator) {
        C4696a c4696a = new C4696a(iArr, valueAnimator);
        valueAnimator.addListener(this.f20375d);
        this.f20373b.add(c4696a);
    }
}
