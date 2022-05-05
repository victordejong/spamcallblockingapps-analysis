package p081h.p203i.p325c.p336m;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: h.i.c.m.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/d.class */
public final class C9480d<T> {

    /* renamed from: a */
    public final Set<Class<? super T>> f21615a;

    /* renamed from: b */
    public final Set<C9498n> f21616b;

    /* renamed from: c */
    public final int f21617c;

    /* renamed from: d */
    public final int f21618d;

    /* renamed from: e */
    public final AbstractC9488g<T> f21619e;

    /* renamed from: f */
    public final Set<Class<?>> f21620f;

    /* renamed from: h.i.c.m.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/d$b.class */
    public static class C9482b<T> {

        /* renamed from: a */
        public final Set<Class<? super T>> f21621a;

        /* renamed from: b */
        public final Set<C9498n> f21622b;

        /* renamed from: c */
        public int f21623c;

        /* renamed from: d */
        public int f21624d;

        /* renamed from: e */
        public AbstractC9488g<T> f21625e;

        /* renamed from: f */
        public Set<Class<?>> f21626f;

        @SafeVarargs
        public C9482b(Class<T> cls, Class<? super T>... clsArr) {
            this.f21621a = new HashSet();
            this.f21622b = new HashSet();
            this.f21623c = 0;
            this.f21624d = 0;
            this.f21626f = new HashSet();
            C9505u.m15036a(cls, "Null interface");
            this.f21621a.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                C9505u.m15036a(cls2, "Null interface");
            }
            Collections.addAll(this.f21621a, clsArr);
        }

        /* renamed from: a */
        public C9482b<T> m15086a() {
            m15085a(1);
            return this;
        }

        /* renamed from: a */
        public final C9482b<T> m15085a(int i) {
            C9505u.m15034b(this.f21623c == 0, "Instantiation type has already been set.");
            this.f21623c = i;
            return this;
        }

        /* renamed from: a */
        public C9482b<T> m15083a(AbstractC9488g<T> gVar) {
            C9505u.m15036a(gVar, "Null factory");
            this.f21625e = gVar;
            return this;
        }

        /* renamed from: a */
        public C9482b<T> m15082a(C9498n nVar) {
            C9505u.m15036a(nVar, "Null dependency");
            m15081a(nVar.m15051a());
            this.f21622b.add(nVar);
            return this;
        }

        /* renamed from: a */
        public final void m15081a(Class<?> cls) {
            C9505u.m15035a(!this.f21621a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        /* renamed from: b */
        public C9480d<T> m15080b() {
            C9505u.m15034b(this.f21625e != null, "Missing required property: factory.");
            return new C9480d<>(new HashSet(this.f21621a), new HashSet(this.f21622b), this.f21623c, this.f21624d, this.f21625e, this.f21626f);
        }

        /* renamed from: c */
        public C9482b<T> m15079c() {
            m15085a(2);
            return this;
        }

        /* renamed from: d */
        public final C9482b<T> m15078d() {
            this.f21624d = 1;
            return this;
        }
    }

    public C9480d(Set<Class<? super T>> set, Set<C9498n> set2, int i, int i2, AbstractC9488g<T> gVar, Set<Class<?>> set3) {
        this.f21615a = Collections.unmodifiableSet(set);
        this.f21616b = Collections.unmodifiableSet(set2);
        this.f21617c = i;
        this.f21618d = i2;
        this.f21619e = gVar;
        this.f21620f = Collections.unmodifiableSet(set3);
    }

    /* renamed from: a */
    public static <T> C9482b<T> m15099a(Class<T> cls) {
        return new C9482b<>(cls, new Class[0]);
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C9482b<T> m15098a(Class<T> cls, Class<? super T>... clsArr) {
        return new C9482b<>(cls, clsArr);
    }

    /* renamed from: a */
    public static <T> C9480d<T> m15096a(T t, Class<T> cls) {
        C9482b b = m15093b(cls);
        b.m15083a(C9479c.m15101a(t));
        return b.m15080b();
    }

    @SafeVarargs
    /* renamed from: a */
    public static <T> C9480d<T> m15095a(T t, Class<T> cls, Class<? super T>... clsArr) {
        C9482b a = m15098a(cls, clsArr);
        a.m15083a(C9478b.m15102a(t));
        return a.m15080b();
    }

    /* renamed from: a */
    public static /* synthetic */ Object m15097a(Object obj, AbstractC9483e eVar) {
        return obj;
    }

    /* renamed from: b */
    public static <T> C9482b<T> m15093b(Class<T> cls) {
        C9482b<T> a = m15099a(cls);
        a.m15078d();
        return a;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m15092b(Object obj, AbstractC9483e eVar) {
        return obj;
    }

    /* renamed from: a */
    public Set<C9498n> m15100a() {
        return this.f21616b;
    }

    /* renamed from: b */
    public AbstractC9488g<T> m15094b() {
        return this.f21619e;
    }

    /* renamed from: c */
    public Set<Class<? super T>> m15091c() {
        return this.f21615a;
    }

    /* renamed from: d */
    public Set<Class<?>> m15090d() {
        return this.f21620f;
    }

    /* renamed from: e */
    public boolean m15089e() {
        boolean z = true;
        if (this.f21617c != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public boolean m15088f() {
        return this.f21617c == 2;
    }

    /* renamed from: g */
    public boolean m15087g() {
        return this.f21618d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f21615a.toArray()) + ">{" + this.f21617c + ", type=" + this.f21618d + ", deps=" + Arrays.toString(this.f21616b.toArray()) + CssParser.BLOCK_END;
    }
}
