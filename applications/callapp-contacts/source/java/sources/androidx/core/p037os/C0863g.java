package androidx.core.p037os;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;
/* renamed from: androidx.core.os.g */
/* loaded from: classes-dex2jar.jar:androidx/core/os/g.class */
public final class C0863g {

    /* renamed from: a */
    private static long f3631a;

    /* renamed from: b */
    private static Method f3632b;

    /* renamed from: c */
    private static Method f3633c;

    /* renamed from: d */
    private static Method f3634d;

    /* renamed from: e */
    private static Method f3635e;

    static {
        if (Build.VERSION.SDK_INT < 18 || Build.VERSION.SDK_INT >= 29) {
            return;
        }
        try {
            f3631a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            f3632b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            f3633c = Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            f3634d = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            f3635e = Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
        } catch (Exception e) {
        }
    }

    private C0863g() {
    }

    /* renamed from: a */
    public static void m44290a() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: a */
    public static void m44289a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }
}
