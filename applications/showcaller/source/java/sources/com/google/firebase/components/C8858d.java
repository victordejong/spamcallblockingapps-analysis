package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/d.class */
public final class C8858d<T> {

    /* renamed from: a */
    private final Set<Class<? super T>> f38797a;

    /* renamed from: b */
    private final Set<C8881q> f38798b;

    /* renamed from: c */
    private final int f38799c;

    /* renamed from: d */
    private final int f38800d;

    /* renamed from: e */
    private final AbstractC8867h<T> f38801e;

    /* renamed from: f */
    private final Set<Class<?>> f38802f;

    /* renamed from: com.google.firebase.components.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/d$b.class */
    public static class C8860b<T> {

        /* renamed from: a */
        private final Set<Class<? super T>> f38803a;

        /* renamed from: b */
        private final Set<C8881q> f38804b;

        /* renamed from: c */
        private int f38805c;

        /* renamed from: d */
        private int f38806d;

        /* renamed from: e */
        private AbstractC8867h<T> f38807e;

        /* renamed from: f */
        private Set<Class<?>> f38808f;

        @SafeVarargs
        private C8860b(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.f38803a = hashSet;
            this.f38804b = new HashSet();
            this.f38805c = 0;
            this.f38806d = 0;
            this.f38808f = new HashSet();
            C8889y.m2419c(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C8889y.m2419c(cls2, "Null interface");
            }
            Collections.addAll(this.f38803a, clsArr);
        }

        /* renamed from: g */
        public C8860b<T> m2490g() {
            this.f38806d = 1;
            return this;
        }

        /* renamed from: h */
        private C8860b<T> m2489h(int i) {
            C8889y.m2418d(this.f38805c == 0, "Instantiation type has already been set.");
            this.f38805c = i;
            return this;
        }

        /* renamed from: i */
        private void m2488i(Class<?> cls) {
            C8889y.m2421a(!this.f38803a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: b */
        public C8860b<T> m2495b(C8881q c8881q) {
            C8889y.m2419c(c8881q, "Null dependency");
            m2488i(c8881q.m2445b());
            this.f38804b.add(c8881q);
            return this;
        }

        /* renamed from: c */
        public C8860b<T> m2494c() {
            return m2489h(1);
        }

        /* renamed from: d */
        public C8858d<T> m2493d() {
            C8889y.m2418d(this.f38807e != null, "Missing required property: factory.");
            return new C8858d<>(new HashSet(this.f38803a), new HashSet(this.f38804b), this.f38805c, this.f38806d, this.f38807e, this.f38808f);
        }

        /* renamed from: e */
        public C8860b<T> m2492e() {
            return m2489h(2);
        }

        /* renamed from: f */
        public C8860b<T> m2491f(AbstractC8867h<T> abstractC8867h) {
            this.f38807e = (AbstractC8867h) C8889y.m2419c(abstractC8867h, "Null factory");
            return this;
        }
    }

    private C8858d(Set<Class<? super T>> set, Set<C8881q> set2, int i, int i2, AbstractC8867h<T> abstractC8867h, Set<Class<?>> set3) {
        this.f38797a = Collections.unmodifiableSet(set);
        this.f38798b = Collections.unmodifiableSet(set2);
        this.f38799c = i;
        this.f38800d = i2;
        this.f38801e = abstractC8867h;
        this.f38802f = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C8860b<T> m2510a(Class<T> cls) {
        return new C8860b<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: b */
    public static <T> C8860b<T> m2509b(Class<T> cls, Class<? super T>... clsArr) {
        return new C8860b<>(cls, clsArr);
    }

    /* renamed from: g */
    public static <T> C8858d<T> m2504g(T t, Class<T> cls) {
        return m2503h(cls).m2491f(C8857c.m2511b(t)).m2493d();
    }

    /* renamed from: h */
    public static <T> C8860b<T> m2503h(Class<T> cls) {
        return m2510a(cls).m2490g();
    }

    /* renamed from: l */
    public static /* synthetic */ Object m2499l(Object obj, AbstractC8861e abstractC8861e) {
        return obj;
    }

    /* renamed from: m */
    public static /* synthetic */ Object m2498m(Object obj, AbstractC8861e abstractC8861e) {
        return obj;
    }

    @SafeVarargs
    /* renamed from: n */
    public static <T> C8858d<T> m2497n(T t, Class<T> cls, Class<? super T>... clsArr) {
        return m2509b(cls, clsArr).m2491f(C8856b.m2512b(t)).m2493d();
    }

    /* renamed from: c */
    public Set<C8881q> m2508c() {
        return this.f38798b;
    }

    /* renamed from: d */
    public AbstractC8867h<T> m2507d() {
        return this.f38801e;
    }

    /* renamed from: e */
    public Set<Class<? super T>> m2506e() {
        return this.f38797a;
    }

    /* renamed from: f */
    public Set<Class<?>> m2505f() {
        return this.f38802f;
    }

    /* renamed from: i */
    public boolean m2502i() {
        boolean z = true;
        if (this.f38799c != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m2501j() {
        return this.f38799c == 2;
    }

    /* renamed from: k */
    public boolean m2500k() {
        return this.f38800d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f38797a.toArray()) + ">{" + this.f38799c + ", type=" + this.f38800d + ", deps=" + Arrays.toString(this.f38798b.toArray()) + "}";
    }
}
