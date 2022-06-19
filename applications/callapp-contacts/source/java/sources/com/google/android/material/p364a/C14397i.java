package com.google.android.material.p364a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* renamed from: com.google.android.material.a.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/i.class */
public final class C14397i {

    /* renamed from: a */
    public long f52383a;

    /* renamed from: b */
    public long f52384b;

    /* renamed from: c */
    private TimeInterpolator f52385c;

    /* renamed from: d */
    private int f52386d;

    /* renamed from: e */
    private int f52387e;

    public C14397i(long j, long j2) {
        this.f52383a = 0L;
        this.f52384b = 300L;
        this.f52385c = null;
        this.f52386d = 0;
        this.f52387e = 1;
        this.f52383a = j;
        this.f52384b = j2;
    }

    public C14397i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f52383a = 0L;
        this.f52384b = 300L;
        this.f52385c = null;
        this.f52386d = 0;
        this.f52387e = 1;
        this.f52383a = j;
        this.f52384b = j2;
        this.f52385c = timeInterpolator;
    }

    /* renamed from: a */
    public static C14397i m11320a(ValueAnimator valueAnimator) {
        C14397i c14397i = new C14397i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m11319b(valueAnimator));
        c14397i.f52386d = valueAnimator.getRepeatCount();
        c14397i.f52387e = valueAnimator.getRepeatMode();
        return c14397i;
    }

    /* renamed from: b */
    private static TimeInterpolator m11319b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return C14389a.f52369b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return C14389a.f52370c;
        }
        TimeInterpolator timeInterpolator = interpolator;
        if (interpolator instanceof DecelerateInterpolator) {
            timeInterpolator = C14389a.f52371d;
        }
        return timeInterpolator;
    }

    /* renamed from: a */
    public final TimeInterpolator m11322a() {
        TimeInterpolator timeInterpolator = this.f52385c;
        return timeInterpolator != null ? timeInterpolator : C14389a.f52369b;
    }

    /* renamed from: a */
    public final void m11321a(Animator animator) {
        animator.setStartDelay(this.f52383a);
        animator.setDuration(this.f52384b);
        animator.setInterpolator(m11322a());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f52386d);
            valueAnimator.setRepeatMode(this.f52387e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14397i)) {
            return false;
        }
        C14397i c14397i = (C14397i) obj;
        if (this.f52383a != c14397i.f52383a || this.f52384b != c14397i.f52384b || this.f52386d != c14397i.f52386d || this.f52387e != c14397i.f52387e) {
            return false;
        }
        return m11322a().getClass().equals(c14397i.m11322a().getClass());
    }

    public final int hashCode() {
        long j = this.f52383a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f52384b;
        return (((((((i * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + m11322a().getClass().hashCode()) * 31) + this.f52386d) * 31) + this.f52387e;
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f52383a + " duration: " + this.f52384b + " interpolator: " + m11322a().getClass() + " repeatCount: " + this.f52386d + " repeatMode: " + this.f52387e + "}\n";
    }
}
