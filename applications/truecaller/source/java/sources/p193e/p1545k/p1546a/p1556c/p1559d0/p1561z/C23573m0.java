package p193e.p1545k.p1546a.p1556c.p1559d0.p1561z;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1556c.AbstractC23632g;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.AbstractC23700j;
import p193e.p1545k.p1546a.p1556c.C23624f;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.EnumC23694h;
import p193e.p1545k.p1546a.p1556c.p1557b0.AbstractC23429a;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e;
import p193e.p1545k.p1546a.p1556c.p1573m0.C23887o;
import p193e.p1545k.p1546a.p1556c.p1573m0.EnumC23876f;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23933u;
@AbstractC23429a
/* renamed from: e.k.a.c.d0.z.m0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/m0.class */
public class C23573m0 extends AbstractC23541b0<Object> implements AbstractC23485s, AbstractC23474i {

    /* renamed from: k */
    public static final Object[] f65390k = new Object[0];

    /* renamed from: d */
    public AbstractC23700j<Object> f65391d;

    /* renamed from: e */
    public AbstractC23700j<Object> f65392e;

    /* renamed from: f */
    public AbstractC23700j<Object> f65393f;

    /* renamed from: g */
    public AbstractC23700j<Object> f65394g;

    /* renamed from: h */
    public AbstractC23698i f65395h;

    /* renamed from: i */
    public AbstractC23698i f65396i;

    /* renamed from: j */
    public final boolean f65397j;

    @AbstractC23429a
    /* renamed from: e.k.a.c.d0.z.m0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/z/m0$a.class */
    public static class C23574a extends AbstractC23541b0<Object> {

        /* renamed from: e */
        public static final C23574a f65398e = new C23574a();

        /* renamed from: d */
        public final boolean f65399d;

        public C23574a() {
            super(Object.class);
            this.f65399d = false;
        }

