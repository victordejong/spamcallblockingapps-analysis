package com.mustafatunc.simplesnackbarbuilder.tsnackbar;

import android.support.p001v4.view.animation.FastOutSlowInInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/AnimationUtils.class */
class AnimationUtils {
    public static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final Interpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator();
    public static final Interpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();

    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/AnimationUtils$AnimationListenerAdapter.class */
    public static class AnimationListenerAdapter implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    AnimationUtils() {
    }

    static float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    static int lerp(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
