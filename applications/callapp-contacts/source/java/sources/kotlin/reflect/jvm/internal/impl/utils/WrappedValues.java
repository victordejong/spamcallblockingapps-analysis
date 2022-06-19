package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.C18524p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues.class */
public final class WrappedValues {

    /* renamed from: b */
    private static final Object f66345b = new Object() { // from class: kotlin.reflect.jvm.internal.impl.utils.WrappedValues.1
        public final String toString() {
            return "NULL_VALUE";
        }
    };

    /* renamed from: a */
    public static volatile boolean f66344a = false;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues$WrappedProcessCanceledException.class */
    public static class WrappedProcessCanceledException extends RuntimeException {
        public WrappedProcessCanceledException(Throwable th) {
            super("Rethrow stored exception", th);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.utils.WrappedValues$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues$a.class */
    public static final class C19998a {

        /* renamed from: a */
        private final Throwable f66346a;

        private C19998a(Throwable th) {
            if (th == null) {
                m1212a(0);
            }
            this.f66346a = th;
        }

        /* renamed from: a */
        private static /* synthetic */ void m1212a(int i) {
            String str = i != 1 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 1 ? 3 : 2];
            if (i != 1) {
                objArr[0] = "throwable";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            }
            if (i != 1) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper";
            } else {
                objArr[1] = "getThrowable";
            }
            if (i != 1) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 1 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        /* renamed from: a */
        public final Throwable m1213a() {
            Throwable th = this.f66346a;
            if (th == null) {
                m1212a(1);
            }
            return th;
        }

        public final String toString() {
            return this.f66346a.toString();
        }
    }

    /* renamed from: a */
    public static <V> Object m1217a(V v) {
        if (v != null) {
            if (v == null) {
                m1218a(2);
            }
            return v;
        }
        Object obj = f66345b;
        if (obj == null) {
            m1218a(1);
        }
        return obj;
    }

    /* renamed from: a */
    public static Object m1216a(Throwable th) {
        return new C19998a(th);
    }

    /* renamed from: a */
    private static /* synthetic */ void m1218a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        } else if (i != 3) {
            objArr[0] = "value";
        } else {
            objArr[0] = "throwable";
        }
        if (i == 1 || i == 2) {
            objArr[1] = "escapeNull";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/WrappedValues";
        }
        if (i != 1 && i != 2) {
            if (i == 3) {
                objArr[2] = "escapeThrowable";
            } else if (i != 4) {
                objArr[2] = "unescapeNull";
            } else {
                objArr[2] = "unescapeExceptionOrNull";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* renamed from: b */
    public static <V> V m1215b(Object obj) {
        if (obj == null) {
            m1218a(4);
        }
        Object m1214c = m1214c(obj);
        if (m1214c == null) {
            m1218a(0);
        }
        Object obj2 = m1214c;
        if (m1214c == f66345b) {
            obj2 = null;
        }
        return (V) obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <V> V m1214c(Object obj) {
        if (obj instanceof C19998a) {
            Throwable e = ((C19998a) obj).m1213a();
            if (f66344a && C20009c.m1199a(e)) {
                throw new WrappedProcessCanceledException(e);
            }
            C18524p.m3840d(e, "e");
            throw e;
        }
        return obj;
    }
}
