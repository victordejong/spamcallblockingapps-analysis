package com.google.android.material.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/a/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public long f30187a;

    /* renamed from: b  reason: collision with root package name */
    public long f30188b;

    /* renamed from: c  reason: collision with root package name */
    private TimeInterpolator f30189c;

    /* renamed from: d  reason: collision with root package name */
    private int f30190d;
    private int e;

    public i(long j, long j2) {
        this.f30187a = 0L;
        this.f30188b = 300L;
        this.f30189c = null;
        this.f30190d = 0;
        this.e = 1;
        this.f30187a = j;
        this.f30188b = j2;
    }

    public i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f30187a = 0L;
        this.f30188b = 300L;
        this.f30189c = null;
        this.f30190d = 0;
        this.e = 1;
        this.f30187a = j;
        this.f30188b = j2;
        this.f30189c = timeInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.f30190d = valueAnimator.getRepeatCount();
        iVar.e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.f30174b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.f30175c;
        }
        TimeInterpolator timeInterpolator = interpolator;
        if (interpolator instanceof DecelerateInterpolator) {
            timeInterpolator = a.f30176d;
        }
        return timeInterpolator;
    }

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f30189c;
        return timeInterpolator != null ? timeInterpolator : a.f30174b;
    }

    public final void a(Animator animator) {
        animator.setStartDelay(this.f30187a);
        animator.setDuration(this.f30188b);
        animator.setInterpolator(a());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f30190d);
            valueAnimator.setRepeatMode(this.e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f30187a == iVar.f30187a && this.f30188b == iVar.f30188b && this.f30190d == iVar.f30190d && this.e == iVar.e) {
            return a().getClass().equals(iVar.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f30187a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f30188b;
        return (((((((i * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + a().getClass().hashCode()) * 31) + this.f30190d) * 31) + this.e;
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f30187a + " duration: " + this.f30188b + " interpolator: " + a().getClass() + " repeatCount: " + this.f30190d + " repeatMode: " + this.e + "}\n";
    }
}
