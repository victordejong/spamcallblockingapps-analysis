package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23326p;
import p193e.p1545k.p1546a.p1547a.AbstractC23334s;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.AbstractC23940o;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23475j;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23484r;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23491w;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23490v;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23500b0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0;
import p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23535y;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23922l;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/s.class */
public class C23584s extends AbstractC23561i<Map<Object, Object>> implements AbstractC23474i, AbstractC23485s {

    /* renamed from: h */
    public final AbstractC23940o f65413h;

    /* renamed from: i */
    public boolean f65414i;

    /* renamed from: j */
    public final AbstractC23700j<Object> f65415j;

    /* renamed from: k */
    public final AbstractC23709e f65416k;

    /* renamed from: l */
    public final AbstractC23491w f65417l;

    /* renamed from: m */
    public AbstractC23700j<Object> f65418m;

    /* renamed from: n */
    public C23535y f65419n;

    /* renamed from: o */
    public final boolean f65420o;

    /* renamed from: p */
    public Set<String> f65421p;

    /* renamed from: q */
    public Set<String> f65422q;

    /* renamed from: r */
    public C23922l f65423r;

    /* renamed from: e.k.a.c.d0.z.s$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/s$a.class */
    public static class C23585a extends C23502c0.AbstractC23503a {

        /* renamed from: b */
        public final C23586b f65424b;

        /* renamed from: c */
        public final Map<Object, Object> f65425c = new LinkedHashMap();

        /* renamed from: d */
        public final Object f65426d;

        public C23585a(C23586b c23586b, C23490v c23490v, Class<?> cls, Object obj) {
            super(c23490v, cls);
            this.f65424b = c23586b;
            this.f65426d = obj;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.C23502c0.AbstractC23503a
        /* renamed from: a */
        public void mo6544a(Object obj, Object obj2) throws IOException {
            C23586b c23586b = this.f65424b;
            Iterator<C23585a> it = c23586b.f65429c.iterator();
            Map<Object, Object> map = c23586b.f65428b;
            while (true) {
                Map<Object, Object> map2 = map;
                if (it.hasNext()) {
                    C23585a next = it.next();
                    if (obj.equals(next.f65219a.f65183d.f65216b.f64507c)) {
                        it.remove();
                        map2.put(next.f65426d, obj2);
                        map2.putAll(next.f65425c);
                        return;
                    }
                    map = next.f65425c;
                } else {
                    throw new IllegalArgumentException(C22128a.m8547y2("Trying to resolve a forward reference with id [", obj, "] that wasn't previously seen as unresolved."));
                }
            }
        }
    }

    /* renamed from: e.k.a.c.d0.z.s$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/s$b.class */
    public static final class C23586b {

        /* renamed from: a */
        public final Class<?> f65427a;

        /* renamed from: b */
        public Map<Object, Object> f65428b;

        /* renamed from: c */
        public List<C23585a> f65429c = new ArrayList();

        public C23586b(Class<?> cls, Map<Object, Object> map) {
            this.f65427a = cls;
            this.f65428b = map;
        }

        /* renamed from: a */
        public void m6543a(Object obj, Object obj2) {
            if (this.f65429c.isEmpty()) {
                this.f65428b.put(obj, obj2);
            } else {
                ((C23585a) C22128a.m8714F1(this.f65429c, -1)).f65425c.put(obj, obj2);
            }
        }
    }

    public C23584s(C23584s c23584s, AbstractC23940o abstractC23940o, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e, AbstractC23484r abstractC23484r, Set<String> set, Set<String> set2) {
        super(c23584s, abstractC23484r, c23584s.f65364g);
        this.f65413h = abstractC23940o;
        this.f65415j = abstractC23700j;
        this.f65416k = abstractC23709e;
        this.f65417l = c23584s.f65417l;
        this.f65419n = c23584s.f65419n;
        this.f65418m = c23584s.f65418m;
        this.f65420o = c23584s.f65420o;
        this.f65421p = set;
        this.f65422q = set2;
        this.f65423r = C26232y.m2322o(set, set2);
        this.f65414i = m6547o0(this.f65361d, abstractC23940o);
    }

