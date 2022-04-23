package com.bumptech.glide.p029o;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* renamed from: com.bumptech.glide.o.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/f.class */
public final class C0851f {

    /* renamed from: a */
    private static final double f3818a;

    static {
        double d = 1.0d;
        if (Build.VERSION.SDK_INT >= 17) {
            d = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f3818a = d;
    }

    /* renamed from: a */
    public static double m10776a(long j) {
        double b = m10775b() - j;
        double d = f3818a;
        Double.isNaN(b);
        return b * d;
    }

    @TargetApi(17)
    /* renamed from: b */
    public static long m10775b() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
