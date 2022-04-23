package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/b.class */
public final class b<T> {

    /* renamed from: a  reason: collision with root package name */
    final Set<Class<? super T>> f32240a;

    /* renamed from: b  reason: collision with root package name */
    final Set<r> f32241b;

    /* renamed from: c  reason: collision with root package name */
    final int f32242c;

    /* renamed from: d  reason: collision with root package name */
    final h<T> f32243d;
    final Set<Class<?>> e;
    private final int f;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/b$a.class */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        int f32244a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<Class<? super T>> f32245b;

        /* renamed from: c  reason: collision with root package name */
        private final Set<r> f32246c;

        /* renamed from: d  reason: collision with root package name */
        private int f32247d;
        private h<T> e;
        private Set<Class<?>> f;

        @SafeVarargs
        private a(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.f32245b = hashSet;
            this.f32246c = new HashSet();
            this.f32247d = 0;
            this.f32244a = 0;
            this.f = new HashSet();
            z.a(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                z.a(cls2, "Null interface");
            }
            Collections.addAll(this.f32245b, clsArr);
        }

        private void a(Class<?> cls) {
            z.a(!this.f32245b.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public final a<T> a(int i) {
            z.b(this.f32247d == 0, "Instantiation type has already been set.");
            this.f32247d = i;
            return this;
        }

        public final a<T> a(h<T> hVar) {
            this.e = (h) z.a(hVar, "Null factory");
            return this;
        }

        public final a<T> a(r rVar) {
            z.a(rVar, "Null dependency");
            a(rVar.f32275a);
            this.f32246c.add(rVar);
            return this;
        }

        public final b<T> a() {
            z.b(this.e != null, "Missing required property: factory.");
            return new b<>(new HashSet(this.f32245b), new HashSet(this.f32246c), this.f32247d, this.f32244a, this.e, this.f);
        }
    }

    private b(Set<Class<? super T>> set, Set<r> set2, int i, int i2, h<T> hVar, Set<Class<?>> set3) {
        this.f32240a = Collections.unmodifiableSet(set);
        this.f32241b = Collections.unmodifiableSet(set2);
        this.f32242c = i;
        this.f = i2;
        this.f32243d = hVar;
        this.e = Collections.unmodifiableSet(set3);
    }

    public static <T> a<T> a(Class<T> cls) {
        return new a<>(cls, new Class[0]);
    }

    @SafeVarargs
    private static <T> a<T> a(Class<T> cls, Class<? super T>... clsArr) {
        return new a<>(cls, clsArr);
    }

    public static <T> b<T> a(final T t, Class<T> cls) {
        return b(cls).a(new h(t) { // from class: com.google.firebase.components.d

            /* renamed from: a  reason: collision with root package name */
            private final Object f32249a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32249a = t;
            }

            @Override // com.google.firebase.components.h
            public final Object create(e eVar) {
                return this.f32249a;
            }
        }).a();
    }

    @SafeVarargs
    public static <T> b<T> a(T t, Class<T> cls, Class<? super T>... clsArr) {
        return a(cls, clsArr).a(c.a(t)).a();
    }

    public static <T> a<T> b(Class<T> cls) {
        a<T> a2 = a(cls);
        a2.f32244a = 1;
        return a2;
    }

    public final boolean a() {
        return this.f == 0;
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f32240a.toArray()) + ">{" + this.f32242c + ", type=" + this.f + ", deps=" + Arrays.toString(this.f32241b.toArray()) + "}";
    }
}