        public C23574a(boolean z) {
            super(Object.class);
            this.f65399d = z;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: d */
        public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
            LinkedHashMap linkedHashMap;
            LinkedHashMap linkedHashMap2;
            ArrayList arrayList;
            int i = 2;
            switch (abstractC23376j.mo7140q()) {
                case 1:
                    if (abstractC23376j.mo5811i2() == EnumC23381m.END_OBJECT) {
                        return new LinkedHashMap(2);
                    }
                    break;
                case 2:
                    return new LinkedHashMap(2);
                case 3:
                    EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
                    EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
                    if (mo5811i2 == enumC23381m) {
                        return abstractC23632g.m6488R(EnumC23694h.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? C23573m0.f65390k : new ArrayList(2);
                    } else if (!abstractC23632g.m6488R(EnumC23694h.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                        Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
                        if (abstractC23376j.mo5811i2() == enumC23381m) {
                            arrayList = new ArrayList(2);
                            arrayList.add(mo6232d);
                        } else {
                            Object mo6232d2 = mo6232d(abstractC23376j, abstractC23632g);
                            if (abstractC23376j.mo5811i2() == enumC23381m) {
                                arrayList = new ArrayList(2);
                                arrayList.add(mo6232d);
                                arrayList.add(mo6232d2);
                            } else {
                                C23933u m6485U = abstractC23632g.m6485U();
                                Object[] m5721g = m6485U.m5721g();
                                m5721g[0] = mo6232d;
                                m5721g[1] = mo6232d2;
                                int i2 = 2;
                                while (true) {
                                    Object mo6232d3 = mo6232d(abstractC23376j, abstractC23632g);
                                    int i3 = i + 1;
                                    int i4 = i2;
                                    Object[] objArr = m5721g;
                                    if (i2 >= m5721g.length) {
                                        objArr = m6485U.m5725c(m5721g);
                                        i4 = 0;
                                    }
                                    i2 = i4 + 1;
                                    objArr[i4] = mo6232d3;
                                    if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                                        arrayList = new ArrayList(i3);
                                        m6485U.m5724d(objArr, i2, arrayList);
                                    } else {
                                        i = i3;
                                        m5721g = objArr;
                                    }
                                }
                            }
                        }
                        return arrayList;
                    } else {
                        C23933u m6485U2 = abstractC23632g.m6485U();
                        Object[] m5721g2 = m6485U2.m5721g();
                        int i5 = 0;
                        while (true) {
                            Object mo6232d4 = mo6232d(abstractC23376j, abstractC23632g);
                            Object[] objArr2 = m5721g2;
                            int i6 = i5;
                            if (i5 >= m5721g2.length) {
                                objArr2 = m6485U2.m5725c(m5721g2);
                                i6 = 0;
                            }
                            i5 = i6 + 1;
                            objArr2[i6] = mo6232d4;
                            if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                                int i7 = m6485U2.f66193c + i5;
                                Object[] objArr3 = new Object[i7];
                                m6485U2.m5727a(objArr3, i7, objArr2, i5);
                                m6485U2.m5726b();
                                return objArr3;
                            }
                            m5721g2 = objArr2;
                        }
                    }
                case 4:
                default:
                    abstractC23632g.m6496J(Object.class, abstractC23376j);
                    throw null;
                case 5:
                    break;
                case 6:
                    return abstractC23376j.mo5817U0();
                case 7:
                    return abstractC23632g.m6491O(AbstractC23541b0.f65308c) ? m6634y(abstractC23376j, abstractC23632g) : abstractC23376j.mo5827F0();
                case 8:
                    return abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? abstractC23376j.mo5808k0() : abstractC23376j.mo5827F0();
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return abstractC23376j.mo5803p0();
            }
            String mo5817U0 = abstractC23376j.mo5817U0();
            abstractC23376j.mo5811i2();
            Object mo6232d5 = mo6232d(abstractC23376j, abstractC23632g);
            String mo5813b2 = abstractC23376j.mo5813b2();
            if (mo5813b2 == null) {
                linkedHashMap = new LinkedHashMap(2);
                linkedHashMap.put(mo5817U0, mo6232d5);
            } else {
                abstractC23376j.mo5811i2();
                Object mo6232d6 = mo6232d(abstractC23376j, abstractC23632g);
                String mo5813b22 = abstractC23376j.mo5813b2();
                if (mo5813b22 == null) {
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap(4);
                    linkedHashMap3.put(mo5817U0, mo6232d5);
                    linkedHashMap2 = linkedHashMap3;
                    if (linkedHashMap3.put(mo5813b2, mo6232d6) != null) {
                        m6559m0(abstractC23376j, abstractC23632g, linkedHashMap3, mo5817U0, mo6232d5, mo6232d6, mo5813b22);
                        linkedHashMap2 = linkedHashMap3;
                    }
                } else {
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                    linkedHashMap4.put(mo5817U0, mo6232d5);
                    if (linkedHashMap4.put(mo5813b2, mo6232d6) != null) {
                        m6559m0(abstractC23376j, abstractC23632g, linkedHashMap4, mo5817U0, mo6232d5, mo6232d6, mo5813b22);
                        linkedHashMap2 = linkedHashMap4;
                    } else {
                        String str = mo5813b22;
                        while (true) {
                            abstractC23376j.mo5811i2();
                            Object mo6232d7 = mo6232d(abstractC23376j, abstractC23632g);
                            Object put = linkedHashMap4.put(str, mo6232d7);
                            if (put != null) {
                                m6559m0(abstractC23376j, abstractC23632g, linkedHashMap4, str, put, mo6232d7, abstractC23376j.mo5813b2());
                                linkedHashMap2 = linkedHashMap4;
                            } else {
                                String mo5813b23 = abstractC23376j.mo5813b2();
                                str = mo5813b23;
                                if (mo5813b23 == null) {
                                    linkedHashMap2 = linkedHashMap4;
                                }
                            }
                        }
                    }
                }
                linkedHashMap = linkedHashMap2;
            }
            return linkedHashMap;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
            if (r0 != 5) goto L45;
         */
        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo6231e(p193e.p1545k.p1546a.p1548b.AbstractC23376j r6, p193e.p1545k.p1546a.p1556c.AbstractC23632g r7, java.lang.Object r8) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 220
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23573m0.C23574a.mo6231e(e.k.a.b.j, e.k.a.c.g, java.lang.Object):java.lang.Object");
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: f */
        public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
            int mo7140q = abstractC23376j.mo7140q();
            if (mo7140q != 1 && mo7140q != 3) {
                switch (mo7140q) {
                    case 5:
                        break;
                    case 6:
                        return abstractC23376j.mo5817U0();
                    case 7:
                        return abstractC23632g.m6488R(EnumC23694h.USE_BIG_INTEGER_FOR_INTS) ? abstractC23376j.mo5828E() : abstractC23376j.mo5827F0();
                    case 8:
                        return abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? abstractC23376j.mo5808k0() : abstractC23376j.mo5827F0();
                    case 9:
                        return Boolean.TRUE;
                    case 10:
                        return Boolean.FALSE;
                    case 11:
                        return null;
                    case 12:
                        return abstractC23376j.mo5803p0();
                    default:
                        abstractC23632g.m6496J(Object.class, abstractC23376j);
                        throw null;
                }
            }
            return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
        }

