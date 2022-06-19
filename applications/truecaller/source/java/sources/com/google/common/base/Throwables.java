package com.google.common.base;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/common/base/Throwables.class */
public final class Throwables {
    public static final Object jla;

    static {
        Object jla2 = getJLA();
        jla = jla2;
        if (jla2 != null) {
            getJlaMethod("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (jla2 == null) {
            return;
        }
        try {
            Method jlaMethod = getJlaMethod("getStackTraceDepth", Throwable.class);
            if (jlaMethod == null) {
                return;
            }
            jlaMethod.invoke(getJLA(), new Throwable());
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
        }
    }

    public static Object getJLA() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    public static Method getJlaMethod(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void throwIfUnchecked(Throwable th) {
        Objects.requireNonNull(th);
        if (!(th instanceof RuntimeException)) {
            if (th instanceof Error) {
                throw ((Error) th);
            }
            return;
        }
        throw ((RuntimeException) th);
    }
}
