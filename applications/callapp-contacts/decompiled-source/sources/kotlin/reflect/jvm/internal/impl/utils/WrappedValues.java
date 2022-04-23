package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues.class */
public final class WrappedValues {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f38501b = new Object() { // from class: kotlin.reflect.jvm.internal.impl.utils.WrappedValues.1
        public final String toString() {
            return "NULL_VALUE";
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f38500a = false;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues$WrappedProcessCanceledException.class */
    public static class WrappedProcessCanceledException extends RuntimeException {
        public WrappedProcessCanceledException(Throwable th) {
            super("Rethrow stored exception", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/utils/WrappedValues$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Throwable f38502a;

        private a(Throwable th) {
            if (th == null) {
                a(0);
            }
            this.f38502a = th;
        }

        private static /* synthetic */ void a(int i) {
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

        public final Throwable a() {
            Throwable th = this.f38502a;
            if (th == null) {
                a(1);
            }
            return th;
        }

        public final String toString() {
            return this.f38502a.toString();
        }
    }

    public static <V> Object a(V v) {
        if (v == null) {
            Object obj = f38501b;
            if (obj == null) {
                a(1);
            }
            return obj;
        }
        if (v == null) {
            a(2);
        }
        return v;
    }

    public static Object a(Throwable th) {
        return new a(th);
    }

    private static /* synthetic */ void a(int i) {
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
        if (!(i == 1 || i == 2)) {
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

    public static <V> V b(Object obj) {
        if (obj == null) {
            a(4);
        }
        Object c2 = c(obj);
        if (c2 == null) {
            a(0);
        }
        V v = (V) c2;
        if (c2 == f38501b) {
            v = null;
        }
        return v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> V c(Object obj) {
        if (!(obj instanceof a)) {
            return obj;
        }
        Throwable e = ((a) obj).a();
        if (!f38500a || !c.a(e)) {
            p.d(e, "e");
            throw e;
        }
        throw new WrappedProcessCanceledException(e);
    }
}
