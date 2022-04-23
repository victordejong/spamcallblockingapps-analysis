package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad.class */
public final class ad {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$a.class */
    public static final class a<T> extends c<T> implements Function0<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Function0<T> f36869a;

        /* renamed from: b  reason: collision with root package name */
        private volatile SoftReference<Object> f36870b;

        public a(T t, Function0<T> function0) {
            if (function0 != null) {
                this.f36870b = null;
                this.f36869a = function0;
                if (t != null) {
                    this.f36870b = new SoftReference<>(a(t));
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.ad.c, kotlin.jvm.functions.Function0
        public final T invoke() {
            Object obj;
            SoftReference<Object> softReference = this.f36870b;
            if (softReference != null && (obj = softReference.get()) != null) {
                return (T) b(obj);
            }
            T invoke = this.f36869a.invoke();
            this.f36870b = new SoftReference<>(a(invoke));
            return invoke;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$b.class */
    public static final class b<T> extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Function0<T> f36871a;

        /* renamed from: b  reason: collision with root package name */
        private volatile Object f36872b;

        public b(Function0<T> function0) {
            if (function0 != null) {
                this.f36872b = null;
                this.f36871a = function0;
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.ad.c, kotlin.jvm.functions.Function0
        public final T invoke() {
            Object obj = this.f36872b;
            if (obj != null) {
                return (T) b(obj);
            }
            T invoke = this.f36871a.invoke();
            this.f36872b = a(invoke);
            return invoke;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$c.class */
    public static abstract class c<T> {

        /* renamed from: a  reason: collision with root package name */
        private static final Object f36873a = new Object() { // from class: kotlin.reflect.jvm.internal.ad.c.1
        };

        protected static Object a(T t) {
            Object obj = t;
            if (t == null) {
                obj = f36873a;
            }
            return obj;
        }

        protected static T b(Object obj) {
            T t = (T) obj;
            if (obj == f36873a) {
                t = null;
            }
            return t;
        }

        public abstract T invoke();
    }

    public static <T> a<T> a(T t, Function0<T> function0) {
        if (function0 == null) {
            a(1);
        }
        return new a<>(t, function0);
    }

    public static <T> b<T> a(Function0<T> function0) {
        return new b<>(function0);
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (i == 1 || i == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static <T> a<T> b(Function0<T> function0) {
        if (function0 == null) {
            a(2);
        }
        return a(null, function0);
    }
}
