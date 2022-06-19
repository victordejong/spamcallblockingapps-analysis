package p1727n3.p1807k.p1816e;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;
@Deprecated
/* renamed from: n3.k.e.h */
/* loaded from: classes-dex2jar.jar:n3/k/e/h.class */
public final class C26516h {

    /* renamed from: a */
    public static long f74305a;

    /* renamed from: b */
    public static Method f74306b;

    /* renamed from: c */
    public static Method f74307c;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f74305a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                f74306b = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                f74307c = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception e) {
            }
        }
    }
}
