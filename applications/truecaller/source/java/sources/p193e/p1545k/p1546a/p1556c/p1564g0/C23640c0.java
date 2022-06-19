package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.c0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0.class */
public class C23640c0 extends AbstractC23681s implements Comparable<C23640c0> {

    /* renamed from: m */
    public static final AbstractC23426b.C23427a f65554m = new AbstractC23426b.C23427a(AbstractC23426b.C23427a.EnumC23428a.MANAGED_REFERENCE, "");

    /* renamed from: b */
    public final boolean f65555b;

    /* renamed from: c */
    public final AbstractC23458k<?> f65556c;

    /* renamed from: d */
    public final AbstractC23426b f65557d;

    /* renamed from: e */
    public final C23951v f65558e;

    /* renamed from: f */
    public final C23951v f65559f;

    /* renamed from: g */
    public C23645e<C23657g> f65560g;

    /* renamed from: h */
    public C23645e<C23669m> f65561h;

    /* renamed from: i */
    public C23645e<C23664j> f65562i;

    /* renamed from: j */
    public C23645e<C23664j> f65563j;

    /* renamed from: k */
    public transient C23949u f65564k;

    /* renamed from: l */
    public transient AbstractC23426b.C23427a f65565l;

    /* renamed from: e.k.a.c.g0.c0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$a.class */
    public class C23641a implements AbstractC23647g<Class<?>[]> {
        public C23641a() {
            C23640c0.this = r4;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0.AbstractC23647g
        /* renamed from: a */
        public Class<?>[] mo6414a(AbstractC23663i abstractC23663i) {
            return C23640c0.this.f65557d.mo6291c0(abstractC23663i);
        }
    }

    /* renamed from: e.k.a.c.g0.c0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$b.class */
    public class C23642b implements AbstractC23647g<AbstractC23426b.C23427a> {
        public C23642b() {
            C23640c0.this = r4;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0.AbstractC23647g
        /* renamed from: a */
        public AbstractC23426b.C23427a mo6414a(AbstractC23663i abstractC23663i) {
            return C23640c0.this.f65557d.mo6309N(abstractC23663i);
        }
    }

    /* renamed from: e.k.a.c.g0.c0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$c.class */
    public class C23643c implements AbstractC23647g<Boolean> {
        public C23643c() {
            C23640c0.this = r4;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0.AbstractC23647g
        /* renamed from: a */
        public Boolean mo6414a(AbstractC23663i abstractC23663i) {
            return C23640c0.this.f65557d.mo6266p0(abstractC23663i);
        }
    }

    /* renamed from: e.k.a.c.g0.c0$d */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$d.class */
    public class C23644d implements AbstractC23647g<C23635a0> {
        public C23644d() {
            C23640c0.this = r4;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0.AbstractC23647g
        /* renamed from: a */
        public C23635a0 mo6414a(AbstractC23663i abstractC23663i) {
            C23635a0 mo6249y = C23640c0.this.f65557d.mo6249y(abstractC23663i);
            C23635a0 c23635a0 = mo6249y;
            if (mo6249y != null) {
                c23635a0 = C23640c0.this.f65557d.mo6247z(abstractC23663i, mo6249y);
            }
            return c23635a0;
        }
    }

    /* renamed from: e.k.a.c.g0.c0$e */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$e.class */
    public static final class C23645e<T> {

        /* renamed from: a */
        public final T f65570a;

        /* renamed from: b */
        public final C23645e<T> f65571b;

        /* renamed from: c */
        public final C23951v f65572c;

        /* renamed from: d */
        public final boolean f65573d;

        /* renamed from: e */
        public final boolean f65574e;

        /* renamed from: f */
        public final boolean f65575f;

        public C23645e(T t, C23645e<T> c23645e, C23951v c23951v, boolean z, boolean z2, boolean z3) {
            this.f65570a = t;
            this.f65571b = c23645e;
            C23951v c23951v2 = (c23951v == null || c23951v.m5661e()) ? null : c23951v;
            this.f65572c = c23951v2;
            boolean z4 = z;
            if (z) {
                if (c23951v2 == null) {
                    throw new IllegalArgumentException("Cannot pass true for 'explName' if name is null/empty");
                }
                z4 = z;
                if (!c23951v.m5663c()) {
                    z4 = false;
                }
            }
            this.f65573d = z4;
            this.f65574e = z2;
            this.f65575f = z3;
        }

