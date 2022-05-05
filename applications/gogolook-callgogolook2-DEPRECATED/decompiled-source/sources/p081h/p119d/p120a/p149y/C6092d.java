package p081h.p119d.p120a.p149y;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;
/* renamed from: h.d.a.y.d */
/* loaded from: classes-dex2jar.jar:h/d/a/y/d.class */
public final class C6092d {

    /* renamed from: a */
    public static final double f15147a;

    static {
        double d = 1.0d;
        if (17 <= Build.VERSION.SDK_INT) {
            d = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f15147a = d;
    }

    /* renamed from: a */
    public static double m23878a(long j) {
        return (m23879a() - j) * f15147a;
    }

    @TargetApi(17)
    /* renamed from: a */
    public static long m23879a() {
        return 17 <= Build.VERSION.SDK_INT ? SystemClock.elapsedRealtimeNanos() : System.currentTimeMillis();
    }
}
