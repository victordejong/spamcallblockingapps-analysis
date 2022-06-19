package com.bumptech.glide.p223p;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* renamed from: com.bumptech.glide.p.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/f.class */
public final class C4377f {

    /* renamed from: a */
    private static final double f13380a;

    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    static {
        char c = 0;
        if (Build.VERSION.SDK_INT >= 17) {
            c = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f13380a = c;
    }

    /* renamed from: a */
    public static double m22736a(long j) {
        return (m22735b() - j) * f13380a;
    }

    @TargetApi(17)
    /* renamed from: b */
    public static long m22735b() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
