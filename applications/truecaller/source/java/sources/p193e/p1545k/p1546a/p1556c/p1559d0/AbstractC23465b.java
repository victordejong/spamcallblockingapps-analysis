package p193e.p1545k.p1546a.p1556c.p1559d0;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import p193e.p1545k.p1546a.p1547a.AbstractC23285b;
import p193e.p1545k.p1546a.p1547a.AbstractC23287b0;
import p193e.p1545k.p1546a.p1547a.AbstractC23304h;
import p193e.p1545k.p1546a.p1547a.EnumC23310j0;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1556c.AbstractC23424a;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23444c;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23453h;
import p193e.p1545k.p1546a.p1556c.p1558c0.C23457j;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23504d;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23507e;
import p193e.p1545k.p1546a.p1556c.p1562e0.C23616b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23681s;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23638c;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23640c0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23669m;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23679q;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g;
import p193e.p1545k.p1546a.p1556c.p1567j0.C23704b;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23877g;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23908d;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23920j;
/* renamed from: e.k.a.c.d0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/b.class */
public abstract class AbstractC23465b extends AbstractC23481o implements Serializable {

    /* renamed from: b */
    public static final Class<?> f65100b = CharSequence.class;

    /* renamed from: c */
    public static final Class<?> f65101c = Iterable.class;

    /* renamed from: d */
    public static final Class<?> f65102d = Map.Entry.class;

    /* renamed from: e */
    public static final Class<?> f65103e = Serializable.class;

    /* renamed from: a */
    public final C23457j f65104a;

    /* renamed from: e.k.a.c.d0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/b$a.class */
    public static class C23466a {

        /* renamed from: a */
        public static final HashMap<String, Class<? extends Collection>> f65105a;

        /* renamed from: b */
        public static final HashMap<String, Class<? extends Map>> f65106b;

        static {
            HashMap<String, Class<? extends Collection>> hashMap = new HashMap<>();
            hashMap.put(Collection.class.getName(), ArrayList.class);
            hashMap.put(List.class.getName(), ArrayList.class);
            hashMap.put(Set.class.getName(), HashSet.class);
            hashMap.put(SortedSet.class.getName(), TreeSet.class);
            hashMap.put(Queue.class.getName(), LinkedList.class);
            hashMap.put(AbstractList.class.getName(), ArrayList.class);
            hashMap.put(AbstractSet.class.getName(), HashSet.class);
            hashMap.put(Deque.class.getName(), LinkedList.class);
            hashMap.put(NavigableSet.class.getName(), TreeSet.class);
            f65105a = hashMap;
            HashMap<String, Class<? extends Map>> hashMap2 = new HashMap<>();
            hashMap2.put(Map.class.getName(), LinkedHashMap.class);
            hashMap2.put(AbstractMap.class.getName(), LinkedHashMap.class);
            hashMap2.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
            hashMap2.put(SortedMap.class.getName(), TreeMap.class);
            hashMap2.put(NavigableMap.class.getName(), TreeMap.class);
            hashMap2.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
            f65106b = hashMap2;
        }
    }

    static {
        new C23951v("@JsonUnwrapped");
    }

