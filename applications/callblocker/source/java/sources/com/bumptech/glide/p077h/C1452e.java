package com.bumptech.glide.p077h;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* renamed from: com.bumptech.glide.h.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/e.class */
public final class C1452e {

    /* renamed from: a */
    private static final double f4760a;

    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    static {
        char c = 0;
        if (Build.VERSION.SDK_INT >= 17) {
            c = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f4760a = c;
    }

    /* renamed from: a */
    public static double m17001a(long j) {
        return (m17002a() - j) * f4760a;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @TargetApi(17)
    /* renamed from: a */
    public static long m17002a() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
