package com.bumptech.glide.g;

import android.os.Build;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final double f7351a;

    static {
        double d2 = 1.0d;
        if (Build.VERSION.SDK_INT >= 17) {
            d2 = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f7351a = d2;
    }

    private f() {
    }

    public static double a(long j) {
        return (a() - j) * f7351a;
    }

    public static long a() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
