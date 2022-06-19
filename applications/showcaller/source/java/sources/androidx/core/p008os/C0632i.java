package androidx.core.p008os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.Method;
@Deprecated
/* renamed from: androidx.core.os.i */
/* loaded from: classes-dex2jar.jar:androidx/core/os/i.class */
public final class C0632i {

    /* renamed from: a */
    private static long f3025a;

    /* renamed from: b */
    private static Method f3026b;

    /* renamed from: c */
    private static Method f3027c;

    /* renamed from: d */
    private static Method f3028d;

    /* renamed from: e */
    private static Method f3029e;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 18 || i >= 29) {
            return;
        }
        try {
            f3025a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            f3026b = Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            f3027c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            f3028d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            f3029e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception e) {
            Log.i("TraceCompat", "Unable to initialize via reflection.", e);
        }
    }

    /* renamed from: a */
    public static void m33186a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: b */
    public static void m33185b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