        /* renamed from: m0 */
        public Object m6559m0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Map<String, Object> map, String str, Object obj, Object obj2, String str2) throws IOException {
            boolean m6489Q = abstractC23632g.m6489Q(EnumC23385q.DUPLICATE_PROPERTIES);
            String str3 = str2;
            if (m6489Q) {
                m6558n0(map, str, obj, obj2);
                str3 = str2;
            }
            while (str3 != null) {
                abstractC23376j.mo5811i2();
                Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
                Object put = map.put(str3, mo6232d);
                if (put != null && m6489Q) {
                    m6558n0(map, str3, put, mo6232d);
                }
                str3 = abstractC23376j.mo5813b2();
            }
            return map;
        }

        /* renamed from: n0 */
        public final void m6558n0(Map<String, Object> map, String str, Object obj, Object obj2) {
            if (obj instanceof List) {
                ((List) obj).add(obj2);
                map.put(str, obj);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(obj);
            arrayList.add(obj2);
            map.put(str, arrayList);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: o */
        public EnumC23876f mo6221o() {
            return EnumC23876f.Untyped;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
        /* renamed from: p */
        public Boolean mo6220p(C23624f c23624f) {
            return this.f65399d ? Boolean.FALSE : null;
        }
    }

    @Deprecated
    public C23573m0() {
        super(Object.class);
        this.f65395h = null;
        this.f65396i = null;
        this.f65397j = false;
    }

    public C23573m0(C23573m0 c23573m0, boolean z) {
        super(Object.class);
        this.f65391d = c23573m0.f65391d;
        this.f65392e = c23573m0.f65392e;
        this.f65393f = c23573m0.f65393f;
        this.f65394g = c23573m0.f65394g;
        this.f65395h = c23573m0.f65395h;
        this.f65396i = c23573m0.f65396i;
        this.f65397j = z;
    }

    public C23573m0(AbstractC23698i abstractC23698i, AbstractC23698i abstractC23698i2) {
        super(Object.class);
        this.f65395h = abstractC23698i;
        this.f65396i = abstractC23698i2;
        this.f65397j = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23474i
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.AbstractC23700j<?> mo6534a(p193e.p1545k.p1546a.p1556c.AbstractC23632g r6, p193e.p1545k.p1546a.p1556c.AbstractC23462d r7) throws p193e.p1545k.p1546a.p1556c.C23733k {
        /*
            r5 = this;
            r0 = r7
            if (r0 != 0) goto L2c
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r7 = r0
            r0 = r6
            e.k.a.c.f r0 = r0.f65501c
            r6 = r0
            r0 = r6
            e.k.a.c.c0.g r0 = r0.f65080i
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            e.k.a.c.c0.f r0 = r0.m6871a(r1)
            r0 = r6
            e.k.a.c.c0.g r0 = r0.f65080i
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r7
            r1 = 0
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L2c
            r0 = 1
            r8 = r0
            goto L2e
        L2c:
            r0 = 0
            r8 = r0
        L2e:
            r0 = r5
            e.k.a.c.j<java.lang.Object> r0 = r0.f65393f
            if (r0 != 0) goto L67
            r0 = r5
            e.k.a.c.j<java.lang.Object> r0 = r0.f65394g
            if (r0 != 0) goto L67
            r0 = r5
            e.k.a.c.j<java.lang.Object> r0 = r0.f65391d
            if (r0 != 0) goto L67
            r0 = r5
            e.k.a.c.j<java.lang.Object> r0 = r0.f65392e
            if (r0 != 0) goto L67
            java.lang.Class<e.k.a.c.d0.z.m0> r0 = p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23573m0.class
            java.lang.Class<e.k.a.c.d0.z.m0> r1 = p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23573m0.class
            if (r0 != r1) goto L67
            r0 = r8
            if (r0 == 0) goto L61
            e.k.a.c.d0.z.m0$a r0 = new e.k.a.c.d0.z.m0$a
            r1 = r0
            r2 = 1
            r1.<init>(r2)
            r6 = r0
            goto L65
        L61:
            e.k.a.c.d0.z.m0$a r0 = p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23573m0.C23574a.f65398e
            r6 = r0
        L65:
            r0 = r6
            return r0
        L67:
            r0 = r8
            r1 = r5
            boolean r1 = r1.f65397j
            if (r0 == r1) goto L79
            e.k.a.c.d0.z.m0 r0 = new e.k.a.c.d0.z.m0
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        L79:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.C23573m0.mo6534a(e.k.a.c.g, e.k.a.c.d):e.k.a.c.j");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23485s
    /* renamed from: b */
    public void mo6548b(AbstractC23632g abstractC23632g) throws C23733k {
        AbstractC23698i m6465o = abstractC23632g.m6465o(Object.class);
        AbstractC23698i m6465o2 = abstractC23632g.m6465o(String.class);
        C23887o mo6470i = abstractC23632g.mo6470i();
        AbstractC23698i abstractC23698i = this.f65395h;
        if (abstractC23698i == null) {
            this.f65392e = m6566m0(abstractC23632g.f65499a.m6781f(abstractC23632g, abstractC23632g.f65500b, mo6470i.m5909g(List.class, m6465o)));
        } else {
            this.f65392e = m6565n0(abstractC23632g, abstractC23698i);
        }
        AbstractC23698i abstractC23698i2 = this.f65396i;
        if (abstractC23698i2 == null) {
            this.f65391d = m6566m0(abstractC23632g.f65499a.m6781f(abstractC23632g, abstractC23632g.f65500b, mo6470i.m5906j(Map.class, m6465o2, m6465o)));
        } else {
            this.f65391d = m6565n0(abstractC23632g, abstractC23698i2);
        }
        this.f65393f = m6566m0(m6565n0(abstractC23632g, m6465o2));
        this.f65394g = m6566m0(m6565n0(abstractC23632g, mo6470i.m5914b(null, Number.class, C23887o.f66073e)));
        AbstractC23698i m5900p = C23887o.m5900p();
        this.f65391d = abstractC23632g.m6499G(this.f65391d, null, m5900p);
        this.f65392e = abstractC23632g.m6499G(this.f65392e, null, m5900p);
        this.f65393f = abstractC23632g.m6499G(this.f65393f, null, m5900p);
        this.f65394g = abstractC23632g.m6499G(this.f65394g, null, m5900p);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: d */
    public Object mo6232d(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        switch (abstractC23376j.mo7140q()) {
            case 1:
            case 2:
            case 5:
                AbstractC23700j<Object> abstractC23700j = this.f65391d;
                return abstractC23700j != null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : m6560s0(abstractC23376j, abstractC23632g);
            case 3:
                if (abstractC23632g.m6488R(EnumC23694h.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
                    return m6561r0(abstractC23376j, abstractC23632g);
                }
                AbstractC23700j<Object> abstractC23700j2 = this.f65392e;
                return abstractC23700j2 != null ? abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g) : m6562q0(abstractC23376j, abstractC23632g);
            case 4:
            default:
                abstractC23632g.m6496J(Object.class, abstractC23376j);
                throw null;
            case 6:
                AbstractC23700j<Object> abstractC23700j3 = this.f65393f;
                return abstractC23700j3 != null ? abstractC23700j3.mo6232d(abstractC23376j, abstractC23632g) : abstractC23376j.mo5817U0();
            case 7:
                AbstractC23700j<Object> abstractC23700j4 = this.f65394g;
                return abstractC23700j4 != null ? abstractC23700j4.mo6232d(abstractC23376j, abstractC23632g) : abstractC23632g.m6491O(AbstractC23541b0.f65308c) ? m6634y(abstractC23376j, abstractC23632g) : abstractC23376j.mo5827F0();
            case 8:
                AbstractC23700j<Object> abstractC23700j5 = this.f65394g;
                return abstractC23700j5 != null ? abstractC23700j5.mo6232d(abstractC23376j, abstractC23632g) : abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? abstractC23376j.mo5808k0() : abstractC23376j.mo5827F0();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return abstractC23376j.mo5803p0();
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: e */
    public Object mo6231e(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Object obj) throws IOException {
        String mo5813b2;
        if (this.f65397j) {
            return mo6232d(abstractC23376j, abstractC23632g);
        }
        switch (abstractC23376j.mo7140q()) {
            case 1:
            case 2:
            case 5:
                AbstractC23700j<Object> abstractC23700j = this.f65391d;
                if (abstractC23700j != null) {
                    return abstractC23700j.mo6231e(abstractC23376j, abstractC23632g, obj);
                }
                if (!(obj instanceof Map)) {
                    return m6560s0(abstractC23376j, abstractC23632g);
                }
                Map map = (Map) obj;
                EnumC23381m mo7142l = abstractC23376j.mo7142l();
                EnumC23381m enumC23381m = mo7142l;
                if (mo7142l == EnumC23381m.START_OBJECT) {
                    enumC23381m = abstractC23376j.mo5811i2();
                }
                if (enumC23381m == EnumC23381m.END_OBJECT) {
                    return map;
                }
                String mo5809k = abstractC23376j.mo5809k();
                do {
                    abstractC23376j.mo5811i2();
                    Object obj2 = map.get(mo5809k);
                    Object mo6231e = obj2 != null ? mo6231e(abstractC23376j, abstractC23632g, obj2) : mo6232d(abstractC23376j, abstractC23632g);
                    if (mo6231e != obj2) {
                        map.put(mo5809k, mo6231e);
                    }
                    mo5813b2 = abstractC23376j.mo5813b2();
                    mo5809k = mo5813b2;
                } while (mo5813b2 != null);
                return map;
            case 3:
                AbstractC23700j<Object> abstractC23700j2 = this.f65392e;
                if (abstractC23700j2 != null) {
                    return abstractC23700j2.mo6231e(abstractC23376j, abstractC23632g, obj);
                }
                if (!(obj instanceof Collection)) {
                    return abstractC23632g.m6488R(EnumC23694h.USE_JAVA_ARRAY_FOR_JSON_ARRAY) ? m6561r0(abstractC23376j, abstractC23632g) : m6562q0(abstractC23376j, abstractC23632g);
                }
                Collection collection = (Collection) obj;
                while (abstractC23376j.mo5811i2() != EnumC23381m.END_ARRAY) {
                    collection.add(mo6232d(abstractC23376j, abstractC23632g));
                }
                return collection;
            case 4:
            default:
                return mo6232d(abstractC23376j, abstractC23632g);
            case 6:
                AbstractC23700j<Object> abstractC23700j3 = this.f65393f;
                return abstractC23700j3 != null ? abstractC23700j3.mo6231e(abstractC23376j, abstractC23632g, obj) : abstractC23376j.mo5817U0();
            case 7:
                AbstractC23700j<Object> abstractC23700j4 = this.f65394g;
                return abstractC23700j4 != null ? abstractC23700j4.mo6231e(abstractC23376j, abstractC23632g, obj) : abstractC23632g.m6491O(AbstractC23541b0.f65308c) ? m6634y(abstractC23376j, abstractC23632g) : abstractC23376j.mo5827F0();
            case 8:
                AbstractC23700j<Object> abstractC23700j5 = this.f65394g;
                return abstractC23700j5 != null ? abstractC23700j5.mo6231e(abstractC23376j, abstractC23632g, obj) : abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? abstractC23376j.mo5808k0() : abstractC23376j.mo5827F0();
            case 9:
                return Boolean.TRUE;
            case 10:
                return Boolean.FALSE;
            case 11:
                return null;
            case 12:
                return abstractC23376j.mo5803p0();
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1561z.AbstractC23541b0, p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: f */
    public Object mo6230f(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, AbstractC23709e abstractC23709e) throws IOException {
        int mo7140q = abstractC23376j.mo7140q();
        if (mo7140q != 1 && mo7140q != 3) {
            switch (mo7140q) {
                case 5:
                    break;
                case 6:
                    AbstractC23700j<Object> abstractC23700j = this.f65393f;
                    return abstractC23700j != null ? abstractC23700j.mo6232d(abstractC23376j, abstractC23632g) : abstractC23376j.mo5817U0();
                case 7:
                    AbstractC23700j<Object> abstractC23700j2 = this.f65394g;
                    return abstractC23700j2 != null ? abstractC23700j2.mo6232d(abstractC23376j, abstractC23632g) : abstractC23632g.m6491O(AbstractC23541b0.f65308c) ? m6634y(abstractC23376j, abstractC23632g) : abstractC23376j.mo5827F0();
                case 8:
                    AbstractC23700j<Object> abstractC23700j3 = this.f65394g;
                    return abstractC23700j3 != null ? abstractC23700j3.mo6232d(abstractC23376j, abstractC23632g) : abstractC23632g.m6488R(EnumC23694h.USE_BIG_DECIMAL_FOR_FLOATS) ? abstractC23376j.mo5808k0() : abstractC23376j.mo5827F0();
                case 9:
                    return Boolean.TRUE;
                case 10:
                    return Boolean.FALSE;
                case 11:
                    return null;
                case 12:
                    return abstractC23376j.mo5803p0();
                default:
                    abstractC23632g.m6496J(Object.class, abstractC23376j);
                    throw null;
            }
        }
        return abstractC23709e.mo6208b(abstractC23376j, abstractC23632g);
    }

    /* renamed from: m0 */
    public AbstractC23700j<Object> m6566m0(AbstractC23700j<Object> abstractC23700j) {
        AbstractC23700j<Object> abstractC23700j2 = abstractC23700j;
        if (C23914g.m5742y(abstractC23700j)) {
            abstractC23700j2 = null;
        }
        return abstractC23700j2;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: n */
    public boolean mo6222n() {
        return true;
    }

    /* renamed from: n0 */
    public AbstractC23700j<Object> m6565n0(AbstractC23632g abstractC23632g, AbstractC23698i abstractC23698i) throws C23733k {
        return abstractC23632g.f65499a.m6781f(abstractC23632g, abstractC23632g.f65500b, abstractC23698i);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: o */
    public EnumC23876f mo6221o() {
        return EnumC23876f.Untyped;
    }

    /* renamed from: o0 */
    public Object m6564o0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g, Map<String, Object> map, String str, Object obj, Object obj2, String str2) throws IOException {
        boolean m6489Q = abstractC23632g.m6489Q(EnumC23385q.DUPLICATE_PROPERTIES);
        String str3 = str2;
        if (m6489Q) {
            m6563p0(map, str, obj, obj2);
            str3 = str2;
        }
        while (str3 != null) {
            abstractC23376j.mo5811i2();
            Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
            Object put = map.put(str3, mo6232d);
            if (put != null && m6489Q) {
                m6563p0(map, str, put, mo6232d);
            }
            str3 = abstractC23376j.mo5813b2();
        }
        return map;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23700j
    /* renamed from: p */
    public Boolean mo6220p(C23624f c23624f) {
        return null;
    }

    /* renamed from: p0 */
    public final void m6563p0(Map<String, Object> map, String str, Object obj, Object obj2) {
        if (obj instanceof List) {
            ((List) obj).add(obj2);
            map.put(str, obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        arrayList.add(obj2);
        map.put(str, arrayList);
    }

    /* renamed from: q0 */
    public Object m6562q0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        EnumC23381m mo5811i2 = abstractC23376j.mo5811i2();
        EnumC23381m enumC23381m = EnumC23381m.END_ARRAY;
        int i = 2;
        if (mo5811i2 == enumC23381m) {
            return new ArrayList(2);
        }
        Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
        if (abstractC23376j.mo5811i2() == enumC23381m) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(mo6232d);
            return arrayList;
        }
        Object mo6232d2 = mo6232d(abstractC23376j, abstractC23632g);
        if (abstractC23376j.mo5811i2() == enumC23381m) {
            ArrayList arrayList2 = new ArrayList(2);
            arrayList2.add(mo6232d);
            arrayList2.add(mo6232d2);
            return arrayList2;
        }
        C23933u m6485U = abstractC23632g.m6485U();
        Object[] m5721g = m6485U.m5721g();
        m5721g[0] = mo6232d;
        m5721g[1] = mo6232d2;
        int i2 = 2;
        while (true) {
            Object mo6232d3 = mo6232d(abstractC23376j, abstractC23632g);
            int i3 = i + 1;
            int i4 = i2;
            Object[] objArr = m5721g;
            if (i2 >= m5721g.length) {
                objArr = m6485U.m5725c(m5721g);
                i4 = 0;
            }
            i2 = i4 + 1;
            objArr[i4] = mo6232d3;
            if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                ArrayList arrayList3 = new ArrayList(i3);
                m6485U.m5724d(objArr, i2, arrayList3);
                return arrayList3;
            }
            i = i3;
            m5721g = objArr;
        }
    }

    /* renamed from: r0 */
    public Object[] m6561r0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
            return f65390k;
        }
        C23933u m6485U = abstractC23632g.m6485U();
        Object[] m5721g = m6485U.m5721g();
        int i = 0;
        while (true) {
            Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
            Object[] objArr = m5721g;
            int i2 = i;
            if (i >= m5721g.length) {
                objArr = m6485U.m5725c(m5721g);
                i2 = 0;
            }
            i = i2 + 1;
            objArr[i2] = mo6232d;
            if (abstractC23376j.mo5811i2() == EnumC23381m.END_ARRAY) {
                int i3 = m6485U.f66193c + i;
                Object[] objArr2 = new Object[i3];
                m6485U.m5727a(objArr2, i3, objArr, i);
                m6485U.m5726b();
                return objArr2;
            }
            m5721g = objArr;
        }
    }

    /* renamed from: s0 */
    public Object m6560s0(AbstractC23376j abstractC23376j, AbstractC23632g abstractC23632g) throws IOException {
        String mo5813b2;
        EnumC23381m mo7142l = abstractC23376j.mo7142l();
        String str = null;
        if (mo7142l == EnumC23381m.START_OBJECT) {
            str = abstractC23376j.mo5813b2();
        } else if (mo7142l == EnumC23381m.FIELD_NAME) {
            str = abstractC23376j.mo5809k();
        } else if (mo7142l != EnumC23381m.END_OBJECT) {
            abstractC23632g.m6496J(this.f65309a, abstractC23376j);
            throw null;
        }
        if (str == null) {
            return new LinkedHashMap(2);
        }
        abstractC23376j.mo5811i2();
        Object mo6232d = mo6232d(abstractC23376j, abstractC23632g);
        String mo5813b22 = abstractC23376j.mo5813b2();
        if (mo5813b22 == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(2);
            linkedHashMap.put(str, mo6232d);
            return linkedHashMap;
        }
        abstractC23376j.mo5811i2();
        Object mo6232d2 = mo6232d(abstractC23376j, abstractC23632g);
        String mo5813b23 = abstractC23376j.mo5813b2();
        if (mo5813b23 == null) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(4);
            linkedHashMap2.put(str, mo6232d);
            if (linkedHashMap2.put(mo5813b22, mo6232d2) != null) {
                m6564o0(abstractC23376j, abstractC23632g, linkedHashMap2, str, mo6232d, mo6232d2, mo5813b23);
            }
            return linkedHashMap2;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put(str, mo6232d);
        if (linkedHashMap3.put(mo5813b22, mo6232d2) != null) {
            m6564o0(abstractC23376j, abstractC23632g, linkedHashMap3, str, mo6232d, mo6232d2, mo5813b23);
            return linkedHashMap3;
        }
        String str2 = mo5813b23;
        do {
            abstractC23376j.mo5811i2();
            Object mo6232d3 = mo6232d(abstractC23376j, abstractC23632g);
            Object put = linkedHashMap3.put(str2, mo6232d3);
            if (put != null) {
                m6564o0(abstractC23376j, abstractC23632g, linkedHashMap3, str2, put, mo6232d3, abstractC23376j.mo5813b2());
                return linkedHashMap3;
            }
            mo5813b2 = abstractC23376j.mo5813b2();
            str2 = mo5813b2;
        } while (mo5813b2 != null);
        return linkedHashMap3;
    }
}
