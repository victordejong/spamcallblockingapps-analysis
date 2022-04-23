package androidx.k;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/k/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static long f2481a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f2482b;

    private a() {
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    public static boolean a() {
        try {
            if (f2482b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError e) {
        }
        return c();
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }

    private static boolean c() {
        if (Build.VERSION.SDK_INT < 18) {
            return false;
        }
        try {
            if (f2482b == null) {
                f2481a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f2482b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f2482b.invoke(null, Long.valueOf(f2481a))).booleanValue();
        } catch (Exception e) {
            if (e instanceof InvocationTargetException) {
                Throwable cause = e.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new RuntimeException(cause);
            }
            StringBuilder sb = new StringBuilder("Unable to call ");
            sb.append("isTagEnabled");
            sb.append(" via reflection");
            return false;
        }
    }
}
