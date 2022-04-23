package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/os/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static long f1947a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f1948b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f1949c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f1950d;
    private static Method e;

    static {
        if (Build.VERSION.SDK_INT >= 18 && Build.VERSION.SDK_INT < 29) {
            try {
                f1947a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f1948b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                f1949c = Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
                f1950d = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                e = Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            } catch (Exception e2) {
            }
        }
    }

    private g() {
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
