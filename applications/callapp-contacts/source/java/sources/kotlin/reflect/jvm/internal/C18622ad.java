package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
/* renamed from: kotlin.reflect.jvm.internal.ad */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad.class */
public final class C18622ad {

    /* renamed from: kotlin.reflect.jvm.internal.ad$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$a.class */
    public static final class C18623a<T> extends AbstractC18625c<T> implements Function0<T> {

        /* renamed from: a */
        private final Function0<T> f63691a;

        /* renamed from: b */
        private volatile SoftReference<Object> f63692b;

        public C18623a(T t, Function0<T> function0) {
            if (function0 != null) {
                this.f63692b = null;
                this.f63691a = function0;
                if (t == null) {
                    return;
                }
                this.f63692b = new SoftReference<>(m3794a(t));
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.C18622ad.AbstractC18625c, kotlin.jvm.functions.Function0
        public final T invoke() {
            Object obj;
            SoftReference<Object> softReference = this.f63692b;
            if (softReference == null || (obj = softReference.get()) == null) {
                T invoke = this.f63691a.invoke();
                this.f63692b = new SoftReference<>(m3794a(invoke));
                return invoke;
            }
            return (T) m3793b(obj);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.ad$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$b.class */
    public static final class C18624b<T> extends AbstractC18625c<T> {

        /* renamed from: a */
        private final Function0<T> f63693a;

        /* renamed from: b */
        private volatile Object f63694b;

        public C18624b(Function0<T> function0) {
            if (function0 != null) {
                this.f63694b = null;
                this.f63693a = function0;
                return;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "initializer", "kotlin/reflect/jvm/internal/ReflectProperties$LazyVal", "<init>"));
        }

        @Override // kotlin.reflect.jvm.internal.C18622ad.AbstractC18625c, kotlin.jvm.functions.Function0
        public final T invoke() {
            Object obj = this.f63694b;
            if (obj != null) {
                return (T) m3793b(obj);
            }
            T invoke = this.f63693a.invoke();
            this.f63694b = m3794a(invoke);
            return invoke;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.ad$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/ad$c.class */
    public static abstract class AbstractC18625c<T> {

        /* renamed from: a */
        private static final Object f63695a = new Object() { // from class: kotlin.reflect.jvm.internal.ad.c.1
        };

        /* renamed from: a */
        protected static Object m3794a(T t) {
            Object obj = t;
            if (t == null) {
                obj = f63695a;
            }
            return obj;
        }

        /* renamed from: b */
        protected static T m3793b(Object obj) {
            Object obj2 = obj;
            if (obj == f63695a) {
                obj2 = null;
            }
            return (T) obj2;
        }

        public abstract T invoke();
    }

    /* renamed from: a */
    public static <T> C18623a<T> m3797a(T t, Function0<T> function0) {
        if (function0 == null) {
            m3798a(1);
        }
        return new C18623a<>(t, function0);
    }

    /* renamed from: a */
    public static <T> C18624b<T> m3796a(Function0<T> function0) {
        return new C18624b<>(function0);
    }

    /* renamed from: a */
    private static /* synthetic */ void m3798a(int i) {
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

    /* renamed from: b */
    public static <T> C18623a<T> m3795b(Function0<T> function0) {
        if (function0 == null) {
            m3798a(2);
        }
        return m3797a(null, function0);
    }
}
