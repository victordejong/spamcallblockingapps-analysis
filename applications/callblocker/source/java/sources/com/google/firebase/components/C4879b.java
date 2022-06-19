package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/b.class */
public final class C4879b<T> {

    /* renamed from: a */
    private final Set<Class<? super T>> f20966a;

    /* renamed from: b */
    private final Set<C4899n> f20967b;

    /* renamed from: c */
    private final int f20968c;

    /* renamed from: d */
    private final int f20969d;

    /* renamed from: e */
    private final AbstractC4889g<T> f20970e;

    /* renamed from: f */
    private final Set<Class<?>> f20971f;

    /* renamed from: com.google.firebase.components.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/b$a.class */
    public static class C4881a<T> {

        /* renamed from: a */
        private final Set<Class<? super T>> f20972a;

        /* renamed from: b */
        private final Set<C4899n> f20973b;

        /* renamed from: c */
        private int f20974c;

        /* renamed from: d */
        private int f20975d;

        /* renamed from: e */
        private AbstractC4889g<T> f20976e;

        /* renamed from: f */
        private Set<Class<?>> f20977f;

        @SafeVarargs
        private C4881a(Class<T> cls, Class<? super T>... clsArr) {
            this.f20972a = new HashSet();
            this.f20973b = new HashSet();
            this.f20974c = 0;
            this.f20975d = 0;
            this.f20977f = new HashSet();
            C4903r.m2057a(cls, "Null interface");
            this.f20972a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C4903r.m2057a(cls2, "Null interface");
            }
            Collections.addAll(this.f20972a, clsArr);
        }

        /* renamed from: a */
        private C4881a<T> m2109a(int i) {
            C4903r.m2055b(this.f20974c == 0, "Instantiation type has already been set.");
            this.f20974c = i;
            return this;
        }

        /* renamed from: a */
        private void m2105a(Class<?> cls) {
            C4903r.m2056a(!this.f20972a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: d */
        public C4881a<T> m2102d() {
            this.f20975d = 1;
            return this;
        }

        /* renamed from: a */
        public C4881a<T> m2110a() {
            return m2109a(1);
        }

        /* renamed from: a */
        public C4881a<T> m2107a(AbstractC4889g<T> abstractC4889g) {
            this.f20976e = (AbstractC4889g) C4903r.m2057a(abstractC4889g, "Null factory");
            return this;
        }

        /* renamed from: a */
        public C4881a<T> m2106a(C4899n c4899n) {
            C4903r.m2057a(c4899n, "Null dependency");
            m2105a(c4899n.m2073a());
            this.f20973b.add(c4899n);
            return this;
        }

        /* renamed from: b */
        public C4881a<T> m2104b() {
            return m2109a(2);
        }

        /* renamed from: c */
        public C4879b<T> m2103c() {
            C4903r.m2055b(this.f20976e != null, "Missing required property: factory.");
            return new C4879b<>(new HashSet(this.f20972a), new HashSet(this.f20973b), this.f20974c, this.f20975d, this.f20976e, this.f20977f);
        }
    }

    private C4879b(Set<Class<? super T>> set, Set<C4899n> set2, int i, int i2, AbstractC4889g<T> abstractC4889g, Set<Class<?>> set3) {
        this.f20966a = Collections.unmodifiableSet(set);
        this.f20967b = Collections.unmodifiableSet(set2);
        this.f20968c = i;
        this.f20969d = i2;
        this.f20970e = abstractC4889g;
        this.f20971f = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C4881a<T> m2123a(Class<T> cls) {
        return new C4881a<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C4881a<T> m2122a(Class<T> cls, Class<? super T>... clsArr) {
        return new C4881a<>(cls, clsArr);
    }

    /* renamed from: a */
    public static <T> C4879b<T> m2120a(T t, Class<T> cls) {
        return m2117b(cls).m2107a(C4883d.m2100a(t)).m2103c();
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C4879b<T> m2119a(T t, Class<T> cls, Class<? super T>... clsArr) {
        return m2122a(cls, clsArr).m2107a(C4882c.m2101a(t)).m2103c();
    }

    /* renamed from: a */
    public static /* synthetic */ Object m2121a(Object obj, AbstractC4884e abstractC4884e) {
        return obj;
    }

    /* renamed from: b */
    public static <T> C4881a<T> m2117b(Class<T> cls) {
        return m2123a(cls).m2102d();
    }

    /* renamed from: b */
    public static /* synthetic */ Object m2116b(Object obj, AbstractC4884e abstractC4884e) {
        return obj;
    }

    /* renamed from: a */
    public Set<Class<? super T>> m2124a() {
        return this.f20966a;
    }

    /* renamed from: b */
    public Set<C4899n> m2118b() {
        return this.f20967b;
    }

    /* renamed from: c */
    public AbstractC4889g<T> m2115c() {
        return this.f20970e;
    }

    /* renamed from: d */
    public Set<Class<?>> m2114d() {
        return this.f20971f;
    }

    /* renamed from: e */
    public boolean m2113e() {
        boolean z = true;
        if (this.f20968c != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m2112f() {
        return this.f20968c == 2;
    }

    /* renamed from: g */
    public boolean m2111g() {
        return this.f20969d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f20966a.toArray()) + ">{" + this.f20968c + ", type=" + this.f20969d + ", deps=" + Arrays.toString(this.f20967b.toArray()) + "}";
    }
}
