package p131c.p161d.p266c.p267a;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: c.d.c.a.t */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/t.class */
public final class C4942t {

    /* renamed from: a */
    public static final Object f17576a;

    static {
        Object b = m24750b();
        f17576a = b;
        if (b != null) {
            m24753a();
        }
        if (f17576a != null) {
            m24748c();
        }
    }

    /* renamed from: a */
    public static String m24751a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static Method m24753a() {
        return m24752a("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    /* renamed from: a */
    public static Method m24752a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Object m24750b() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: b */
    public static void m24749b(Throwable th) {
        C4933n.m24795a(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    /* renamed from: c */
    public static Method m24748c() {
        try {
            Method a = m24752a("getStackTraceDepth", Throwable.class);
            if (a == null) {
                return null;
            }
            a.invoke(m24750b(), new Throwable());
            return a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }
}
