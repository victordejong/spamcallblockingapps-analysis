package p020b.p073s;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: b.s.a */
/* loaded from: classes-dex2jar.jar:b/s/a.class */
public final class C1790a {

    /* renamed from: a */
    private static long f6639a;

    /* renamed from: b */
    private static Method f6640b;

    /* renamed from: a */
    public static void m28894a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            C1791b.m28889a(str);
        }
    }

    /* renamed from: b */
    public static void m28893b() {
        if (Build.VERSION.SDK_INT >= 18) {
            C1791b.m28888b();
        }
    }

    /* renamed from: c */
    private static void m28892c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public static boolean m28891d() {
        try {
            if (f6640b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError e) {
        }
        return m28890e();
    }

    /* renamed from: e */
    private static boolean m28890e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f6640b == null) {
                    f6639a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f6640b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f6640b.invoke(null, Long.valueOf(f6639a))).booleanValue();
            } catch (Exception e) {
                m28892c("isTagEnabled", e);
                return false;
            }
        }
        return false;
    }
}
