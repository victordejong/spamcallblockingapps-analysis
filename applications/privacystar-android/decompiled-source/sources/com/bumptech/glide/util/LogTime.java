package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/util/LogTime.class */
public final class LogTime {
    private static final double MILLIS_MULTIPLIER;

    static {
        double d = 1.0d;
        if (Build.VERSION.SDK_INT >= 17) {
            d = 1.0d / Math.pow(10.0d, 6.0d);
        }
        MILLIS_MULTIPLIER = d;
    }

    private LogTime() {
    }

    public static double getElapsedMillis(long j) {
        return (getLogTime() - j) * MILLIS_MULTIPLIER;
    }

    @TargetApi(17)
    public static long getLogTime() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
