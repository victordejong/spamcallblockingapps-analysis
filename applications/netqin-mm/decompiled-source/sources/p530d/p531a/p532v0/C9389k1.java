package p530d.p531a.p532v0;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: d.a.v0.k1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/k1.class */
public final class C9389k1 implements AbstractC9503t0 {

    /* renamed from: b */
    public static final Logger f36057b = Logger.getLogger(C9389k1.class.getName());

    /* renamed from: c */
    public static final Constructor<?> f36058c;

    /* renamed from: d */
    public static final Method f36059d;

    /* renamed from: e */
    public static final RuntimeException f36060e;

    /* renamed from: a */
    public final Object f36061a;

    static {
        Constructor<?> constructor;
        Throwable th;
        Method method;
        Throwable th2;
        try {
            Class<?> cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            int i = 0;
            method = cls.getMethod("add", Long.TYPE);
            try {
                cls.getMethod("sum", new Class[0]);
                Constructor<?>[] constructors = cls.getConstructors();
                int length = constructors.length;
                while (true) {
                    if (i >= length) {
                        constructor = null;
                        break;
                    }
                    constructor = constructors[i];
                    if (constructor.getParameterTypes().length == 0) {
                        break;
                    }
                    i++;
                }
                th = null;
            } catch (Throwable th3) {
                th2 = th3;
                f36057b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th2);
                constructor = null;
                th = th2;
                if (th == null) {
                }
                f36058c = null;
                f36059d = null;
                f36060e = new RuntimeException(th);
                return;
            }
        } catch (Throwable th4) {
            th2 = th4;
            method = null;
        }
        if (th == null || constructor == null) {
            f36058c = null;
            f36059d = null;
            f36060e = new RuntimeException(th);
            return;
        }
        f36058c = constructor;
        f36059d = method;
        f36060e = null;
    }

    public C9389k1() {
        RuntimeException runtimeException = f36060e;
        if (runtimeException == null) {
            try {
                this.f36061a = f36058c.newInstance(new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        } else {
            throw runtimeException;
        }
    }

    /* renamed from: a */
    public static boolean m2861a() {
        return f36060e == null;
    }

    @Override // p530d.p531a.p532v0.AbstractC9503t0
    public void add(long j) {
        try {
            f36059d.invoke(this.f36061a, Long.valueOf(j));
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }
}
