package kotlin.reflect.jvm.internal.impl.p554f;

import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.C20128v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues;
/* renamed from: kotlin.reflect.jvm.internal.impl.f.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f.class */
public class C19276f implements AbstractC19302n {

    /* renamed from: a */
    public static final AbstractC19302n f65120a;

    /* renamed from: c */
    static final /* synthetic */ boolean f65121c = true;

    /* renamed from: d */
    private static final String f65122d;

    /* renamed from: b */
    protected final AbstractC19298k f65123b;

    /* renamed from: e */
    private final AbstractC19283c f65124e;

    /* renamed from: f */
    private final String f65125f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$a.class */
    static final class C19280a<K, V> extends C19281b<K, V> implements AbstractC19271a<K, V> {

        /* renamed from: a */
        static final /* synthetic */ boolean f65131a = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C19280a(C19276f c19276f, ConcurrentMap<C19285d<K, V>, Object> concurrentMap) {
            super(concurrentMap);
            if (c19276f == null) {
                m2341a(0);
            }
            if (concurrentMap == null) {
                m2341a(1);
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m2341a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19281b, kotlin.reflect.jvm.internal.impl.p554f.AbstractC19271a
        /* renamed from: a */
        public final V mo2339a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                m2341a(2);
            }
            V v = (V) super.mo2339a((C19280a<K, V>) k, (Function0<? extends Object>) function0);
            if (f65131a || v != null) {
                if (v == null) {
                    m2341a(3);
                }
                return v;
            }
            throw new AssertionError("computeIfAbsent() returned null under " + m2329a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$b.class */
    public static class C19281b<K, V> extends C19290i<C19285d<K, V>, V> implements AbstractC19272b<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C19281b(C19276f c19276f, ConcurrentMap<C19285d<K, V>, Object> concurrentMap) {
            super(c19276f, concurrentMap, new Function1<C19285d<K, V>, V>() { // from class: kotlin.reflect.jvm.internal.impl.f.f.b.1
                @Override // kotlin.jvm.functions.Function1
                public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return ((C19285d) obj).f65133a.invoke();
                }
            });
            if (c19276f == null) {
                m2340a(0);
            }
            if (concurrentMap == null) {
                m2340a(1);
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m2340a(int i) {
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

        /* renamed from: a */
        public V mo2339a(K k, Function0<? extends V> function0) {
            if (function0 == null) {
                m2340a(2);
            }
            return invoke(new C19285d(k, function0));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$c.class */
    public interface AbstractC19283c {

        /* renamed from: a */
        public static final AbstractC19283c f65132a = new AbstractC19283c() { // from class: kotlin.reflect.jvm.internal.impl.f.f.c.1
            @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.AbstractC19283c
            /* renamed from: a */
            public final RuntimeException mo2338a(Throwable e) {
                C18524p.m3840d(e, "e");
                throw e;
            }
        };

        /* renamed from: a */
        RuntimeException mo2338a(Throwable th);
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$d.class */
    public static final class C19285d<K, V> {

        /* renamed from: a */
        final Function0<? extends V> f65133a;

        /* renamed from: b */
        private final K f65134b;

        public C19285d(K k, Function0<? extends V> function0) {
            this.f65134b = k;
            this.f65133a = function0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.f65134b.equals(((C19285d) obj).f65134b);
        }

        public final int hashCode() {
            return this.f65134b.hashCode();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$e.class */
    public static class C19286e<T> implements AbstractC19297j<T> {

        /* renamed from: a */
        private final C19276f f65135a;

        /* renamed from: b */
        private final Function0<? extends T> f65136b;

        /* renamed from: c */
        private volatile Object f65137c;

        public C19286e(C19276f c19276f, Function0<? extends T> function0) {
            if (c19276f == null) {
                m2336a(0);
            }
            if (function0 == null) {
                m2336a(1);
            }
            this.f65137c = EnumC19292k.NOT_COMPUTED;
            this.f65135a = c19276f;
            this.f65136b = function0;
        }

        /* renamed from: a */
        private static /* synthetic */ void m2336a(int i) {
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
            if (i != 2 && i != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 2 || i == 3) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        /* renamed from: a */
        protected C19293l<T> mo2335a(boolean z) {
            C19293l<T> mo2343a = this.f65135a.mo2343a("in a lazy value", (String) null);
            if (mo2343a == null) {
                m2336a(2);
            }
            return mo2343a;
        }

        /* renamed from: a */
        public final boolean m2337a() {
            return (this.f65137c == EnumC19292k.NOT_COMPUTED || this.f65137c == EnumC19292k.COMPUTING) ? false : true;
        }

        /* renamed from: b */
        protected void mo2332b(T t) {
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function0
        public T invoke() {
            T invoke;
            Object obj = this.f65137c;
            if (!(obj instanceof EnumC19292k)) {
                return (T) WrappedValues.m1214c(obj);
            }
            this.f65135a.f65123b.mo2320a();
            try {
                Object obj2 = this.f65137c;
                if (!(obj2 instanceof EnumC19292k)) {
                    invoke = WrappedValues.m1214c(obj2);
                } else {
                    if (obj2 == EnumC19292k.COMPUTING) {
                        this.f65137c = EnumC19292k.RECURSION_WAS_DETECTED;
                        C19293l<T> mo2335a = mo2335a(true);
                        if (!mo2335a.f65146a) {
                            invoke = mo2335a.m2322b();
                        }
                    }
                    if (obj2 == EnumC19292k.RECURSION_WAS_DETECTED) {
                        C19293l<T> mo2335a2 = mo2335a(false);
                        if (!mo2335a2.f65146a) {
                            invoke = mo2335a2.m2322b();
                        }
                    }
                    this.f65137c = EnumC19292k.COMPUTING;
                    invoke = this.f65136b.invoke();
                    mo2332b(invoke);
                    this.f65137c = invoke;
                }
                this.f65135a.f65123b.mo2319c();
                return invoke;
            } catch (Throwable th) {
                this.f65135a.f65123b.mo2319c();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$f.class */
    public static abstract class AbstractC19287f<T> extends C19286e<T> {

        /* renamed from: a */
        private volatile C19300l<T> f65138a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC19287f(C19276f c19276f, Function0<? extends T> function0) {
            super(c19276f, function0);
            if (c19276f == null) {
                m2334a(0);
            }
            if (function0 == null) {
                m2334a(1);
            }
            this.f65138a = null;
        }

        /* renamed from: a */
        private static /* synthetic */ void m2334a(int i) {
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

        /* renamed from: a */
        protected abstract void mo2333a(T t);

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e
        /* renamed from: b */
        protected final void mo2332b(T t) {
            this.f65138a = new C19300l<>(t);
            try {
                mo2333a((AbstractC19287f<T>) t);
            } finally {
                this.f65138a = null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e, kotlin.jvm.functions.Function0
        public T invoke() {
            C19300l<T> c19300l = this.f65138a;
            if (c19300l == null || !c19300l.m2317a()) {
                return (T) super.invoke();
            }
            if (!c19300l.m2317a()) {
                throw new IllegalStateException("No value in this thread (hasValue should be checked before)");
            }
            return c19300l.f65150a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$g.class */
    public static class C19288g<T> extends C19286e<T> implements AbstractC19296i<T> {

        /* renamed from: c */
        static final /* synthetic */ boolean f65139c = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19288g(C19276f c19276f, Function0<? extends T> function0) {
            super(c19276f, function0);
            if (c19276f == null) {
                m2331a(0);
            }
            if (function0 == null) {
                m2331a(1);
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m2331a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (f65139c || t != null) {
                if (t == null) {
                    m2331a(2);
                }
                return t;
            }
            throw new AssertionError("compute() returned null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$h.class */
    public static abstract class AbstractC19289h<T> extends AbstractC19287f<T> implements AbstractC19296i<T> {

        /* renamed from: d */
        static final /* synthetic */ boolean f65140d = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractC19289h(C19276f c19276f, Function0<? extends T> function0) {
            super(c19276f, function0);
            if (c19276f == null) {
                m2330a(0);
            }
            if (function0 == null) {
                m2330a(1);
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m2330a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.AbstractC19287f, kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e, kotlin.jvm.functions.Function0
        public T invoke() {
            T t = (T) super.invoke();
            if (f65140d || t != null) {
                if (t == null) {
                    m2330a(2);
                }
                return t;
            }
            throw new AssertionError("compute() returned null");
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$i */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$i.class */
    public static class C19290i<K, V> implements AbstractC19295h<K, V> {

        /* renamed from: a */
        private final C19276f f65141a;

        /* renamed from: b */
        private final ConcurrentMap<K, Object> f65142b;

        /* renamed from: c */
        private final Function1<? super K, ? extends V> f65143c;

        public C19290i(C19276f c19276f, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            if (c19276f == null) {
                m2328a(0);
            }
            if (concurrentMap == null) {
                m2328a(1);
            }
            if (function1 == null) {
                m2328a(2);
            }
            this.f65141a = c19276f;
            this.f65142b = concurrentMap;
            this.f65143c = function1;
        }

        /* renamed from: a */
        private AssertionError m2326a(K k, Object obj) {
            AssertionError assertionError = (AssertionError) C19276f.m2345b(new AssertionError("Race condition detected on input " + k + ". Old value is " + obj + " under " + this.f65141a));
            if (assertionError == null) {
                m2328a(4);
            }
            return assertionError;
        }

        /* renamed from: a */
        private C19293l<V> m2327a(K k) {
            C19293l<V> mo2343a = this.f65141a.mo2343a("", (String) k);
            if (mo2343a == null) {
                m2328a(3);
            }
            return mo2343a;
        }

        /* renamed from: a */
        private static /* synthetic */ void m2328a(int i) {
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
            if (i != 3 && i != 4) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            throw ((i == 3 || i == 4) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        /* renamed from: a */
        protected final C19276f m2329a() {
            return this.f65141a;
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public V invoke(K k) {
            V m1215b;
            Object obj = this.f65142b.get(k);
            if (obj == null || obj == EnumC19292k.COMPUTING) {
                this.f65141a.f65123b.mo2320a();
                try {
                    Object obj2 = this.f65142b.get(k);
                    EnumC19292k enumC19292k = obj2;
                    if (obj2 == EnumC19292k.COMPUTING) {
                        enumC19292k = EnumC19292k.RECURSION_WAS_DETECTED;
                        C19293l<V> m2327a = m2327a((C19290i<K, V>) k);
                        if (!m2327a.f65146a) {
                            m1215b = m2327a.m2322b();
                            this.f65141a.f65123b.mo2319c();
                            return m1215b;
                        }
                    }
                    if (enumC19292k == EnumC19292k.RECURSION_WAS_DETECTED) {
                        C19293l<V> m2327a2 = m2327a((C19290i<K, V>) k);
                        if (!m2327a2.f65146a) {
                            m1215b = m2327a2.m2322b();
                            this.f65141a.f65123b.mo2319c();
                            return m1215b;
                        }
                    }
                    if (enumC19292k != null) {
                        m1215b = WrappedValues.m1215b(enumC19292k);
                        this.f65141a.f65123b.mo2319c();
                        return m1215b;
                    }
                    this.f65142b.put(k, EnumC19292k.COMPUTING);
                    V invoke = this.f65143c.invoke(k);
                    Object put = this.f65142b.put(k, WrappedValues.m1217a(invoke));
                    if (put != EnumC19292k.COMPUTING) {
                        throw m2326a(k, put);
                    }
                    this.f65141a.f65123b.mo2319c();
                    return invoke;
                } catch (Throwable th) {
                    this.f65141a.f65123b.mo2319c();
                    throw th;
                }
            }
            return (V) WrappedValues.m1215b(obj);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$j */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$j.class */
    static final class C19291j<K, V> extends C19290i<K, V> implements AbstractC19294g<K, V> {

        /* renamed from: a */
        static final /* synthetic */ boolean f65144a = true;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19291j(C19276f c19276f, ConcurrentMap<K, Object> concurrentMap, Function1<? super K, ? extends V> function1) {
            super(c19276f, concurrentMap, function1);
            if (c19276f == null) {
                m2325a(0);
            }
            if (concurrentMap == null) {
                m2325a(1);
            }
            if (function1 == null) {
                m2325a(2);
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m2325a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19290i, kotlin.jvm.functions.Function1
        public final V invoke(K k) {
            V v = (V) super.invoke(k);
            if (f65144a || v != null) {
                if (v == null) {
                    m2325a(3);
                }
                return v;
            }
            throw new AssertionError("compute() returned null under " + m2329a());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$k */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$k.class */
    public enum EnumC19292k {
        NOT_COMPUTED,
        COMPUTING,
        RECURSION_WAS_DETECTED
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.f.f$l */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/f$l.class */
    public static final class C19293l<T> {

        /* renamed from: b */
        static final /* synthetic */ boolean f65145b = true;

        /* renamed from: a */
        final boolean f65146a;

        /* renamed from: c */
        private final T f65147c;

        private C19293l(T t, boolean z) {
            this.f65147c = t;
            this.f65146a = z;
        }

        /* renamed from: a */
        public static <T> C19293l<T> m2324a() {
            return new C19293l<>(null, true);
        }

        /* renamed from: a */
        public static <T> C19293l<T> m2323a(T t) {
            return new C19293l<>(t, false);
        }

        /* renamed from: b */
        public final T m2322b() {
            if (f65145b || !this.f65146a) {
                return this.f65147c;
            }
            throw new AssertionError("A value requested from FALL_THROUGH in ".concat(String.valueOf(this)));
        }

        public final String toString() {
            return this.f65146a ? "FALL_THROUGH" : String.valueOf(this.f65147c);
        }
    }

    static {
        int b;
        String substringBeforeLast = C19276f.class.getCanonicalName();
        String str = "";
        C18524p.m3840d(substringBeforeLast, "$this$substringBeforeLast");
        C18524p.m3840d(".", "delimiter");
        C18524p.m3840d("", "missingDelimiterValue");
        b = C18425p.m3926b(r0, ".", C18425p.m3915d((CharSequence) substringBeforeLast), false);
        if (b != -1) {
            str = substringBeforeLast.substring(0, b);
            C18524p.m3843b(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        f65122d = str;
        f65120a = new C19276f("NO_LOCKS", AbstractC19283c.f65132a, C19275e.f65119a) { // from class: kotlin.reflect.jvm.internal.impl.f.f.1
            @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f
            /* renamed from: a */
            protected final <K, V> C19293l<V> mo2343a(String str2, K k) {
                return C19293l.m2324a();
            }
        };
    }

    public C19276f(String str) {
        this(str, (Runnable) null, (Function1<InterruptedException, C20128v>) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C19276f(java.lang.String r7, java.lang.Runnable r8, kotlin.jvm.functions.Function1<java.lang.InterruptedException, kotlin.C20128v> r9) {
        /*
            r6 = this;
            kotlin.reflect.jvm.internal.impl.f.f$c r0 = kotlin.reflect.jvm.internal.impl.p554f.C19276f.AbstractC19283c.f65132a
            r10 = r0
            kotlin.reflect.jvm.internal.impl.f.k$a r0 = kotlin.reflect.jvm.internal.impl.p554f.AbstractC19298k.f65148b
            r11 = r0
            r0 = r6
            r1 = r7
            r2 = r10
            r3 = r8
            r4 = r9
            kotlin.reflect.jvm.internal.impl.f.d r3 = kotlin.reflect.jvm.internal.impl.p554f.AbstractC19298k.C19299a.m2318a(r3, r4)
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p554f.C19276f.<init>(java.lang.String, java.lang.Runnable, kotlin.jvm.functions.Function1):void");
    }

    private C19276f(String str, AbstractC19283c abstractC19283c, AbstractC19298k abstractC19298k) {
        if (str == null) {
            m2348a(4);
        }
        if (abstractC19283c == null) {
            m2348a(5);
        }
        if (abstractC19298k == null) {
            m2348a(6);
        }
        this.f65123b = abstractC19298k;
        this.f65124e = abstractC19283c;
        this.f65125f = str;
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC19283c m2346a(C19276f c19276f) {
        return c19276f.f65124e;
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void m2348a(int r4) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p554f.C19276f.m2348a(int):void");
    }

    /* renamed from: b */
    public static <T extends Throwable> T m2345b(T t) {
        int i;
        if (t == null) {
            m2348a(36);
        }
        StackTraceElement[] stackTrace = t.getStackTrace();
        int length = stackTrace.length;
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= length) {
                break;
            } else if (!stackTrace[i2].getClassName().startsWith(f65122d)) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        if (f65121c || i >= 0) {
            List subList = Arrays.asList(stackTrace).subList(i, length);
            t.setStackTrace((StackTraceElement[]) subList.toArray(new StackTraceElement[subList.size()]));
            if (t == null) {
                m2348a(37);
            }
            return t;
        }
        throw new AssertionError("This method should only be called on exceptions created in LockBasedStorageManager");
    }

    /* renamed from: c */
    private static <K> ConcurrentMap<K, Object> m2344c() {
        return new ConcurrentHashMap(3, 1.0f, 2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: a */
    public final <K, V> AbstractC19272b<K, V> mo2314a() {
        return new C19281b(m2344c());
    }

    /* renamed from: a */
    protected <K, V> C19293l<V> mo2343a(String str, K k) {
        StringBuilder sb = new StringBuilder("Recursion detected ");
        sb.append(str);
        sb.append(k == null ? "" : "on input: ".concat(String.valueOf(k)));
        sb.append(" under ");
        sb.append(this);
        throw ((AssertionError) m2345b(new AssertionError(sb.toString())));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: a */
    public final <K, V> AbstractC19294g<K, V> mo2310a(Function1<? super K, ? extends V> function1) {
        return new C19291j(this, m2344c(), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: a */
    public final <T> AbstractC19296i<T> mo2313a(Function0<? extends T> function0) {
        if (function0 == null) {
            m2348a(23);
        }
        return new C19288g(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: a */
    public final <T> AbstractC19296i<T> mo2312a(Function0<? extends T> function0, final T t) {
        if (t == null) {
            m2348a(27);
        }
        return new C19288g<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.f.f.2
            @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e
            /* renamed from: a */
            protected final C19293l<T> mo2335a(boolean z) {
                return C19293l.m2323a(t);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: a */
    public final <T> AbstractC19296i<T> mo2311a(Function0<? extends T> function0, final Function1<? super Boolean, ? extends T> function1, final Function1<? super T, C20128v> function12) {
        return new AbstractC19289h<T>(this, function0) { // from class: kotlin.reflect.jvm.internal.impl.f.f.3
            /* renamed from: a */
            private static /* synthetic */ void m2342a(int i) {
                String str = i != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                Object[] objArr = new Object[i != 2 ? 2 : 3];
                if (i != 2) {
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                } else {
                    objArr[0] = "value";
                }
                if (i != 2) {
                    objArr[1] = "recursionDetected";
                } else {
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
                }
                if (i == 2) {
                    objArr[2] = "doPostCompute";
                }
                String format = String.format(str, objArr);
                throw (i != 2 ? new IllegalStateException(format) : new IllegalArgumentException(format));
            }

            @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.C19286e
            /* renamed from: a */
            protected final C19293l<T> mo2335a(boolean z) {
                Function1 function13 = function1;
                if (function13 == null) {
                    C19293l<T> a = super.mo2335a(z);
                    if (a == 0) {
                        m2342a(0);
                    }
                    return a;
                }
                return C19293l.m2323a(function13.invoke(Boolean.valueOf(z)));
            }

            @Override // kotlin.reflect.jvm.internal.impl.p554f.C19276f.AbstractC19287f
            /* renamed from: a */
            protected final void mo2333a(T t) {
                if (t == 0) {
                    m2342a(2);
                }
                function12.invoke(t);
            }
        };
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: b */
    public final <K, V> AbstractC19271a<K, V> mo2309b() {
        return new C19280a(m2344c());
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: b */
    public final <K, V> AbstractC19295h<K, V> mo2307b(Function1<? super K, ? extends V> function1) {
        return new C19290i(this, m2344c(), function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: b */
    public final <T> AbstractC19297j<T> mo2308b(Function0<? extends T> function0) {
        return new C19286e(this, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n
    /* renamed from: c */
    public final <T> T mo2306c(Function0<? extends T> function0) {
        AbstractC19283c abstractC19283c;
        this.f65123b.mo2320a();
        try {
            return function0.invoke();
        } finally {
            try {
                throw abstractC19283c.mo2338a(th);
            } finally {
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + " (" + this.f65125f + ")";
    }
}
