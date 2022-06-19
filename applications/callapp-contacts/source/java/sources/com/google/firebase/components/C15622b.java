package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/b.class */
public final class C15622b<T> {

    /* renamed from: a */
    final Set<Class<? super T>> f56013a;

    /* renamed from: b */
    final Set<C15648r> f56014b;

    /* renamed from: c */
    final int f56015c;

    /* renamed from: d */
    final AbstractC15633h<T> f56016d;

    /* renamed from: e */
    final Set<Class<?>> f56017e;

    /* renamed from: f */
    private final int f56018f;

    /* renamed from: com.google.firebase.components.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/b$a.class */
    public static final class C15624a<T> {

        /* renamed from: a */
        int f56019a;

        /* renamed from: b */
        private final Set<Class<? super T>> f56020b;

        /* renamed from: c */
        private final Set<C15648r> f56021c;

        /* renamed from: d */
        private int f56022d;

        /* renamed from: e */
        private AbstractC15633h<T> f56023e;

        /* renamed from: f */
        private Set<Class<?>> f56024f;

        @SafeVarargs
        private C15624a(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.f56020b = hashSet;
            this.f56021c = new HashSet();
            this.f56022d = 0;
            this.f56019a = 0;
            this.f56024f = new HashSet();
            C15656z.m8491a(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C15656z.m8491a(cls2, "Null interface");
            }
            Collections.addAll(this.f56020b, clsArr);
        }

        /* renamed from: a */
        private void m8543a(Class<?> cls) {
            C15656z.m8490a(!this.f56020b.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: a */
        public final C15624a<T> m8546a(int i) {
            C15656z.m8489b(this.f56022d == 0, "Instantiation type has already been set.");
            this.f56022d = i;
            return this;
        }

        /* renamed from: a */
        public final C15624a<T> m8545a(AbstractC15633h<T> abstractC15633h) {
            this.f56023e = (AbstractC15633h) C15656z.m8491a(abstractC15633h, "Null factory");
            return this;
        }

        /* renamed from: a */
        public final C15624a<T> m8544a(C15648r c15648r) {
            C15656z.m8491a(c15648r, "Null dependency");
            m8543a(c15648r.f56055a);
            this.f56021c.add(c15648r);
            return this;
        }

        /* renamed from: a */
        public final C15622b<T> m8547a() {
            C15656z.m8489b(this.f56023e != null, "Missing required property: factory.");
            return new C15622b<>(new HashSet(this.f56020b), new HashSet(this.f56021c), this.f56022d, this.f56019a, this.f56023e, this.f56024f);
        }
    }

    private C15622b(Set<Class<? super T>> set, Set<C15648r> set2, int i, int i2, AbstractC15633h<T> abstractC15633h, Set<Class<?>> set3) {
        this.f56013a = Collections.unmodifiableSet(set);
        this.f56014b = Collections.unmodifiableSet(set2);
        this.f56015c = i;
        this.f56018f = i2;
        this.f56016d = abstractC15633h;
        this.f56017e = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C15624a<T> m8552a(Class<T> cls) {
        return new C15624a<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: a */
    private static <T> C15624a<T> m8551a(Class<T> cls, Class<? super T>... clsArr) {
        return new C15624a<>(cls, clsArr);
    }

    /* renamed from: a */
    public static <T> C15622b<T> m8550a(T t, Class<T> cls) {
        return m8548b(cls).m8545a(new AbstractC15633h(t) { // from class: com.google.firebase.components.d

            /* renamed from: a */
            private final Object f56026a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f56026a = t;
            }

            @Override // com.google.firebase.components.AbstractC15633h
            public final Object create(AbstractC15627e abstractC15627e) {
                return this.f56026a;
            }
        }).m8547a();
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C15622b<T> m8549a(T t, Class<T> cls, Class<? super T>... clsArr) {
        return m8551a(cls, clsArr).m8545a(C15625c.m8542a(t)).m8547a();
    }

    /* renamed from: b */
    public static <T> C15624a<T> m8548b(Class<T> cls) {
        C15624a<T> m8552a = m8552a(cls);
        m8552a.f56019a = 1;
        return m8552a;
    }

    /* renamed from: a */
    public final boolean m8553a() {
        return this.f56018f == 0;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f56013a.toArray()) + ">{" + this.f56015c + ", type=" + this.f56018f + ", deps=" + Arrays.toString(this.f56014b.toArray()) + "}";
    }
}
