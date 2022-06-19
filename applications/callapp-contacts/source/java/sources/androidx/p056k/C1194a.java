package androidx.p056k;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.k.a */
/* loaded from: classes-dex2jar.jar:androidx/k/a.class */
public final class C1194a {

    /* renamed from: a */
    private static long f4662a;

    /* renamed from: b */
    private static Method f4663b;

    private C1194a() {
    }

    /* renamed from: a */
    public static void m43377a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: a */
    public static boolean m43378a() {
        try {
            if (f4663b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError e) {
        }
        return m43375c();
    }

    /* renamed from: b */
    public static void m43376b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    /* renamed from: c */
    private static boolean m43375c() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f4663b == null) {
                    f4662a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f4663b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f4663b.invoke(null, Long.valueOf(f4662a))).booleanValue();
            } catch (Exception e) {
                if (e instanceof InvocationTargetException) {
                    Throwable cause = e.getCause();
                    if (!(cause instanceof RuntimeException)) {
                        throw new RuntimeException(cause);
                    }
                    throw ((RuntimeException) cause);
                }
                StringBuilder sb = new StringBuilder("Unable to call ");
                sb.append("isTagEnabled");
                sb.append(" via reflection");
                return false;
            }
        }
        return false;
    }
}
