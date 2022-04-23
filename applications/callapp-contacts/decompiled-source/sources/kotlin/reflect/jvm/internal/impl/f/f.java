package kotlin.reflect.jvm.internal.impl.f;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f.class */
public class f implements n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f37640a;

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f37641c = true;

    /* renamed from: d  reason: collision with root package name */
    private static final String f37642d;

    /* renamed from: b  reason: collision with root package name */
    protected final kotlin.reflect.jvm.internal.impl.f.k f37643b;
    private final c e;
    private final String f;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$a.class */
    static final class a<K, V> extends b<K, V> implements kotlin.reflect.jvm.internal.impl.f.a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f37649a = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private a(f fVar, ConcurrentMap<d<K, V>, Object> concurrentMap) {
            super(concurrentMap);
            if (fVar == null) {
                a(0);
            }
            if (concurrentMap == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "computation";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 3 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        @Override // kotlin.reflect.jvm.internal.impl.f.f.b, kotlin.reflect.jvm.internal.impl.f.a
        public final V a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                a(2);
            }
            V v = (V) super.a((a<K, V>) k, (Function0<? extends Object>) function0);
            if (f37649a || v != null) {
                if (v == null) {
                    a(3);
                }
                return v;
            }
            throw new AssertionError("computeIfAbsent() returned null under " + a());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$b.class */
    static class b<K, V> extends i<d<K, V>, V> implements kotlin.reflect.jvm.internal.impl.f.b<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private b(f fVar, ConcurrentMap<d<K, V>, Object> concurrentMap) {
            super(fVar, concurrentMap, new Function1<d<K, V>, V>() { // from class: kotlin.reflect.jvm.internal.impl.f.f.b.1
                @Override // kotlin.jvm.functions.Function1
                public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return ((d) obj).f37651a.invoke();
                }
            });
            if (fVar == null) {
                a(0);
            }
            if (concurrentMap == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computation";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNullableValuesBasedOnMemoizedFunction";
            if (i != 2) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "computeIfAbsent";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        public V a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                a(2);
            }
            return invoke(new d(k, function0));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$c.class */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37650a = new c() { // from class: kotlin.reflect.jvm.internal.impl.f.f.c.1
            @Override // kotlin.reflect.jvm.internal.impl.f.f.c
            public final RuntimeException a(Throwable e) {
                p.d(e, "e");
                throw e;
            }
        };

        RuntimeException a(Throwable th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$d.class */
    public static final class d<K, V> {

        /* renamed from: a  reason: collision with root package name */
        final Function0<? extends V> f37651a;

        /* renamed from: b  reason: collision with root package name */
        private final K f37652b;

        public d(K k, Function0<? extends V> function0) {
            this.f37652b = k;
            this.f37651a = function0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f37652b.equals(((d) obj).f37652b);
        }

        public final int hashCode() {
            return this.f37652b.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$e.class */
    public static class e<T> implements kotlin.reflect.jvm.internal.impl.f.j<T> {

        /* renamed from: a  reason: collision with root package name */
        private final f f37653a;

        /* renamed from: b  reason: collision with root package name */
        private final Function0<? extends T> f37654b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Object f37655c;

        public e(f fVar, Function0<? extends T> function0) {
            if (fVar == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
            this.f37655c = k.NOT_COMPUTED;
            this.f37653a = fVar;
            this.f37654b = function0;
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 3) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 2) {
                objArr[1] = "recursionDetected";
            } else if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (!(i == 2 || i == 3)) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 2 || i == 3) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        protected l<T> a(boolean z) {
            l<T> a2 = this.f37653a.a("in a lazy value", (String) null);
            if (a2 == null) {
                a(2);
            }
            return a2;
        }

        public final boolean a() {
            return (this.f37655c == k.NOT_COMPUTED || this.f37655c == k.COMPUTING) ? false : true;
        }

        protected void b(T t) {
        }

        @Override // kotlin.jvm.functions.Function0
        public T invoke() {
            T t;
            Object obj = this.f37655c;
            if (!(obj instanceof k)) {
                return (T) WrappedValues.c(obj);
            }
            this.f37653a.f37643b.a();
            try {
                Object obj2 = this.f37655c;
                if (!(obj2 instanceof k)) {
                    t = (T) WrappedValues.c(obj2);
                } else {
                    if (obj2 == k.COMPUTING) {
                        this.f37655c = k.RECURSION_WAS_DETECTED;
                        l<T> a2 = a(true);
                        if (!a2.f37664a) {
                            t = a2.b();
                        }
                    }
                    if (obj2 == k.RECURSION_WAS_DETECTED) {
                        l<T> a3 = a(false);
                        if (!a3.f37664a) {
                            t = a3.b();
                        }
                    }
                    this.f37655c = k.COMPUTING;
                    t = (T) this.f37654b.invoke();
                    b(t);
                    this.f37655c = t;
                }
                return t;
            } finally {
                this.f37653a.f37643b.c();
            }
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$f  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$f.class */
    static abstract class AbstractC0680f<T> extends e<T> {

        /* renamed from: a  reason: collision with root package name */
        private volatile kotlin.reflect.jvm.internal.impl.f.l<T> f37656a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC0680f(f fVar, Function0<? extends T> function0) {
            super(fVar, function0);
            if (fVar == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
            this.f37656a = null;
        }

        private static /* synthetic */ void a(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "computable";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValueWithPostCompute";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        protected abstract void a(T t);

        @Override // kotlin.reflect.jvm.internal.impl.f.f.e
        protected final void b(T t) {
            this.f37656a = new kotlin.reflect.jvm.internal.impl.f.l<>(t);
            try {
                a((AbstractC0680f<T>) t);
            } finally {
                this.f37656a = null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.f.f.e, kotlin.jvm.functions.Function0
        public T invoke() {
            kotlin.reflect.jvm.internal.impl.f.l<T> lVar = this.f37656a;
            if (lVar == null || !lVar.a()) {
                return (T) super.invoke();
            }
            if (lVar.a()) {
                return lVar.f37668a;
            }
            throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$g.class */
    static class g<T> extends e<T> implements kotlin.reflect.jvm.internal.impl.f.i<T> {

        /* renamed from: c  reason: collision with root package name */
        static final /* synthetic */ boolean f37657c = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(f fVar, Function0<? extends T> function0) {
            super(fVar, function0);
            if (fVar == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 2 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        @Override // kotlin.reflect.jvm.internal.impl.f.f.e, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (f37657c || t != null) {
                if (t == null) {
                    a(2);
                }
                return t;
            }
            throw new AssertionError("compute() returned null");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$h.class */
    static abstract class h<T> extends AbstractC0680f<T> implements kotlin.reflect.jvm.internal.impl.f.i<T> {

        /* renamed from: d  reason: collision with root package name */
        static final /* synthetic */ boolean f37658d = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(f fVar, Function0<? extends T> function0) {
            super(fVar, function0);
            if (fVar == null) {
                a(0);
            }
            if (function0 == null) {
                a(1);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 2 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        @Override // kotlin.reflect.jvm.internal.impl.f.f.AbstractC0680f, kotlin.reflect.jvm.internal.impl.f.f.e, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (f37658d || t != null) {
                if (t == null) {
                    a(2);
                }
                return t;
            }
            throw new AssertionError("compute() returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$i.class */
    public static class i<K, V> implements kotlin.reflect.jvm.internal.impl.f.h<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final f f37659a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentMap<K, Object> f37660b;

        /* renamed from: c  reason: collision with root package name */
        private final Function1<? super K, ? extends V> f37661c;

        public i(f fVar, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            if (fVar == null) {
                a(0);
            }
            if (concurrentMap == null) {
                a(1);
            }
            if (function1 == null) {
                a(2);
            }
            this.f37659a = fVar;
            this.f37660b = concurrentMap;
            this.f37661c = function1;
        }

        private AssertionError a(K k, Object obj) {
            AssertionError assertionError = (AssertionError) f.b(new AssertionError("Race condition detected on input " + k + ". Old value is " + obj + " under " + this.f37659a));
            if (assertionError == null) {
                a(4);
            }
            return assertionError;
        }

        private l<V> a(K k) {
            l<V> a2 = this.f37659a.a("", (String) k);
            if (a2 == null) {
                a(3);
            }
            return a2;
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i == 3 || i == 4) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 3) {
                objArr[1] = "recursionDetected";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
            } else {
                objArr[1] = "raceCondition";
            }
            if (!(i == 3 || i == 4)) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 3 || i == 4) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        protected final f a() {
            return this.f37659a;
        }

        @Override // kotlin.jvm.functions.Function1
        public V invoke(K k) {
            V v;
            Object obj = this.f37660b.get(k);
            if (obj != null && obj != k.COMPUTING) {
                return (V) WrappedValues.b(obj);
            }
            this.f37659a.f37643b.a();
            try {
                Object obj2 = this.f37660b.get(k);
                Object obj3 = obj2;
                if (obj2 == k.COMPUTING) {
                    obj3 = k.RECURSION_WAS_DETECTED;
                    l<V> a2 = a((i<K, V>) k);
                    if (!a2.f37664a) {
                        v = a2.b();
                        return v;
                    }
                }
                if (obj3 == k.RECURSION_WAS_DETECTED) {
                    l<V> a3 = a((i<K, V>) k);
                    if (!a3.f37664a) {
                        v = a3.b();
                        return v;
                    }
                }
                if (obj3 != null) {
                    v = (V) WrappedValues.b(obj3);
                    return v;
                }
                this.f37660b.put(k, k.COMPUTING);
                V v2 = (V) this.f37661c.invoke(k);
                Object put = this.f37660b.put(k, WrappedValues.a(v2));
                if (put == k.COMPUTING) {
                    return v2;
                }
                throw a(k, put);
            } finally {
                this.f37659a.f37643b.c();
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$j.class */
    static final class j<K, V> extends i<K, V> implements kotlin.reflect.jvm.internal.impl.f.g<K, V> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ boolean f37662a = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(f fVar, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            super(fVar, concurrentMap, function1);
            if (fVar == null) {
                a(0);
            }
            if (concurrentMap == null) {
                a(1);
            }
            if (function1 == null) {
                a(2);
            }
        }

        private static /* synthetic */ void a(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "compute";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw (i != 3 ? new IllegalArgumentException(format) : new IllegalStateException(format));
        }

        @Override // kotlin.reflect.jvm.internal.impl.f.f.i, kotlin.jvm.functions.Function1
        public final V invoke(K k) {
            V v = (V) super.invoke(k);
            if (f37662a || v != null) {
                if (v == null) {
                    a(3);
                }
                return v;
            }
            throw new AssertionError("compute() returned null under " + a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$k.class */
    public enum k {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$l.class */
    public static final class l<T> {

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ boolean f37663b = true;

        /* renamed from: a  reason: collision with root package name */
        final boolean f37664a;

        /* renamed from: c  reason: collision with root package name */
        private final T f37665c;

        private l(T t, boolean z) {
            this.f37665c = t;
            this.f37664a = z;
        }

        public static <T> l<T> a() {
            return new l<>(null, true);
        }

        public static <T> l<T> a(T t) {
            return new l<>(t, false);
        }

        public final T b() {
            if (f37663b || !this.f37664a) {
                return this.f37665c;
            }
            throw new AssertionError("A value requested from FALL_THROUGH in ".concat(String.valueOf(this)));
        }

        public final String toString() {
            return this.f37664a ? "FALL_THROUGH" : String.valueOf(this.f37665c);
        }
    }

    static {
        int b2;
        String substringBeforeLast = f.class.getCanonicalName();
        String str = "";
        p.d(substringBeforeLast, "$this$substringBeforeLast");
        p.d(".", "delimiter");
        p.d("", "missingDelimiterValue");
        b2 = kotlin.h.p.b(r0, ".", kotlin.h.p.d((CharSequence) substringBeforeLast), false);
        if (b2 != -1) {
            str = substringBeforeLast.substring(0, b2);
            p.b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        f37642d = str;
        f37640a = new f("NO_LOCKS", c.f37650a, kotlin.reflect.jvm.internal.impl.f.e.f37639a) { // from class: kotlin.reflect.jvm.internal.impl.f.f.1
            @Override // kotlin.reflect.jvm.internal.impl.f.f
            protected final <K, V> l<V> a(String str2, K k2) {
                return l.a();
            }
        };
    }

    public f(String str) {
        this(str, (Runnable) null, (Function1<InterruptedException, v>) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(java.lang.String r7, java.lang.Runnable r8, kotlin.jvm.functions.Function1<java.lang.InterruptedException, kotlin.v> r9) {
        /*
            r6 = this;
            kotlin.reflect.jvm.internal.impl.f.f$c r0 = kotlin.reflect.jvm.internal.impl.f.f.c.f37650a
            r10 = r0
            kotlin.reflect.jvm.internal.impl.f.k$a r0 = kotlin.reflect.jvm.internal.impl.f.k.f37666b
            r11 = r0
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = r8
            r4 = r9
            kotlin.reflect.jvm.internal.impl.f.d r3 = kotlin.reflect.jvm.internal.impl.f.k.a.a(r3, r4)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.f.f.<init>(java.lang.String, java.lang.Runnable, kotlin.jvm.functions.Function1):void");
    }

    private f(String str, c cVar, kotlin.reflect.jvm.internal.impl.f.k kVar) {
        if (str == null) {
            a(4);
        }
        if (cVar == null) {
            a(5);
        }
        if (kVar == null) {
            a(6);
        }
        this.f37643b = kVar;
        this.e = cVar;
        this.f = str;
    }

    static /* synthetic */ c a(f fVar) {
        return fVar.e;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0268  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void a(int r4) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.f.f.a(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends Throwable> T b(T t) {
        if (t == null) {
            a(36);
        }
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = -1;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                break;
            } else if (!stackTrace[i3].getClassName().startsWith(f37642d)) {
                i2 = i3;
                break;
            } else {
                i3++;
            }
        }
        if (f37641c || i2 >= 0) {
            List subList = Arrays.asList(stackTrace).subList(i2, length);
            t.setStackTrace((StackTraceElement[]) subList.toArray(new StackTraceElement[subList.size()]));
            if (t == null) {
                a(37);
            }
            return t;
        }
        throw new AssertionError("This method should only be called on exceptions created in LockBasedStorageManager");
    }

    private static <K> ConcurrentMap<K, Object> c() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <K, V> kotlin.reflect.jvm.internal.impl.f.b<K, V> a() {
        return new b(c());
    }

    protected <K, V> l<V> a(String str, K k2) {
        StringBuilder sb = new StringBuilder("Recursion detected ");
        sb.append(str);
        sb.append(k2 == null ? "" : "on input: ".concat(String.valueOf(k2)));
        sb.append(" under ");
        sb.append(this);
        throw ((AssertionError) b(new AssertionError(sb.toString())));
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <K, V> kotlin.reflect.jvm.internal.impl.f.g<K, V> a(Function1<? super K, ? extends V> function1) {
        return new j(this, c(), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <T> kotlin.reflect.jvm.internal.impl.f.i<T> a(Function0<? extends T> function0) {
        if (function0 == null) {
            a(23);
        }
        return new g(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <T> kotlin.reflect.jvm.internal.impl.f.i<T> a(Function0<? extends T> function0, final T t) {
        if (t == null) {
            a(27);
        }
        return new g<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.f.f.2
            @Override // kotlin.reflect.jvm.internal.impl.f.f.e
            protected final l<T> a(boolean z) {
                return l.a(t);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <T> kotlin.reflect.jvm.internal.impl.f.i<T> a(Function0<? extends T> function0, final Function1<? super Boolean, ? extends T> function1, final Function1<? super T, v> function12) {
        return new h<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.f.f.3
            private static /* synthetic */ void a(int i2) {
                String str = i2 != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                Object[] objArr = new Object[i2 != 2 ? 2 : 3];
                if (i2 != 2) {
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                } else {
                    objArr[0] = "value";
                }
                if (i2 != 2) {
                    objArr[1] = "recursionDetected";
                } else {
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                }
                if (i2 == 2) {
                    objArr[2] = "doPostCompute";
                }
                String format = String.format(str, objArr);
                throw (i2 != 2 ? new IllegalStateException(format) : new IllegalArgumentException(format));
            }

            @Override // kotlin.reflect.jvm.internal.impl.f.f.e
            protected final l<T> a(boolean z) {
                Function1 function13 = function1;
                if (function13 != null) {
                    return l.a(function13.invoke(Boolean.valueOf(z)));
                }
                l<T> a2 = super.a(z);
                if (a2 == 0) {
                    a(0);
                }
                return a2;
            }

            @Override // kotlin.reflect.jvm.internal.impl.f.f.AbstractC0680f
            protected final void a(T t) {
                if (t == 0) {
                    a(2);
                }
                function12.invoke(t);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <K, V> kotlin.reflect.jvm.internal.impl.f.a<K, V> b() {
        return new a(c());
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <K, V> kotlin.reflect.jvm.internal.impl.f.h<K, V> b(Function1<? super K, ? extends V> function1) {
        return new i(this, c(), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <T> kotlin.reflect.jvm.internal.impl.f.j<T> b(Function0<? extends T> function0) {
        return new e(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.n
    public final <T> T c(Function0<? extends T> function0) {
        c cVar;
        this.f37643b.a();
        try {
            return (T) function0.invoke();
        } finally {
            try {
                throw cVar.a(th);
            } finally {
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.f + ")";
    }
}
