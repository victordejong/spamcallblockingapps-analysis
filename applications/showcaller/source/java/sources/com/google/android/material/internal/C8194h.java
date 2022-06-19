package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/h.class */
public final class C8194h {

    /* renamed from: a */
    private final ArrayList<C8196b> f37010a = new ArrayList<>();

    /* renamed from: b */
    private C8196b f37011b = null;

    /* renamed from: c */
    ValueAnimator f37012c = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f37013d = new C8195a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/h$a.class */
    public class C8195a extends AnimatorListenerAdapter {
        C8195a() {
            C8194h.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C8194h c8194h = C8194h.this;
            if (c8194h.f37012c == animator) {
                c8194h.f37012c = null;
            }
        }
    }

    /* renamed from: com.google.android.material.internal.h$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/h$b.class */
    public static class C8196b {

        /* renamed from: a */
        final int[] f37015a;

        /* renamed from: b */
        final ValueAnimator f37016b;

        C8196b(int[] iArr, ValueAnimator valueAnimator) {
            this.f37015a = iArr;
            this.f37016b = valueAnimator;
        }
    }

    /* renamed from: b */
    private void m4490b() {
        ValueAnimator valueAnimator = this.f37012c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f37012c = null;
        }
    }

    /* renamed from: e */
    private void m4487e(C8196b c8196b) {
        ValueAnimator valueAnimator = c8196b.f37016b;
        this.f37012c = valueAnimator;
        valueAnimator.start();
    }

    /* renamed from: a */
    public void m4491a(int[] iArr, ValueAnimator valueAnimator) {
        C8196b c8196b = new C8196b(iArr, valueAnimator);
        valueAnimator.addListener(this.f37013d);
        this.f37010a.add(c8196b);
    }

    /* renamed from: c */
    public void m4489c() {
        ValueAnimator valueAnimator = this.f37012c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f37012c = null;
        }
    }

    /* renamed from: d */
    public void m4488d(int[] iArr) {
        C8196b c8196b;
        int size = this.f37010a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c8196b = null;
                break;
            }
            C8196b c8196b2 = this.f37010a.get(i);
            if (StateSet.stateSetMatches(c8196b2.f37015a, iArr)) {
                c8196b = c8196b2;
                break;
            }
            i++;
        }
        C8196b c8196b3 = this.f37011b;
        if (c8196b == c8196b3) {
            return;
        }
        if (c8196b3 != null) {
            m4490b();
        }
        this.f37011b = c8196b;
        if (c8196b == null) {
            return;
        }
        m4487e(c8196b);
    }
}