    public C23584s(AbstractC23698i abstractC23698i, AbstractC23491w abstractC23491w, AbstractC23940o abstractC23940o, AbstractC23700j<Object> abstractC23700j, AbstractC23709e abstractC23709e) {
        super(abstractC23698i, (AbstractC23484r) null, (Boolean) null);
        this.f65413h = abstractC23940o;
        this.f65415j = abstractC23700j;
        this.f65416k = abstractC23709e;
        this.f65417l = abstractC23491w;
        this.f65420o = abstractC23491w.mo6607j();
        this.f65418m = null;
        this.f65419n = null;
        this.f65414i = m6547o0(abstractC23698i, abstractC23940o);
        this.f65423r = null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    public AbstractC23700j<?> mo6534a(AbstractC23632g abstractC23632g, AbstractC23462d abstractC23462d) throws C23733k {
        AbstractC23940o abstractC23940o;
        HashSet hashSet;
        HashSet hashSet2;
        AbstractC23940o abstractC23940o2 = this.f65413h;
        if (abstractC23940o2 == null) {
            abstractC23940o = abstractC23632g.m6459u(this.f65361d.mo5970o(), abstractC23462d);
        } else {
            abstractC23940o = abstractC23940o2;
            if (abstractC23940o2 instanceof AbstractC23475j) {
                abstractC23940o = ((AbstractC23475j) abstractC23940o2).m6790a(abstractC23632g, abstractC23462d);
            }
        }
        AbstractC23700j<?> abstractC23700j = this.f65415j;
        AbstractC23700j<?> abstractC23700j2 = abstractC23700j;
        if (abstractC23462d != null) {
            abstractC23700j2 = m6645g0(abstractC23632g, abstractC23462d, abstractC23700j);
        }
        AbstractC23698i mo5948k = this.f65361d.mo5948k();
        AbstractC23700j<Object> m6461s = abstractC23700j2 == null ? abstractC23632g.m6461s(mo5948k, abstractC23462d) : abstractC23632g.m6499G(abstractC23700j2, abstractC23462d, mo5948k);
        AbstractC23709e abstractC23709e = this.f65416k;
        AbstractC23709e abstractC23709e2 = abstractC23709e;
        if (abstractC23709e != null) {
            abstractC23709e2 = abstractC23709e.mo6204f(abstractC23462d);
        }
        Set<String> set = this.f65421p;
        Set<String> set2 = this.f65422q;
        AbstractC23426b m6455y = abstractC23632g.m6455y();
        Set<String> set3 = set;
        if (AbstractC23541b0.m6664M(m6455y, abstractC23462d)) {
            AbstractC23663i mo6108c = abstractC23462d.mo6108c();
            set3 = set;
            if (mo6108c != null) {
                C23624f c23624f = abstractC23632g.f65501c;
                AbstractC23326p.C23327a mo6315H = m6455y.mo6315H(c23624f, mo6108c);
                hashSet2 = set;
                if (mo6315H != null) {
                    Set<String> m7276d = mo6315H.m7276d();
                    hashSet2 = set;
                    if (!m7276d.isEmpty()) {
                        HashSet hashSet3 = set == null ? new HashSet() : new HashSet(set);
                        Iterator<String> it = m7276d.iterator();
                        while (true) {
                            hashSet2 = hashSet3;
                            if (!it.hasNext()) {
                                break;
                            }
                            hashSet3.add(it.next());
                        }
                    }
                }
                AbstractC23334s.C23335a mo6312K = m6455y.mo6312K(c23624f, mo6108c);
                set3 = hashSet2;
                if (mo6312K != null) {
                    Set<String> set4 = mo6312K.f64543a;
                    set3 = hashSet2;
                    if (set4 != null) {
                        HashSet hashSet4 = new HashSet();
                        if (set2 != null) {
                            Iterator<String> it2 = set4.iterator();
                            while (true) {
                                hashSet = hashSet4;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                String next = it2.next();
                                if (set2.contains(next)) {
                                    hashSet4.add(next);
                                }
                            }
                        } else {
                            hashSet = new HashSet(set4);
                        }
                        AbstractC23484r m6646f0 = m6646f0(abstractC23632g, abstractC23462d, m6461s);
                        return (this.f65413h != abstractC23940o && this.f65415j == m6461s && this.f65416k == abstractC23709e2 && this.f65362e == m6646f0 && this.f65421p == hashSet2 && this.f65422q == hashSet) ? this : new C23584s(this, abstractC23940o, m6461s, abstractC23709e2, m6646f0, hashSet2, hashSet);
                    }
                }
            }
        }
        hashSet2 = set3;
        hashSet = set2;
        AbstractC23484r m6646f02 = m6646f0(abstractC23632g, abstractC23462d, m6461s);
        return (this.f65413h != abstractC23940o && this.f65415j == m6461s && this.f65416k == abstractC23709e2 && this.f65362e == m6646f02 && this.f65421p == hashSet2 && this.f65422q == hashSet) ? this : new C23584s(this, abstractC23940o, m6461s, abstractC23709e2, m6646f02, hashSet2, hashSet);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s
    /* renamed from: b */
    public void mo6548b(AbstractC23632g abstractC23632g) throws C23733k {
        if (this.f65417l.mo6606k()) {
            AbstractC23698i mo6619B = this.f65417l.mo6619B(abstractC23632g.f65501c);
            if (mo6619B == null) {
                AbstractC23698i abstractC23698i = this.f65361d;
                abstractC23632g.mo6466m(abstractC23698i, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", abstractC23698i, this.f65417l.getClass().getName()));
                throw null;
            }
            this.f65418m = abstractC23632g.m6461s(mo6619B, null);
        } else if (this.f65417l.mo6608i()) {
            AbstractC23698i mo6593y = this.f65417l.mo6593y(abstractC23632g.f65501c);
            if (mo6593y == null) {
                AbstractC23698i abstractC23698i2 = this.f65361d;
                abstractC23632g.mo6466m(abstractC23698i2, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", abstractC23698i2, this.f65417l.getClass().getName()));
                throw null;
            }
            this.f65418m = abstractC23632g.m6461s(mo6593y, null);
        }
        if (this.f65417l.mo6550g()) {
            this.f65419n = C23535y.m6678b(abstractC23632g, this.f65417l, this.f65417l.mo6552C(abstractC23632g.f65501c), abstractC23632g.m6487S(EnumC23942p.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
        }
        this.f65414i = m6547o0(this.f65361d, this.f65413h);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException, C23379k {
        Map<Object, Object> map;
        String str;
        Object obj;
        Object obj2;
        C23535y c23535y = this.f65419n;
        if (c23535y != null) {
            C23500b0 c23500b0 = new C23500b0(abstractC23376j, abstractC23632g, c23535y.f65300a, null);
            AbstractC23700j<Object> abstractC23700j = this.f65415j;
            AbstractC23709e abstractC23709e = this.f65416k;
            String mo5813b2 = abstractC23376j.mo7144Y1() ? abstractC23376j.mo5813b2() : abstractC23376j.mo7150O1(EnumC23381m.FIELD_NAME) ? abstractC23376j.mo5809k() : null;
            while (true) {
                String str2 = mo5813b2;
                if (str2 == null) {
                    try {
                        map = (Map) c23535y.m6679a(abstractC23632g, c23500b0);
                        break;
                    } catch (Exception e) {
                        m6583n0(abstractC23632g, e, this.f65361d.f65728a, str2);
                        throw null;
                    }
                }
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                C23922l c23922l = this.f65423r;
                if (c23922l == null || !c23922l.m5730a(str2)) {
                    AbstractC23488u abstractC23488u = c23535y.f65302c.get(str2);
                    if (abstractC23488u == null) {
                        Object mo5684a = this.f65413h.mo5684a(str2, abstractC23632g);
                        try {
                            if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                                obj2 = abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                            } else if (!this.f65363f) {
                                obj2 = this.f65362e.mo6233c(abstractC23632g);
                            }
                            c23500b0.f65204h = new AbstractC23495a0.C23497b(c23500b0.f65204h, obj2, mo5684a);
                        } catch (Exception e2) {
                            m6583n0(abstractC23632g, e2, this.f65361d.f65728a, str2);
                            throw null;
                        }
                    } else if (c23500b0.m6733b(abstractC23488u, abstractC23488u.m6762h(abstractC23376j, abstractC23632g))) {
                        abstractC23376j.mo5811i2();
                        try {
                            Map<Object, Object> map2 = (Map) c23535y.m6679a(abstractC23632g, c23500b0);
                            m6546p0(abstractC23376j, abstractC23632g, map2);
                            map = map2;
                            break;
                        } catch (Exception e3) {
                            m6583n0(abstractC23632g, e3, this.f65361d.f65728a, str2);
                            throw null;
                        }
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
                mo5813b2 = abstractC23376j.mo5813b2();
            }
        } else {
            AbstractC23700j<Object> abstractC23700j2 = this.f65418m;
            if (abstractC23700j2 != null) {
                map = (Map) this.f65417l.mo6595w(abstractC23632g, abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g));
            } else if (!this.f65420o) {
                abstractC23632g.m6501E(this.f65361d.f65728a, this.f65417l, abstractC23376j, "no default constructor found", new Object[0]);
                throw null;
            } else {
                int mo7140q = abstractC23376j.mo7140q();
                boolean z = true;
                if (mo7140q != 1 && mo7140q != 2) {
                    if (mo7140q == 3) {
                        map = mo6676A(abstractC23376j, abstractC23632g);
                    } else if (mo7140q != 5) {
                        if (mo7140q != 6) {
                            AbstractC23698i abstractC23698i = this.f65310b;
                            if (abstractC23698i == null) {
                                abstractC23698i = abstractC23632g.m6465o(this.f65309a);
                            }
                            abstractC23632g.m6498H(abstractC23698i, abstractC23376j);
                            throw null;
                        }
                        map = m6674C(abstractC23376j, abstractC23632g);
                    }
                }
                Map<Object, Object> map3 = (Map) this.f65417l.mo6596v(abstractC23632g);
                if (this.f65414i) {
                    AbstractC23700j<Object> abstractC23700j3 = this.f65415j;
                    AbstractC23709e abstractC23709e2 = this.f65416k;
                    if (abstractC23700j3.mo6224l() == null) {
                        z = false;
                    }
                    C23586b c23586b = z ? new C23586b(this.f65361d.mo5948k().f65728a, map3) : null;
                    if (abstractC23376j.mo7144Y1()) {
                        str = abstractC23376j.mo5813b2();
                    } else {
                        EnumC23381m mo7142l = abstractC23376j.mo7142l();
                        if (mo7142l == EnumC23381m.END_OBJECT) {
                            map = map3;
                        } else {
                            EnumC23381m enumC23381m = EnumC23381m.FIELD_NAME;
                            if (mo7142l != enumC23381m) {
                                abstractC23632g.m6474f0(this, enumC23381m, null, new Object[0]);
                                throw null;
                            }
                            str = abstractC23376j.mo5809k();
                        }
                    }
                    while (true) {
                        String str3 = str;
                        map = map3;
                        if (str3 == null) {
                            break;
                        }
                        EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
                        C23922l c23922l2 = this.f65423r;
                        if (c23922l2 == null || !c23922l2.m5730a(str3)) {
                            try {
                                if (mo5811i22 != EnumC23381m.VALUE_NULL) {
                                    obj = abstractC23709e2 == null ? abstractC23700j3.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j3.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e2);
                                } else if (!this.f65363f) {
                                    obj = this.f65362e.mo6233c(abstractC23632g);
                                }
                                if (z) {
                                    c23586b.m6543a(str3, obj);
                                } else {
                                    map3.put(str3, obj);
                                }
                            } catch (C23490v e4) {
                                m6545q0(abstractC23632g, c23586b, str3, e4);
                            } catch (Exception e5) {
                                m6583n0(abstractC23632g, e5, map3, str3);
                                throw null;
                            }
                        } else {
                            abstractC23376j.mo7139w2();
                        }
                        str = abstractC23376j.mo5813b2();
                    }
                } else {
                    m6546p0(abstractC23376j, abstractC23632g, map3);
                    map = map3;
                }
            }
        }
        return map;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        String str;
        String str2;
        Map map = (Map) obj;
        abstractC23376j.mo7169t2(map);
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        if (mo7142l != EnumC23381m.START_OBJECT && mo7142l != EnumC23381m.FIELD_NAME) {
            abstractC23632g.m6496J(this.f65361d.f65728a, abstractC23376j);
            throw null;
        }
        if (!this.f65414i) {
            AbstractC23940o abstractC23940o = this.f65413h;
            AbstractC23700j<Object> abstractC23700j = this.f65415j;
            AbstractC23709e abstractC23709e = this.f65416k;
            if (abstractC23376j.mo7144Y1()) {
                str = abstractC23376j.mo5813b2();
            } else {
                EnumC23381m mo7142l2 = abstractC23376j.mo7142l();
                if (mo7142l2 != EnumC23381m.END_OBJECT) {
                    EnumC23381m enumC23381m = EnumC23381m.FIELD_NAME;
                    if (mo7142l2 != enumC23381m) {
                        abstractC23632g.m6474f0(this, enumC23381m, null, new Object[0]);
                        throw null;
                    }
                    str = abstractC23376j.mo5809k();
                }
            }
            while (true) {
                String str3 = str;
                if (str3 == null) {
                    break;
                }
                Object mo5684a = abstractC23940o.mo5684a(str3, abstractC23632g);
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                C23922l c23922l = this.f65423r;
                if (c23922l == null || !c23922l.m5730a(str3)) {
                    try {
                        if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                            Object obj2 = map.get(mo5684a);
                            Object mo6231e = obj2 != null ? abstractC23709e == null ? abstractC23700j.mo6231e(abstractC23376j, abstractC23632g, obj2) : abstractC23700j.m6229g(abstractC23376j, abstractC23632g, abstractC23709e) : abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                            if (mo6231e != obj2) {
                                map.put(mo5684a, mo6231e);
                            }
                        } else if (!this.f65363f) {
                            map.put(mo5684a, this.f65362e.mo6233c(abstractC23632g));
                        }
                    } catch (Exception e) {
                        m6583n0(abstractC23632g, e, map, str3);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
                str = abstractC23376j.mo5813b2();
            }
        } else {
            AbstractC23700j<Object> abstractC23700j2 = this.f65415j;
            AbstractC23709e abstractC23709e2 = this.f65416k;
            if (abstractC23376j.mo7144Y1()) {
                str2 = abstractC23376j.mo5813b2();
            } else {
                EnumC23381m mo7142l3 = abstractC23376j.mo7142l();
                if (mo7142l3 != EnumC23381m.END_OBJECT) {
                    EnumC23381m enumC23381m2 = EnumC23381m.FIELD_NAME;
                    if (mo7142l3 != enumC23381m2) {
                        abstractC23632g.m6474f0(this, enumC23381m2, null, new Object[0]);
                        throw null;
                    }
                    str2 = abstractC23376j.mo5809k();
                }
            }
            while (true) {
                String str4 = str2;
                if (str4 == null) {
                    break;
                }
                EnumC23381m mo5811i22 = abstractC23376j.mo5811i2();
                C23922l c23922l2 = this.f65423r;
                if (c23922l2 == null || !c23922l2.m5730a(str4)) {
                    try {
                        if (mo5811i22 != EnumC23381m.VALUE_NULL) {
                            Object obj3 = map.get(str4);
                            Object mo6231e2 = obj3 != null ? abstractC23709e2 == null ? abstractC23700j2.mo6231e(abstractC23376j, abstractC23632g, obj3) : abstractC23700j2.m6229g(abstractC23376j, abstractC23632g, abstractC23709e2) : abstractC23709e2 == null ? abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j2.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e2);
                            if (mo6231e2 != obj3) {
                                map.put(str4, mo6231e2);
                            }
                        } else if (!this.f65363f) {
                            map.put(str4, this.f65362e.mo6233c(abstractC23632g));
                        }
                    } catch (Exception e2) {
                        m6583n0(abstractC23632g, e2, map, str4);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
                str2 = abstractC23376j.mo5813b2();
            }
        }
        return map;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        return abstractC23709e.mo6206d(abstractC23376j, abstractC23632g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: i0 */
    public AbstractC23491w mo6533i0() {
        return this.f65417l;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i, p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0
    /* renamed from: j0 */
    public AbstractC23698i mo6532j0() {
        return this.f65361d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23561i
    /* renamed from: m0 */
    public AbstractC23700j<Object> mo6541m0() {
        return this.f65415j;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return this.f65415j == null && this.f65413h == null && this.f65416k == null && this.f65421p == null && this.f65422q == null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Map;
    }

    /* renamed from: o0 */
    public final boolean m6547o0(AbstractC23698i abstractC23698i, AbstractC23940o abstractC23940o) {
        AbstractC23698i mo5970o;
        boolean z = true;
        if (abstractC23940o == null || (mo5970o = abstractC23698i.mo5970o()) == null) {
            return true;
        }
        Class<?> cls = mo5970o.f65728a;
        if ((cls != String.class && cls != Object.class) || !C23914g.m5742y(abstractC23940o)) {
            z = false;
        }
        return z;
    }

    /* renamed from: p0 */
    public final void m6546p0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Map<Object, Object> map) throws IOException {
        String str;
        Object obj;
        AbstractC23940o abstractC23940o = this.f65413h;
        AbstractC23700j<Object> abstractC23700j = this.f65415j;
        AbstractC23709e abstractC23709e = this.f65416k;
        boolean z = abstractC23700j.mo6224l() != null;
        C23586b c23586b = z ? new C23586b(this.f65361d.mo5948k().f65728a, map) : null;
        if (abstractC23376j.mo7144Y1()) {
            str = abstractC23376j.mo5813b2();
        } else {
            EnumC23381m mo7142l = abstractC23376j.mo7142l();
            EnumC23381m enumC23381m = EnumC23381m.FIELD_NAME;
            if (mo7142l != enumC23381m) {
                if (mo7142l == EnumC23381m.END_OBJECT) {
                    return;
                }
                abstractC23632g.m6474f0(this, enumC23381m, null, new Object[0]);
                throw null;
            }
            str = abstractC23376j.mo5809k();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                Object mo5684a = abstractC23940o.mo5684a(str2, abstractC23632g);
                EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                C23922l c23922l = this.f65423r;
                if (c23922l == null || !c23922l.m5730a(str2)) {
                    try {
                        if (mo5811i2 != EnumC23381m.VALUE_NULL) {
                            obj = abstractC23709e == null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23700j.mo6230f(abstractC23376j, abstractC23632g, abstractC23709e);
                        } else if (!this.f65363f) {
                            obj = this.f65362e.mo6233c(abstractC23632g);
                        }
                        if (z) {
                            c23586b.m6543a(mo5684a, obj);
                        } else {
                            map.put(mo5684a, obj);
                        }
                    } catch (C23490v e) {
                        m6545q0(abstractC23632g, c23586b, mo5684a, e);
                    } catch (Exception e2) {
                        m6583n0(abstractC23632g, e2, map, str2);
                        throw null;
                    }
                } else {
                    abstractC23376j.mo7139w2();
                }
                str = abstractC23376j.mo5813b2();
            } else {
                return;
            }
        }
    }

    /* renamed from: q0 */
    public final void m6545q0(AbstractC23632g abstractC23632g, C23586b c23586b, Object obj, C23490v c23490v) throws C23733k {
        if (c23586b != null) {
            C23585a c23585a = new C23585a(c23586b, c23490v, c23586b.f65427a, obj);
            c23586b.f65429c.add(c23585a);
            c23490v.f65183d.m6721a(c23585a);
            return;
        }
        abstractC23632g.m6479a0(this, "Unresolved forward reference but no identity info: " + c23490v, new Object[0]);
        throw null;
    }
}
