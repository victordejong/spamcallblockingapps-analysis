package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/MotionTiming.class */
public class MotionTiming {

    /* renamed from: a */
    private long f9938a;

    /* renamed from: b */
    private long f9939b;
    @Nullable

    /* renamed from: c */
    private TimeInterpolator f9940c;

    /* renamed from: d */
    private int f9941d;

    /* renamed from: e */
    private int f9942e;

    public MotionTiming(long j, long j2) {
        this.f9938a = 0L;
        this.f9939b = 300L;
        this.f9940c = null;
        this.f9941d = 0;
        this.f9942e = 1;
        this.f9938a = j;
        this.f9939b = j2;
    }

    public MotionTiming(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.f9938a = 0L;
        this.f9939b = 300L;
        this.f9940c = null;
        this.f9941d = 0;
        this.f9942e = 1;
        this.f9938a = j;
        this.f9939b = j2;
        this.f9940c = timeInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: b */
    public static MotionTiming m10744b(@NonNull ValueAnimator valueAnimator) {
        MotionTiming motionTiming = new MotionTiming(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m10740f(valueAnimator));
        motionTiming.f9941d = valueAnimator.getRepeatCount();
        motionTiming.f9942e = valueAnimator.getRepeatMode();
        return motionTiming;
    }

    /* renamed from: f */
    private static TimeInterpolator m10740f(@NonNull ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return AnimationUtils.f9924b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return AnimationUtils.f9925c;
        }
        TimeInterpolator timeInterpolator = interpolator;
        if (interpolator instanceof DecelerateInterpolator) {
            timeInterpolator = AnimationUtils.f9926d;
        }
        return timeInterpolator;
    }

    /* renamed from: a */
    public void m10745a(@NonNull Animator animator) {
        animator.setStartDelay(m10743c());
        animator.setDuration(m10742d());
        animator.setInterpolator(m10741e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(m10739g());
            valueAnimator.setRepeatMode(m10738h());
        }
    }

    /* renamed from: c */
    public long m10743c() {
        return this.f9938a;
    }

    /* renamed from: d */
    public long m10742d() {
        return this.f9939b;
    }

    @Nullable
    /* renamed from: e */
    public TimeInterpolator m10741e() {
        TimeInterpolator timeInterpolator = this.f9940c;
        if (timeInterpolator == null) {
            timeInterpolator = AnimationUtils.f9924b;
        }
        return timeInterpolator;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MotionTiming)) {
            return false;
        }
        MotionTiming motionTiming = (MotionTiming) obj;
        if (m10743c() == motionTiming.m10743c() && m10742d() == motionTiming.m10742d() && m10739g() == motionTiming.m10739g() && m10738h() == motionTiming.m10738h()) {
            return m10741e().getClass().equals(motionTiming.m10741e().getClass());
        }
        return false;
    }

    /* renamed from: g */
    public int m10739g() {
        return this.f9941d;
    }

    /* renamed from: h */
    public int m10738h() {
        return this.f9942e;
    }

    public int hashCode() {
        return (((((((((int) (m10743c() ^ (m10743c() >>> 32))) * 31) + ((int) (m10742d() ^ (m10742d() >>> 32)))) * 31) + m10741e().getClass().hashCode()) * 31) + m10739g()) * 31) + m10738h();
    }

    @NonNull
    public String toString() {
        return '\n' + MotionTiming.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m10743c() + " duration: " + m10742d() + " interpolator: " + m10741e().getClass() + " repeatCount: " + m10739g() + " repeatMode: " + m10738h() + "}\n";
    }
}