    public AbstractC23465b(C23457j c23457j) {
        this.f65104a = c23457j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c7, code lost:
        if (r9.mo5986v() != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x029d  */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23700j<?> mo6780a(p193e.p1545k.p1546a.p1556c.AbstractC23632g r8, p193e.p1545k.p1546a.p1556c.p1573m0.C23875e r9, p193e.p1545k.p1546a.p1556c.AbstractC23444c r10) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23465b.mo6780a(e.k.a.c.g, e.k.a.c.m0.e, e.k.a.c.c):e.k.a.c.j");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o
    /* renamed from: b */
    public AbstractC23709e mo6779b(C23624f c23624f, AbstractC23698i abstractC23698i) throws C23733k {
        Collection<C23704b> collection;
        C23638c c23638c = ((C23679q) c23624f.m6861m(abstractC23698i.f65728a)).f65652e;
        AbstractC23711g<?> mo6297Z = c23624f.m6864e().mo6297Z(c23624f, c23638c, abstractC23698i);
        if (mo6297Z == null) {
            mo6297Z = c23624f.f65071b.f65027f;
            if (mo6297Z == null) {
                return null;
            }
            collection = null;
        } else {
            collection = c23624f.f65075d.mo6195b(c23624f, c23638c);
        }
        AbstractC23711g<?> abstractC23711g = mo6297Z;
        if (mo6297Z.mo6183h() == null) {
            abstractC23711g = mo6297Z;
            if (abstractC23698i.mo5986v()) {
                mo6778c(c23624f, abstractC23698i);
                abstractC23711g = mo6297Z;
                if (!abstractC23698i.m6234u(abstractC23698i.f65728a)) {
                    abstractC23711g = mo6297Z.mo6186e(abstractC23698i.f65728a);
                }
            }
        }
        try {
            return abstractC23711g.mo6189b(c23624f, abstractC23698i, collection);
        } catch (IllegalArgumentException | IllegalStateException e) {
            C23616b c23616b = new C23616b((AbstractC23376j) null, C23914g.m5757j(e), abstractC23698i);
            c23616b.initCause(e);
            throw c23616b;
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23481o
    /* renamed from: c */
    public AbstractC23698i mo6778c(C23624f c23624f, AbstractC23698i abstractC23698i) throws C23733k {
        Class<?> cls = abstractC23698i.f65728a;
        Objects.requireNonNull(this.f65104a);
        AbstractC23424a[] abstractC23424aArr = C23457j.f65067c;
        if (abstractC23424aArr.length > 0) {
            C23908d c23908d = new C23908d(abstractC23424aArr);
            while (c23908d.hasNext()) {
                Objects.requireNonNull((AbstractC23424a) c23908d.next());
            }
        }
        return abstractC23698i;
    }

    /* renamed from: d */
    public void m6846d(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23507e c23507e, C23504d c23504d, C23453h c23453h) throws C23733k {
        int i;
        int i2 = 0;
        if (1 != c23504d.f65222c) {
            Objects.requireNonNull(c23453h);
            int i3 = -1;
            while (true) {
                i = i3;
                if (i2 >= c23504d.f65222c) {
                    break;
                }
                int i4 = i;
                if (c23504d.f65223d[i2].f65226c == null) {
                    if (i >= 0) {
                        i = -1;
                        break;
                    }
                    i4 = i2;
                }
                i2++;
                i3 = i4;
            }
            if (i < 0 || c23504d.m6716d(i) != null) {
                m6844f(abstractC23632g, abstractC23444c, c23507e, c23504d);
                return;
            } else {
                m6845e(abstractC23632g, abstractC23444c, c23507e, c23504d);
                return;
            }
        }
        C23669m m6715e = c23504d.m6715e(0);
        AbstractC23285b.C23286a m6717c = c23504d.m6717c(0);
        Objects.requireNonNull(c23453h);
        AbstractC23681s m6714f = c23504d.m6714f(0);
        AbstractC23681s abstractC23681s = c23504d.f65223d[0].f65225b;
        C23951v mo5708d = (abstractC23681s == null || !abstractC23681s.mo5710C()) ? null : abstractC23681s.mo5708d();
        boolean z = (mo5708d == null && m6717c == null) ? false : true;
        if (!z && m6714f != null) {
            mo5708d = c23504d.m6716d(0);
            z = mo5708d != null && m6714f.mo6342g();
        }
        if (z) {
            c23507e.m6709e(c23504d.f65221b, true, new AbstractC23488u[]{m6835o(abstractC23632g, abstractC23444c, mo5708d, 0, m6715e, m6717c)});
            return;
        }
        m6839k(c23507e, c23504d.f65221b, true, true);
        AbstractC23681s m6714f2 = c23504d.m6714f(0);
        if (m6714f2 == null) {
            return;
        }
        ((C23640c0) m6714f2).f65561h = null;
    }

    /* renamed from: e */
    public void m6845e(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23507e c23507e, C23504d c23504d) throws C23733k {
        int i = c23504d.f65222c;
        AbstractC23488u[] abstractC23488uArr = new AbstractC23488u[i];
        int i2 = -1;
        for (int i3 = 0; i3 < i; i3++) {
            C23669m m6715e = c23504d.m6715e(i3);
            AbstractC23285b.C23286a m6717c = c23504d.m6717c(i3);
            if (m6717c != null) {
                abstractC23488uArr[i3] = m6835o(abstractC23632g, abstractC23444c, null, i3, m6715e, m6717c);
            } else if (i2 >= 0) {
                abstractC23632g.m6482X(abstractC23444c, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed", Integer.valueOf(i2), Integer.valueOf(i3), c23504d);
                throw null;
            } else {
                i2 = i3;
            }
        }
        if (i2 < 0) {
            abstractC23632g.m6482X(abstractC23444c, "No argument left as delegating for Creator %s: exactly one required", c23504d);
            throw null;
        } else if (i != 1) {
            c23507e.m6710d(c23504d.f65221b, true, abstractC23488uArr, i2);
        } else {
            m6839k(c23507e, c23504d.f65221b, true, true);
            AbstractC23681s m6714f = c23504d.m6714f(0);
            if (m6714f == null) {
                return;
            }
            ((C23640c0) m6714f).f65561h = null;
        }
    }

    /* renamed from: f */
    public void m6844f(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23507e c23507e, C23504d c23504d) throws C23733k {
        int i = c23504d.f65222c;
        AbstractC23488u[] abstractC23488uArr = new AbstractC23488u[i];
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC23285b.C23286a m6717c = c23504d.m6717c(i2);
            C23669m m6715e = c23504d.m6715e(i2);
            C23951v m6716d = c23504d.m6716d(i2);
            if (m6716d == null) {
                if (abstractC23632g.m6455y().mo6295a0(m6715e) != null) {
                    m6837m(abstractC23632g, abstractC23444c, m6715e);
                    throw null;
                } else {
                    m6716d = c23504d.m6718b(i2);
                    m6836n(abstractC23632g, abstractC23444c, c23504d, i2, m6716d, m6717c);
                }
            }
            abstractC23488uArr[i2] = m6835o(abstractC23632g, abstractC23444c, m6716d, i2, m6715e, m6717c);
        }
        c23507e.m6709e(c23504d.f65221b, true, abstractC23488uArr);
    }

    /* renamed from: g */
    public final boolean m6843g(AbstractC23426b abstractC23426b, AbstractC23670n abstractC23670n, AbstractC23681s abstractC23681s) {
        String name;
        if ((abstractC23681s == null || !abstractC23681s.mo5710C()) && abstractC23426b.mo6267p(abstractC23670n.m6369p(0)) == null) {
            return abstractC23681s != null && (name = abstractC23681s.getName()) != null && !name.isEmpty() && abstractC23681s.mo6342g();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:147:0x059d, code lost:
        if (r0 == null) goto L152;
     */
    /* JADX WARN: Removed duplicated region for block: B:265:0x09c5  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x09cb  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x09d3  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w m6842h(p193e.p1545k.p1546a.p1556c.AbstractC23632g r15, p193e.p1545k.p1546a.p1556c.AbstractC23444c r16) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 3032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23465b.m6842h(e.k.a.c.g, e.k.a.c.c):e.k.a.c.d0.w");
    }

    /* renamed from: i */
    public AbstractC23700j<?> m6841i(Class<?> cls, C23624f c23624f, AbstractC23444c abstractC23444c) throws C23733k {
        C23908d c23908d = (C23908d) this.f65104a.m6869b();
        while (c23908d.hasNext()) {
            AbstractC23700j<?> m6773e = ((AbstractC23482p) c23908d.next()).m6773e(cls, c23624f, abstractC23444c);
            if (m6773e != null) {
                return m6773e;
            }
        }
        return null;
    }

    /* renamed from: j */
    public AbstractC23698i m6840j(C23624f c23624f, Class<?> cls) throws C23733k {
        AbstractC23698i m5914b = c23624f.f65071b.f65022a.m5914b(null, cls, C23887o.f66073e);
        mo6778c(c23624f, m5914b);
        return m5914b.f65728a == cls ? null : m5914b;
    }

    /* renamed from: k */
    public boolean m6839k(C23507e c23507e, AbstractC23670n abstractC23670n, boolean z, boolean z2) {
        Class<?> mo6366s = abstractC23670n.mo6366s(0);
        if (mo6366s == String.class || mo6366s == f65100b) {
            if (!z && !z2) {
                return true;
            }
            c23507e.m6706h(abstractC23670n, 1, z);
            return true;
        } else if (mo6366s == Integer.TYPE || mo6366s == Integer.class) {
            if (!z && !z2) {
                return true;
            }
            c23507e.m6706h(abstractC23670n, 2, z);
            return true;
        } else if (mo6366s == Long.TYPE || mo6366s == Long.class) {
            if (!z && !z2) {
                return true;
            }
            c23507e.m6706h(abstractC23670n, 3, z);
            return true;
        } else if (mo6366s == Double.TYPE || mo6366s == Double.class) {
            if (!z && !z2) {
                return true;
            }
            c23507e.m6706h(abstractC23670n, 5, z);
            return true;
        } else if (mo6366s == Boolean.TYPE || mo6366s == Boolean.class) {
            if (!z && !z2) {
                return true;
            }
            c23507e.m6706h(abstractC23670n, 7, z);
            return true;
        } else {
            if (mo6366s == BigInteger.class && (z || z2)) {
                c23507e.m6706h(abstractC23670n, 4, z);
            }
            if (mo6366s == BigDecimal.class && (z || z2)) {
                c23507e.m6706h(abstractC23670n, 6, z);
            }
            if (!z) {
                return false;
            }
            c23507e.m6710d(abstractC23670n, z, null, 0);
            return true;
        }
    }

    /* renamed from: l */
    public boolean m6838l(AbstractC23632g abstractC23632g, AbstractC23636b abstractC23636b) {
        AbstractC23304h.EnumC23305a mo6289e;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        return (m6455y == null || (mo6289e = m6455y.mo6289e(abstractC23632g.f65501c, abstractC23636b)) == null || mo6289e == AbstractC23304h.EnumC23305a.DISABLED) ? false : true;
    }

    /* renamed from: m */
    public void m6837m(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23669m c23669m) throws C23733k {
        abstractC23632g.m6482X(abstractC23444c, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported", Integer.valueOf(c23669m.f65633e));
        throw null;
    }

    /* renamed from: n */
    public void m6836n(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23504d c23504d, int i, C23951v c23951v, AbstractC23285b.C23286a c23286a) throws C23733k {
        if (c23951v == null && c23286a == null) {
            abstractC23632g.m6482X(abstractC23444c, "Argument #%d of constructor %s has no property name (and is not Injectable): can not use as property-based Creator", Integer.valueOf(i), c23504d);
            throw null;
        }
    }

    /* renamed from: o */
    public AbstractC23488u m6835o(AbstractC23632g abstractC23632g, AbstractC23444c abstractC23444c, C23951v c23951v, int i, C23669m c23669m, AbstractC23285b.C23286a c23286a) throws C23733k {
        EnumC23310j0 enumC23310j0;
        EnumC23310j0 enumC23310j02;
        EnumC23310j0 enumC23310j03;
        AbstractC23287b0.C23288a mo6300W;
        C23624f c23624f = abstractC23632g.f65501c;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        C23949u m5668a = m6455y == null ? C23949u.f66292j : C23949u.m5668a(m6455y.mo6272m0(c23669m), m6455y.mo6316G(c23669m), m6455y.mo6311L(c23669m), m6455y.mo6317F(c23669m));
        AbstractC23698i m6830t = m6830t(abstractC23632g, c23669m, c23669m.f65632d);
        AbstractC23462d.C23463a c23463a = new AbstractC23462d.C23463a(c23951v, m6830t, m6455y.m6874d0(), c23669m, m5668a);
        AbstractC23709e abstractC23709e = (AbstractC23709e) m6830t.f65731d;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e == null) {
            abstractC23709e2 = mo6779b(c23624f, m6830t);
        }
        AbstractC23426b m6455y2 = abstractC23632g.m6455y();
        C23624f c23624f2 = abstractC23632g.f65501c;
        AbstractC23636b mo6108c = c23463a.mo6108c();
        EnumC23310j0 enumC23310j04 = null;
        if (mo6108c != null) {
            if (m6455y2 == null || (mo6300W = m6455y2.mo6300W(mo6108c)) == null) {
                enumC23310j03 = null;
            } else {
                enumC23310j03 = mo6300W.m7290b();
                enumC23310j04 = mo6300W.m7291a();
            }
            c23624f2.mo6858f(c23463a.getType().f65728a);
            EnumC23310j0 enumC23310j05 = enumC23310j03;
            enumC23310j0 = enumC23310j04;
            enumC23310j02 = enumC23310j05;
        } else {
            enumC23310j02 = null;
            enumC23310j0 = null;
        }
        AbstractC23287b0.C23288a c23288a = c23624f2.f65080i.f65053b;
        EnumC23310j0 enumC23310j06 = enumC23310j02;
        if (enumC23310j02 == null) {
            enumC23310j06 = c23288a.m7290b();
        }
        EnumC23310j0 enumC23310j07 = enumC23310j0;
        if (enumC23310j0 == null) {
            enumC23310j07 = c23288a.m7291a();
        }
        if (enumC23310j06 != null || enumC23310j07 != null) {
            m5668a = m5668a.m5666c(enumC23310j06, enumC23310j07);
        }
        C23476k m6788I = C23476k.m6788I(c23951v, m6830t, c23463a.f65089c, abstractC23709e2, ((C23679q) abstractC23444c).f65652e.f65546j, c23669m, i, c23286a, m5668a);
        AbstractC23700j<?> m6833q = m6833q(abstractC23632g, c23669m);
        AbstractC23700j<?> abstractC23700j = m6833q;
        if (m6833q == null) {
            abstractC23700j = (AbstractC23700j) m6830t.f65730c;
        }
        AbstractC23488u abstractC23488u = m6788I;
        if (abstractC23700j != null) {
            abstractC23488u = m6788I.mo6683G(abstractC23632g.m6500F(abstractC23700j, m6788I, m6830t));
        }
        return abstractC23488u;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.String[], java.lang.String[][]] */
    /* renamed from: p */
    public C23920j m6834p(Class<?> cls, C23624f c23624f, AbstractC23663i abstractC23663i) {
        if (abstractC23663i == null) {
            AbstractC23426b m6864e = c23624f.m6864e();
            boolean m6859o = c23624f.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_ENUMS);
            Enum<?>[] m5735a = C23920j.m5735a(cls);
            String[] mo6275l = m6864e.mo6275l(cls, m5735a, new String[m5735a.length]);
            ?? r0 = new String[mo6275l.length];
            m6864e.mo6277k(cls, m5735a, r0);
            HashMap hashMap = new HashMap();
            int length = m5735a.length;
            for (int i = 0; i < length; i++) {
                Enum<?> r02 = m5735a[i];
                String str = mo6275l[i];
                String str2 = str;
                if (str == null) {
                    str2 = r02.name();
                }
                hashMap.put(str2, r02);
                Object[] objArr = r0[i];
                if (objArr != 0) {
                    for (Object[] objArr2 : objArr) {
                        if (!hashMap.containsKey(objArr2)) {
                            hashMap.put(objArr2, r02);
                        }
                    }
                }
            }
            return new C23920j(cls, m5735a, hashMap, C23920j.m5734b(m6864e, cls), m6859o);
        }
        if (c23624f.m6867b()) {
            C23914g.m5762e(abstractC23663i.mo6375i(), c23624f.m6859o(EnumC23942p.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        AbstractC23426b m6864e2 = c23624f.m6864e();
        boolean m6859o2 = c23624f.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_ENUMS);
        Enum<?>[] m5735a2 = C23920j.m5735a(cls);
        HashMap hashMap2 = new HashMap();
        int length2 = m5735a2.length;
        while (true) {
            int i2 = length2 - 1;
            if (i2 < 0) {
                return new C23920j(cls, m5735a2, hashMap2, C23920j.m5734b(m6864e2, cls), m6859o2);
            }
            Enum<?> r03 = m5735a2[i2];
            try {
                Object mo6374j = abstractC23663i.mo6374j(r03);
                length2 = i2;
                if (mo6374j != null) {
                    hashMap2.put(mo6374j.toString(), r03);
                    length2 = i2;
                }
            } catch (Exception e) {
                throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r03 + ": " + e.getMessage());
            }
        }
    }

    /* renamed from: q */
    public AbstractC23700j<Object> m6833q(AbstractC23632g abstractC23632g, AbstractC23636b abstractC23636b) throws C23733k {
        Object mo6279j;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        if (m6455y == null || (mo6279j = m6455y.mo6279j(abstractC23636b)) == null) {
            return null;
        }
        return abstractC23632g.mo6464p(abstractC23636b, mo6279j);
    }

    /* renamed from: r */
    public AbstractC23940o m6832r(AbstractC23632g abstractC23632g, AbstractC23636b abstractC23636b) throws C23733k {
        Object mo6263r;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        if (m6455y == null || (mo6263r = m6455y.mo6263r(abstractC23636b)) == null) {
            return null;
        }
        return abstractC23632g.mo6486T(abstractC23636b, mo6263r);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0193  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w m6831s(p193e.p1545k.p1546a.p1556c.AbstractC23632g r9, p193e.p1545k.p1546a.p1556c.AbstractC23444c r10) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23465b.m6831s(e.k.a.c.g, e.k.a.c.c):e.k.a.c.d0.w");
    }

    /* renamed from: t */
    public AbstractC23698i m6830t(AbstractC23632g abstractC23632g, AbstractC23663i abstractC23663i, AbstractC23698i abstractC23698i) throws C23733k {
        AbstractC23709e abstractC23709e;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        if (m6455y == null) {
            return abstractC23698i;
        }
        C23877g c23877g = abstractC23698i;
        if (abstractC23698i.mo5972F()) {
            c23877g = abstractC23698i;
            if (abstractC23698i.mo5970o() != null) {
                AbstractC23940o mo6486T = abstractC23632g.mo6486T(abstractC23663i, m6455y.mo6263r(abstractC23663i));
                c23877g = abstractC23698i;
                if (mo6486T != null) {
                    C23877g mo5965X = ((C23877g) abstractC23698i).mo5965X(mo6486T);
                    AbstractC23698i abstractC23698i2 = mo5965X.f66042j;
                    c23877g = mo5965X;
                }
            }
        }
        AbstractC23698i abstractC23698i3 = c23877g;
        if (c23877g.mo5932r()) {
            AbstractC23700j<Object> mo6464p = abstractC23632g.mo6464p(abstractC23663i, m6455y.mo6292c(abstractC23663i));
            AbstractC23698i abstractC23698i4 = c23877g;
            if (mo6464p != null) {
                abstractC23698i4 = c23877g.mo5943N(mo6464p);
            }
            C23624f c23624f = abstractC23632g.f65501c;
            AbstractC23711g<?> mo6318E = c23624f.m6864e().mo6318E(c23624f, abstractC23663i, abstractC23698i4);
            AbstractC23698i mo5948k = abstractC23698i4.mo5948k();
            AbstractC23709e mo6779b = mo6318E == null ? mo6779b(c23624f, mo5948k) : mo6318E.mo6189b(c23624f, mo5948k, c23624f.f65075d.mo6194c(c23624f, abstractC23663i, mo5948k));
            abstractC23698i3 = abstractC23698i4;
            if (mo6779b != null) {
                abstractC23698i3 = abstractC23698i4.mo5944M(mo6779b);
            }
        }
        C23624f c23624f2 = abstractC23632g.f65501c;
        AbstractC23711g<?> mo6310M = c23624f2.m6864e().mo6310M(c23624f2, abstractC23663i, abstractC23698i3);
        if (mo6310M == null) {
            abstractC23709e = mo6779b(c23624f2, abstractC23698i3);
        } else {
            try {
                abstractC23709e = mo6310M.mo6189b(c23624f2, abstractC23698i3, c23624f2.f65075d.mo6194c(c23624f2, abstractC23663i, abstractC23698i3));
            } catch (IllegalArgumentException | IllegalStateException e) {
                C23616b c23616b = new C23616b((AbstractC23376j) null, C23914g.m5757j(e), abstractC23698i3);
                c23616b.initCause(e);
                throw c23616b;
            }
        }
        AbstractC23698i abstractC23698i5 = abstractC23698i3;
        if (abstractC23709e != null) {
            abstractC23698i5 = abstractC23698i3.mo5941Q(abstractC23709e);
        }
        return m6455y.mo6264q0(abstractC23632g.f65501c, abstractC23663i, abstractC23698i5);
    }
}
