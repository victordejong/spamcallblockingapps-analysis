package com.bumptech.glide.p116g;

import android.os.Build;
import android.os.SystemClock;
/* renamed from: com.bumptech.glide.g.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/f.class */
public final class C3638f {

    /* renamed from: a */
    private static final double f13748a;

    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    static {
        char c = 0;
        if (Build.VERSION.SDK_INT >= 17) {
            c = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f13748a = c;
    }

    private C3638f() {
    }

    /* renamed from: a */
    public static double m37592a(long j) {
        return (m37593a() - j) * f13748a;
    }

    /* renamed from: a */
    public static long m37593a() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