        /* renamed from: a */
        public C23645e<T> m6420a(C23645e<T> c23645e) {
            C23645e<T> c23645e2 = this.f65571b;
            return c23645e2 == null ? m6418c(c23645e) : m6418c(c23645e2.m6420a(c23645e));
        }

        /* renamed from: b */
        public C23645e<T> m6419b() {
            C23645e<T> c23645e = this.f65571b;
            if (c23645e == null) {
                return this;
            }
            C23645e<T> m6419b = c23645e.m6419b();
            if (this.f65572c != null) {
                return m6419b.f65572c == null ? m6418c(null) : m6418c(m6419b);
            } else if (m6419b.f65572c != null) {
                return m6419b;
            } else {
                boolean z = this.f65574e;
                if (z == m6419b.f65574e) {
                    return m6418c(m6419b);
                }
                if (z) {
                    m6419b = m6418c(null);
                }
                return m6419b;
            }
        }

        /* renamed from: c */
        public C23645e<T> m6418c(C23645e<T> c23645e) {
            return c23645e == this.f65571b ? this : new C23645e<>(this.f65570a, c23645e, this.f65572c, this.f65573d, this.f65574e, this.f65575f);
        }

        /* renamed from: d */
        public C23645e<T> m6417d() {
            C23645e<T> m6417d;
            if (this.f65575f) {
                C23645e<T> c23645e = this.f65571b;
                return c23645e == null ? null : c23645e.m6417d();
            }
            C23645e<T> c23645e2 = this.f65571b;
            return (c23645e2 == null || (m6417d = c23645e2.m6417d()) == this.f65571b) ? this : m6418c(m6417d);
        }

        /* renamed from: e */
        public C23645e<T> m6416e() {
            return this.f65571b == null ? this : new C23645e<>(this.f65570a, null, this.f65572c, this.f65573d, this.f65574e, this.f65575f);
        }

        /* renamed from: f */
        public C23645e<T> m6415f() {
            C23645e<T> c23645e = this.f65571b;
            C23645e<T> m6415f = c23645e == null ? null : c23645e.m6415f();
            C23645e<T> c23645e2 = m6415f;
            if (this.f65574e) {
                c23645e2 = m6418c(m6415f);
            }
            return c23645e2;
        }

        public String toString() {
            String format = String.format("%s[visible=%b,ignore=%b,explicitName=%b]", this.f65570a.toString(), Boolean.valueOf(this.f65574e), Boolean.valueOf(this.f65575f), Boolean.valueOf(this.f65573d));
            String str = format;
            if (this.f65571b != null) {
                StringBuilder m8696K = C22128a.m8696K(format, ", ");
                m8696K.append(this.f65571b.toString());
                str = m8696K.toString();
            }
            return str;
        }
    }

    /* renamed from: e.k.a.c.g0.c0$f */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$f.class */
    public static class C23646f<T extends AbstractC23663i> implements Iterator<T> {

        /* renamed from: a */
        public C23645e<T> f65576a;

