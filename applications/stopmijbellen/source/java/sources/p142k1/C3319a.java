package p142k1;

import android.annotation.SuppressLint;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: k1.a */
/* loaded from: classes-dex2jar.jar:k1/a.class */
public final class C3319a {

    /* renamed from: a */
    public static long f11241a;

    /* renamed from: b */
    public static Method f11242b;

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static boolean m2386a() {
        boolean z;
        try {
            if (f11242b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError e) {
        }
        try {
            if (f11242b == null) {
                f11241a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f11242b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            z = ((Boolean) f11242b.invoke(null, Long.valueOf(f11241a))).booleanValue();
        } catch (Exception e2) {
            z = false;
            if (e2 instanceof InvocationTargetException) {
                Throwable cause = e2.getCause();
                if (!(cause instanceof RuntimeException)) {
                    throw new RuntimeException(cause);
                }
                throw ((RuntimeException) cause);
            }
        }
        return z;
    }
}
