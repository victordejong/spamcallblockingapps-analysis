package com.google.android.material.p142a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* renamed from: com.google.android.material.a.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/i.class */
public class C4513i {

    /* renamed from: a */
    private long f19584a;

    /* renamed from: b */
    private long f19585b;

    /* renamed from: c */
    private TimeInterpolator f19586c;

    /* renamed from: d */
    private int f19587d;

    /* renamed from: e */
    private int f19588e;

    public C4513i(long j, long j2) {
        this.f19584a = 0L;
        this.f19585b = 300L;
        this.f19586c = null;
        this.f19587d = 0;
        this.f19588e = 1;
        this.f19584a = j;
        this.f19585b = j2;
    }

    public C4513i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f19584a = 0L;
        this.f19585b = 300L;
        this.f19586c = null;
        this.f19587d = 0;
        this.f19588e = 1;
        this.f19584a = j;
        this.f19585b = j2;
        this.f19586c = timeInterpolator;
    }

    /* renamed from: a */
    public static C4513i m3834a(ValueAnimator valueAnimator) {
        C4513i c4513i = new C4513i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m3832b(valueAnimator));
        c4513i.f19587d = valueAnimator.getRepeatCount();
        c4513i.f19588e = valueAnimator.getRepeatMode();
        return c4513i;
    }

    /* renamed from: b */
    private static TimeInterpolator m3832b(ValueAnimator valueAnimator) {
        TimeInterpolator timeInterpolator;
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            timeInterpolator = C4505a.f19570b;
        } else if (interpolator instanceof AccelerateInterpolator) {
            timeInterpolator = C4505a.f19571c;
        } else {
            timeInterpolator = interpolator;
            if (interpolator instanceof DecelerateInterpolator) {
                timeInterpolator = C4505a.f19572d;
            }
        }
        return timeInterpolator;
    }

    /* renamed from: a */
    public long m3836a() {
        return this.f19584a;
    }

    /* renamed from: a */
    public void m3835a(Animator animator) {
        animator.setStartDelay(m3836a());
        animator.setDuration(m3833b());
        animator.setInterpolator(m3831c());
        if (animator instanceof ValueAnimator) {
            ((ValueAnimator) animator).setRepeatCount(m3830d());
            ((ValueAnimator) animator).setRepeatMode(m3829e());
        }
    }

    /* renamed from: b */
    public long m3833b() {
        return this.f19585b;
    }

    /* renamed from: c */
    public TimeInterpolator m3831c() {
        return this.f19586c != null ? this.f19586c : C4505a.f19570b;
    }

    /* renamed from: d */
    public int m3830d() {
        return this.f19587d;
    }

    /* renamed from: e */
    public int m3829e() {
        return this.f19588e;
    }

    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            z = true;
        } else {
            z = false;
            if (obj instanceof C4513i) {
                C4513i c4513i = (C4513i) obj;
                z = false;
                if (m3836a() == c4513i.m3836a()) {
                    z = false;
                    if (m3833b() == c4513i.m3833b()) {
                        z = false;
                        if (m3830d() == c4513i.m3830d()) {
                            z = false;
                            if (m3829e() == c4513i.m3829e()) {
                                z = m3831c().getClass().equals(c4513i.m3831c().getClass());
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (((((((((int) (m3836a() ^ (m3836a() >>> 32))) * 31) + ((int) (m3833b() ^ (m3833b() >>> 32)))) * 31) + m3831c().getClass().hashCode()) * 31) + m3830d()) * 31) + m3829e();
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m3836a() + " duration: " + m3833b() + " interpolator: " + m3831c().getClass() + " repeatCount: " + m3830d() + " repeatMode: " + m3829e() + "}\n";
    }
}