        public C23646f(C23645e<T> c23645e) {
            this.f65576a = c23645e;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f65576a != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            C23645e<T> c23645e = this.f65576a;
            if (c23645e != null) {
                T t = c23645e.f65570a;
                this.f65576a = c23645e.f65571b;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: e.k.a.c.g0.c0$g */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/c0$g.class */
    public interface AbstractC23647g<T> {
        /* renamed from: a */
        T mo6414a(AbstractC23663i abstractC23663i);
    }

    public C23640c0(AbstractC23458k<?> abstractC23458k, AbstractC23426b abstractC23426b, boolean z, C23951v c23951v) {
        this.f65556c = abstractC23458k;
        this.f65557d = abstractC23426b;
        this.f65559f = c23951v;
        this.f65558e = c23951v;
        this.f65555b = z;
    }

    public C23640c0(AbstractC23458k<?> abstractC23458k, AbstractC23426b abstractC23426b, boolean z, C23951v c23951v, C23951v c23951v2) {
        this.f65556c = abstractC23458k;
        this.f65557d = abstractC23426b;
        this.f65559f = c23951v;
        this.f65558e = c23951v2;
        this.f65555b = z;
    }

    public C23640c0(C23640c0 c23640c0, C23951v c23951v) {
        this.f65556c = c23640c0.f65556c;
        this.f65557d = c23640c0.f65557d;
        this.f65559f = c23640c0.f65559f;
        this.f65558e = c23951v;
        this.f65560g = c23640c0.f65560g;
        this.f65561h = c23640c0.f65561h;
        this.f65562i = c23640c0.f65562i;
        this.f65563j = c23640c0.f65563j;
        this.f65555b = c23640c0.f65555b;
    }

    /* renamed from: V */
    public static <T> C23645e<T> m6421V(C23645e<T> c23645e, C23645e<T> c23645e2) {
        if (c23645e == null) {
            return c23645e2;
        }
        if (c23645e2 == null) {
            return c23645e;
        }
        C23645e<T> c23645e3 = c23645e.f65571b;
        return c23645e3 == null ? c23645e.m6418c(c23645e2) : c23645e.m6418c(c23645e3.m6420a(c23645e2));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: A */
    public boolean mo5712A() {
        return this.f65563j != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: B */
    public boolean mo5711B() {
        return m6437F(this.f65560g) || m6437F(this.f65562i) || m6437F(this.f65563j) || m6438E(this.f65561h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: C */
    public boolean mo5710C() {
        return m6438E(this.f65560g) || m6438E(this.f65562i) || m6438E(this.f65563j) || m6438E(this.f65561h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: D */
    public boolean mo6344D() {
        Boolean bool = (Boolean) m6422U(new C23643c());
        return bool != null && bool.booleanValue();
    }

    /* renamed from: E */
    public final <T> boolean m6438E(C23645e<T> c23645e) {
        while (c23645e != null) {
            if (c23645e.f65572c != null && c23645e.f65573d) {
                return true;
            }
            c23645e = c23645e.f65571b;
        }
        return false;
    }

    /* renamed from: F */
    public final <T> boolean m6437F(C23645e<T> c23645e) {
        while (c23645e != null) {
            C23951v c23951v = c23645e.f65572c;
            if (c23951v != null && c23951v.m5663c()) {
                return true;
            }
            c23645e = c23645e.f65571b;
        }
        return false;
    }

    /* renamed from: G */
    public final <T> boolean m6436G(C23645e<T> c23645e) {
        while (c23645e != null) {
            if (c23645e.f65575f) {
                return true;
            }
            c23645e = c23645e.f65571b;
        }
        return false;
    }

    /* renamed from: H */
    public final <T> boolean m6435H(C23645e<T> c23645e) {
        while (c23645e != null) {
            if (c23645e.f65574e) {
                return true;
            }
            c23645e = c23645e.f65571b;
        }
        return false;
    }

    /* renamed from: I */
    public final <T extends AbstractC23663i> C23645e<T> m6434I(C23645e<T> c23645e, C23678p c23678p) {
        AbstractC23663i abstractC23663i = (AbstractC23663i) c23645e.f65570a.mo6373l(c23678p);
        C23645e<T> c23645e2 = c23645e.f65571b;
        C23645e<T> c23645e3 = c23645e;
        if (c23645e2 != null) {
            c23645e3 = c23645e.m6418c(m6434I(c23645e2, c23678p));
        }
        if (abstractC23663i != c23645e3.f65570a) {
            c23645e3 = new C23645e<>(abstractC23663i, c23645e3.f65571b, c23645e3.f65572c, c23645e3.f65573d, c23645e3.f65574e, c23645e3.f65575f);
        }
        return c23645e3;
    }

    /* renamed from: J */
    public final void m6433J(Collection<C23951v> collection, Map<C23951v, C23640c0> map, C23645e<?> c23645e) {
        C23645e c23645e2 = c23645e;
        while (true) {
            C23645e c23645e3 = c23645e2;
            if (c23645e3 != null) {
                C23951v c23951v = c23645e3.f65572c;
                if (c23645e3.f65573d && c23951v != null) {
                    C23640c0 c23640c0 = map.get(c23951v);
                    C23640c0 c23640c02 = c23640c0;
                    if (c23640c0 == null) {
                        C23640c0 c23640c03 = new C23640c0(this.f65556c, this.f65557d, this.f65555b, this.f65559f, c23951v);
                        c23640c02 = c23640c03;
                        map.put(c23951v, c23640c03);
                    }
                    if (c23645e == this.f65560g) {
                        c23640c02.f65560g = c23645e3.m6418c(c23640c02.f65560g);
                    } else if (c23645e == this.f65562i) {
                        c23640c02.f65562i = c23645e3.m6418c(c23640c02.f65562i);
                    } else if (c23645e == this.f65563j) {
                        c23640c02.f65563j = c23645e3.m6418c(c23640c02.f65563j);
                    } else if (c23645e != this.f65561h) {
                        throw new IllegalStateException("Internal error: mismatched accessors, property: " + this);
                    } else {
                        c23640c02.f65561h = c23645e3.m6418c(c23640c02.f65561h);
                    }
                } else if (c23645e3.f65574e) {
                    StringBuilder m8728C = C22128a.m8728C("Conflicting/ambiguous property name definitions (implicit name ");
                    m8728C.append(C23914g.m5778C(this.f65558e));
                    m8728C.append("): found multiple explicit names: ");
                    m8728C.append(collection);
                    m8728C.append(", but also implicit accessor: ");
                    m8728C.append(c23645e3);
                    throw new IllegalStateException(m8728C.toString());
                }
                c23645e2 = c23645e3.f65571b;
            } else {
                return;
            }
        }
    }

    /* renamed from: K */
    public final Set<C23951v> m6432K(C23645e<? extends AbstractC23663i> c23645e, Set<C23951v> set) {
        C23645e<? extends AbstractC23663i> c23645e2 = c23645e;
        while (c23645e2 != null) {
            HashSet hashSet = set;
            if (c23645e2.f65573d) {
                if (c23645e2.f65572c == null) {
                    hashSet = set;
                } else {
                    hashSet = set;
                    if (set == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c23645e2.f65572c);
                }
            }
            c23645e2 = c23645e2.f65571b;
            set = hashSet;
        }
        return set;
    }

    /* renamed from: L */
    public final <T extends AbstractC23663i> C23678p m6431L(C23645e<T> c23645e) {
        C23678p c23678p = c23645e.f65570a.f65618b;
        C23645e<T> c23645e2 = c23645e.f65571b;
        C23678p c23678p2 = c23678p;
        if (c23645e2 != null) {
            c23678p2 = C23678p.m6360c(c23678p, m6431L(c23645e2));
        }
        return c23678p2;
    }

    /* renamed from: M */
    public int m6430M(C23664j c23664j) {
        String name = c23664j.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    /* renamed from: N */
    public final C23678p m6429N(int i, C23645e<? extends AbstractC23663i>... c23645eArr) {
        int i2;
        C23645e<? extends AbstractC23663i> c23645e = c23645eArr[i];
        C23678p c23678p = ((AbstractC23663i) c23645e.f65570a).f65618b;
        C23645e<? extends AbstractC23663i> c23645e2 = c23645e.f65571b;
        C23678p c23678p2 = c23678p;
        int i3 = i;
        if (c23645e2 != null) {
            c23678p2 = C23678p.m6360c(c23678p, m6431L(c23645e2));
            i3 = i;
        }
        do {
            i2 = i3 + 1;
            if (i2 >= c23645eArr.length) {
                return c23678p2;
            }
            i3 = i2;
        } while (c23645eArr[i2] == null);
        return C23678p.m6360c(c23678p2, m6429N(i2, c23645eArr));
    }

    /* renamed from: O */
    public final <T> C23645e<T> m6428O(C23645e<T> c23645e) {
        return c23645e == null ? c23645e : c23645e.m6417d();
    }

    /* renamed from: P */
    public final <T> C23645e<T> m6427P(C23645e<T> c23645e) {
        return c23645e == null ? c23645e : c23645e.m6415f();
    }

    /* renamed from: Q */
    public int m6426Q(C23664j c23664j) {
        String name = c23664j.getName();
        return (!name.startsWith("set") || name.length() <= 3) ? 2 : 1;
    }

    /* renamed from: R */
    public final <T> C23645e<T> m6425R(C23645e<T> c23645e) {
        return c23645e == null ? c23645e : c23645e.m6419b();
    }

    /* renamed from: S */
    public void m6424S(C23640c0 c23640c0) {
        this.f65560g = m6421V(this.f65560g, c23640c0.f65560g);
        this.f65561h = m6421V(this.f65561h, c23640c0.f65561h);
        this.f65562i = m6421V(this.f65562i, c23640c0.f65562i);
        this.f65563j = m6421V(this.f65563j, c23640c0.f65563j);
    }

    /* renamed from: T */
    public Set<C23951v> m6423T() {
        Set<C23951v> m6432K = m6432K(this.f65561h, m6432K(this.f65563j, m6432K(this.f65562i, m6432K(this.f65560g, null))));
        Set<C23951v> set = m6432K;
        if (m6432K == null) {
            set = Collections.emptySet();
        }
        return set;
    }

    /* renamed from: U */
    public <T> T m6422U(AbstractC23647g<T> abstractC23647g) {
        T t;
        T t2 = null;
        if (this.f65557d != null) {
            if (this.f65555b) {
                C23645e<C23664j> c23645e = this.f65562i;
                t = null;
                if (c23645e != null) {
                    t = abstractC23647g.mo6414a(c23645e.f65570a);
                }
            } else {
                C23645e<C23669m> c23645e2 = this.f65561h;
                T t3 = null;
                if (c23645e2 != null) {
                    t3 = abstractC23647g.mo6414a(c23645e2.f65570a);
                }
                t = t3;
                if (t3 == null) {
                    C23645e<C23664j> c23645e3 = this.f65563j;
                    t = t3;
                    if (c23645e3 != null) {
                        t = abstractC23647g.mo6414a(c23645e3.f65570a);
                    }
                }
            }
            t2 = t;
            if (t == null) {
                C23645e<C23657g> c23645e4 = this.f65560g;
                t2 = t;
                if (c23645e4 != null) {
                    t2 = abstractC23647g.mo6414a(c23645e4.f65570a);
                }
            }
        }
        return t2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: a */
    public boolean mo6343a() {
        return (this.f65561h == null && this.f65563j == null && this.f65560g == null) ? false : true;
    }

    @Override // java.lang.Comparable
    public int compareTo(C23640c0 c23640c0) {
        int i;
        C23640c0 c23640c02 = c23640c0;
        if (this.f65561h != null) {
            if (c23640c02.f65561h == null) {
                i = -1;
            }
            i = getName().compareTo(c23640c02.getName());
        } else {
            if (c23640c02.f65561h != null) {
                i = 1;
            }
            i = getName().compareTo(c23640c02.getName());
        }
        return i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: d */
    public C23951v mo5708d() {
        return this.f65558e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: g */
    public boolean mo6342g() {
        return (this.f65562i == null && this.f65560g == null) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01f5, code lost:
        if (r14 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x027a, code lost:
        if (r19 != null) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0276  */
    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.C23949u getMetadata() {
        /*
            Method dump skipped, instructions count: 656
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0.getMetadata():e.k.a.c.u");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s, p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
    public String getName() {
        C23951v c23951v = this.f65558e;
        return c23951v == null ? null : c23951v.f66304a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: h */
    public AbstractC23331r.C23333b mo5707h() {
        AbstractC23663i m6338n = m6338n();
        AbstractC23426b abstractC23426b = this.f65557d;
        AbstractC23331r.C23333b mo6313J = abstractC23426b == null ? null : abstractC23426b.mo6313J(m6338n);
        AbstractC23331r.C23333b c23333b = mo6313J;
        if (mo6313J == null) {
            AbstractC23331r.C23333b c23333b2 = AbstractC23331r.C23333b.f64537e;
            c23333b = AbstractC23331r.C23333b.f64537e;
        }
        return c23333b;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: i */
    public C23635a0 mo6341i() {
        return (C23635a0) m6422U(new C23644d());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: j */
    public AbstractC23426b.C23427a mo6340j() {
        AbstractC23426b.C23427a c23427a = f65554m;
        AbstractC23426b.C23427a c23427a2 = this.f65565l;
        if (c23427a2 != null) {
            if (c23427a2 != c23427a) {
                return c23427a2;
            }
            return null;
        }
        AbstractC23426b.C23427a c23427a3 = (AbstractC23426b.C23427a) m6422U(new C23642b());
        if (c23427a3 != null) {
            c23427a = c23427a3;
        }
        this.f65565l = c23427a;
        return c23427a3;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: m */
    public Class<?>[] mo6339m() {
        return (Class[]) m6422U(new C23641a());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: o */
    public C23669m mo5706o() {
        C23645e<C23669m> c23645e;
        C23645e<C23669m> c23645e2 = this.f65561h;
        C23645e<C23669m> c23645e3 = c23645e2;
        if (c23645e2 == null) {
            return null;
        }
        do {
            C23669m c23669m = c23645e3.f65570a;
            if (c23669m.f65631c instanceof C23650e) {
                return c23669m;
            }
            c23645e = c23645e3.f65571b;
            c23645e3 = c23645e;
        } while (c23645e != null);
        return this.f65561h.f65570a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: p */
    public Iterator<C23669m> mo5705p() {
        C23645e<C23669m> c23645e = this.f65561h;
        return c23645e == null ? C23914g.f66158c : new C23646f(c23645e);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: q */
    public C23657g mo5704q() {
        C23657g c23657g;
        C23645e<C23657g> c23645e = this.f65560g;
        if (c23645e == null) {
            return null;
        }
        C23657g c23657g2 = c23645e.f65570a;
        C23645e c23645e2 = c23645e.f65571b;
        while (true) {
            C23645e c23645e3 = c23645e2;
            if (c23645e3 == null) {
                return c23657g2;
            }
            c23657g = (C23657g) c23645e3.f65570a;
            Class<?> mo6376g = c23657g2.mo6376g();
            Class<?> mo6376g2 = c23657g.mo6376g();
            if (mo6376g == mo6376g2) {
                break;
            }
            if (!mo6376g.isAssignableFrom(mo6376g2)) {
                if (!mo6376g2.isAssignableFrom(mo6376g)) {
                    break;
                }
            } else {
                c23657g2 = c23657g;
            }
            c23645e2 = c23645e3.f65571b;
        }
        StringBuilder m8728C = C22128a.m8728C("Multiple fields representing property \"");
        m8728C.append(getName());
        m8728C.append("\": ");
        m8728C.append(c23657g2.mo6384h());
        m8728C.append(" vs ");
        m8728C.append(c23657g.mo6384h());
        throw new IllegalArgumentException(m8728C.toString());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: r */
    public C23664j mo5703r() {
        C23645e<C23664j> c23645e = this.f65562i;
        if (c23645e == null) {
            return null;
        }
        C23645e<C23664j> c23645e2 = c23645e.f65571b;
        C23645e<C23664j> c23645e3 = c23645e;
        if (c23645e2 == null) {
            return c23645e.f65570a;
        }
        for (C23645e<C23664j> c23645e4 = c23645e2; c23645e4 != null; c23645e4 = c23645e4.f65571b) {
            Class<?> mo6376g = c23645e3.f65570a.mo6376g();
            Class<?> mo6376g2 = c23645e4.f65570a.mo6376g();
            if (mo6376g != mo6376g2) {
                if (!mo6376g.isAssignableFrom(mo6376g2)) {
                    if (mo6376g2.isAssignableFrom(mo6376g)) {
                        continue;
                    }
                }
                c23645e3 = c23645e4;
            }
            int m6430M = m6430M(c23645e4.f65570a);
            int m6430M2 = m6430M(c23645e3.f65570a);
            if (m6430M == m6430M2) {
                StringBuilder m8728C = C22128a.m8728C("Conflicting getter definitions for property \"");
                m8728C.append(getName());
                m8728C.append("\": ");
                m8728C.append(c23645e3.f65570a.mo6384h());
                m8728C.append(" vs ");
                m8728C.append(c23645e4.f65570a.mo6384h());
                throw new IllegalArgumentException(m8728C.toString());
            }
            if (m6430M >= m6430M2) {
            }
            c23645e3 = c23645e4;
        }
        this.f65562i = c23645e3.m6416e();
        return c23645e3.f65570a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: s */
    public AbstractC23663i mo5702s() {
        if (this.f65555b) {
            return m6338n();
        }
        C23669m mo5706o = mo5706o();
        C23669m c23669m = mo5706o;
        if (mo5706o == null) {
            C23664j mo5699v = mo5699v();
            c23669m = mo5699v;
            if (mo5699v == null) {
                c23669m = mo5704q();
            }
        }
        C23669m c23669m2 = c23669m;
        if (c23669m == null) {
            c23669m2 = m6338n();
        }
        return c23669m2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: t */
    public AbstractC23698i mo5701t() {
        if (this.f65555b) {
            C23664j mo5703r = mo5703r();
            C23664j c23664j = mo5703r;
            if (mo5703r == null) {
                C23657g mo5704q = mo5704q();
                c23664j = mo5704q;
                if (mo5704q == null) {
                    return C23887o.m5900p();
                }
            }
            return c23664j.mo6377e();
        }
        C23669m mo5706o = mo5706o();
        C23669m c23669m = mo5706o;
        if (mo5706o == null) {
            C23664j mo5699v = mo5699v();
            if (mo5699v != null) {
                return mo5699v.mo6367r(0);
            }
            c23669m = mo5704q();
        }
        C23669m c23669m2 = c23669m;
        if (c23669m == null) {
            C23664j mo5703r2 = mo5703r();
            c23669m2 = mo5703r2;
            if (mo5703r2 == null) {
                return C23887o.m5900p();
            }
        }
        return c23669m2.mo6377e();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[Property '");
        m8728C.append(this.f65558e);
        m8728C.append("'; ctors: ");
        m8728C.append(this.f65561h);
        m8728C.append(", field(s): ");
        m8728C.append(this.f65560g);
        m8728C.append(", getter(s): ");
        m8728C.append(this.f65562i);
        m8728C.append(", setter(s): ");
        m8728C.append(this.f65563j);
        m8728C.append("]");
        return m8728C.toString();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: u */
    public Class<?> mo5700u() {
        return mo5701t().f65728a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: v */
    public C23664j mo5699v() {
        C23645e<C23664j> c23645e = this.f65563j;
        if (c23645e == null) {
            return null;
        }
        C23645e<C23664j> c23645e2 = c23645e.f65571b;
        C23645e<C23664j> c23645e3 = c23645e;
        if (c23645e2 == null) {
            return c23645e.f65570a;
        }
        for (C23645e<C23664j> c23645e4 = c23645e2; c23645e4 != null; c23645e4 = c23645e4.f65571b) {
            Class<?> mo6376g = c23645e3.f65570a.mo6376g();
            Class<?> mo6376g2 = c23645e4.f65570a.mo6376g();
            if (mo6376g != mo6376g2) {
                if (!mo6376g.isAssignableFrom(mo6376g2)) {
                    if (mo6376g2.isAssignableFrom(mo6376g)) {
                        continue;
                    }
                }
                c23645e3 = c23645e4;
            }
            C23664j c23664j = c23645e4.f65570a;
            C23664j c23664j2 = c23645e3.f65570a;
            int m6426Q = m6426Q(c23664j);
            int m6426Q2 = m6426Q(c23664j2);
            if (m6426Q == m6426Q2) {
                AbstractC23426b abstractC23426b = this.f65557d;
                if (abstractC23426b != null) {
                    C23664j mo6260s0 = abstractC23426b.mo6260s0(this.f65556c, c23664j2, c23664j);
                    if (mo6260s0 != c23664j2) {
                        if (mo6260s0 != c23664j) {
                        }
                        c23645e3 = c23645e4;
                    } else {
                        continue;
                    }
                }
                throw new IllegalArgumentException(String.format("Conflicting setter definitions for property \"%s\": %s vs %s", getName(), c23645e3.f65570a.mo6384h(), c23645e4.f65570a.mo6384h()));
            }
            if (m6426Q >= m6426Q2) {
            }
            c23645e3 = c23645e4;
        }
        this.f65563j = c23645e3.m6416e();
        return c23645e3.f65570a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: w */
    public C23951v mo5698w() {
        AbstractC23426b abstractC23426b;
        return (mo5702s() == null || (abstractC23426b = this.f65557d) == null) ? null : abstractC23426b.m6874d0();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: x */
    public boolean mo5697x() {
        return this.f65561h != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: y */
    public boolean mo5696y() {
        return this.f65560g != null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s
    /* renamed from: z */
    public boolean mo5695z(C23951v c23951v) {
        return this.f65558e.equals(c23951v);
    }
}
