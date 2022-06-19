package com.google.android.material.animation;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.p033f.p034a.p035a.C0694a;
import androidx.p033f.p034a.p035a.C0695b;
import androidx.p033f.p034a.p035a.C0696c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/AnimationUtils.class */
public class AnimationUtils {
    public static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final TimeInterpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new C0695b();
    public static final TimeInterpolator FAST_OUT_LINEAR_IN_INTERPOLATOR = new C0694a();
    public static final TimeInterpolator LINEAR_OUT_SLOW_IN_INTERPOLATOR = new C0696c();
    public static final TimeInterpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    public static float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static int lerp(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
