package p305z4;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
/* renamed from: z4.c */
/* loaded from: classes-dex2jar.jar:z4/c.class */
public final class C5077c<T> {

    /* renamed from: a */
    public final Set<Class<? super T>> f15402a;

    /* renamed from: b */
    public final Set<C5093m> f15403b;

    /* renamed from: c */
    public final int f15404c;

    /* renamed from: d */
    public final int f15405d;

    /* renamed from: e */
    public final AbstractC5082f<T> f15406e;

    /* renamed from: f */
    public final Set<Class<?>> f15407f;

    /* renamed from: z4.c$b */
    /* loaded from: classes-dex2jar.jar:z4/c$b.class */
    public static class C5079b<T> {

        /* renamed from: a */
        public final Set<Class<? super T>> f15408a;

        /* renamed from: e */
        public AbstractC5082f<T> f15412e;

        /* renamed from: b */
        public final Set<C5093m> f15409b = new HashSet();

        /* renamed from: c */
        public int f15410c = 0;

        /* renamed from: d */
        public int f15411d = 0;

        /* renamed from: f */
        public Set<Class<?>> f15413f = new HashSet();

        public C5079b(Class cls, Class[] clsArr, C5078a c5078a) {
            HashSet hashSet = new HashSet();
            this.f15408a = hashSet;
            Objects.requireNonNull(cls, "Null interface");
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                Objects.requireNonNull(cls2, "Null interface");
            }
            Collections.addAll(this.f15408a, clsArr);
        }

        /* renamed from: a */
        public C5079b<T> m53a(C5093m c5093m) {
            if (!this.f15408a.contains(c5093m.f15433a)) {
                this.f15409b.add(c5093m);
                return this;
            }
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: b */
        public C5077c<T> m52b() {
            if (this.f15412e != null) {
                return new C5077c<>(new HashSet(this.f15408a), new HashSet(this.f15409b), this.f15410c, this.f15411d, this.f15412e, this.f15413f, null);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }

        /* renamed from: c */
        public C5079b<T> m51c() {
            if (this.f15410c == 0) {
                this.f15410c = 2;
                return this;
            }
            throw new IllegalStateException("Instantiation type has already been set.");
        }

        /* renamed from: d */
        public C5079b<T> m50d(AbstractC5082f<T> abstractC5082f) {
            this.f15412e = abstractC5082f;
            return this;
        }
    }

    public C5077c(Set set, Set set2, int i, int i2, AbstractC5082f abstractC5082f, Set set3, C5078a c5078a) {
        this.f15402a = Collections.unmodifiableSet(set);
        this.f15403b = Collections.unmodifiableSet(set2);
        this.f15404c = i;
        this.f15405d = i2;
        this.f15406e = abstractC5082f;
        this.f15407f = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C5079b<T> m56a(Class<T> cls) {
        return new C5079b<>(cls, new Class[0], null);
    }

    @SafeVarargs
    /* renamed from: c */
    public static <T> C5077c<T> m54c(T t, Class<T> cls, Class<? super T>... clsArr) {
        C5079b c5079b = new C5079b(cls, clsArr, null);
        c5079b.f15412e = new C5075a(t, 0);
        return c5079b.m52b();
    }

    /* renamed from: b */
    public boolean m55b() {
        return this.f15405d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f15402a.toArray()) + ">{" + this.f15404c + ", type=" + this.f15405d + ", deps=" + Arrays.toString(this.f15403b.toArray()) + "}";
    }
}
