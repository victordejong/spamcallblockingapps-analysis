package p193e.p1545k.p1546a.p1556c.p1567j0.p1568i;

import java.util.Collection;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23295e0;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.C23957y;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23705c;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23710f;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
import p193e.p1545k.p1546a.p1556c.p1567j0.C23702a;
import p193e.p1545k.p1546a.p1556c.p1567j0.C23704b;
/* renamed from: e.k.a.c.j0.i.o */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/j0/i/o.class */
public class C23727o implements AbstractC23711g<C23727o> {

    /* renamed from: a */
    public AbstractC23295e0.EnumC23297b f65752a;

    /* renamed from: b */
    public AbstractC23295e0.EnumC23296a f65753b;

    /* renamed from: c */
    public String f65754c;

    /* renamed from: d */
    public boolean f65755d = false;

    /* renamed from: e */
    public Class<?> f65756e;

    /* renamed from: f */
    public AbstractC23710f f65757f;

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: a */
    public C23727o mo6190a(boolean z) {
        this.f65755d = z;
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0 == p193e.p1545k.p1546a.p1547a.AbstractC23295e0.EnumC23297b.MINIMAL_CLASS) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007e, code lost:
        if (r11.mo5986v() == false) goto L33;
     */
    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23709e mo6189b(p193e.p1545k.p1546a.p1556c.C23624f r10, p193e.p1545k.p1546a.p1556c.AbstractC23698i r11, java.util.Collection<p193e.p1545k.p1546a.p1556c.p1567j0.C23704b> r12) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23727o.mo6189b(e.k.a.c.f, e.k.a.c.i, java.util.Collection):e.k.a.c.j0.e");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: c */
    public C23727o mo6188c(AbstractC23295e0.EnumC23297b enumC23297b, AbstractC23710f abstractC23710f) {
        if (enumC23297b != null) {
            this.f65752a = enumC23297b;
            this.f65757f = abstractC23710f;
            this.f65754c = enumC23297b.f64454a;
            return this;
        }
        throw new IllegalArgumentException("idType cannot be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r4.isEmpty() != false) goto L6;
     */
    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23727o mo6187d(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto Ld
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L15
        Ld:
            r0 = r3
            e.k.a.a.e0$b r0 = r0.f65752a
            java.lang.String r0 = r0.f64454a
            r5 = r0
        L15:
            r0 = r3
            r1 = r5
            r0.f65754c = r1
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1567j0.p1568i.C23727o.mo6187d(java.lang.String):e.k.a.c.j0.g");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: e */
    public C23727o mo6186e(Class cls) {
        this.f65756e = cls;
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: f */
    public AbstractC23712h mo6185f(C23957y c23957y, AbstractC23698i abstractC23698i, Collection<C23704b> collection) {
        if (this.f65752a != AbstractC23295e0.EnumC23297b.NONE && !abstractC23698i.m6239G()) {
            AbstractC23710f m6182i = m6182i(c23957y, abstractC23698i, m6181j(c23957y), collection, true, false);
            if (this.f65752a == AbstractC23295e0.EnumC23297b.DEDUCTION) {
                return new C23716d(m6182i, null, this.f65754c);
            }
            int ordinal = this.f65753b.ordinal();
            if (ordinal == 0) {
                return new C23720h(m6182i, null, this.f65754c);
            }
            if (ordinal == 1) {
                return new C23722j(m6182i, null);
            }
            if (ordinal == 2) {
                return new C23714b(m6182i, null);
            }
            if (ordinal == 3) {
                return new C23718f(m6182i, null, this.f65754c);
            }
            if (ordinal == 4) {
                return new C23716d(m6182i, null, this.f65754c);
            }
            StringBuilder m8728C = C22128a.m8728C("Do not know how to construct standard type serializer for inclusion type: ");
            m8728C.append(this.f65753b);
            throw new IllegalStateException(m8728C.toString());
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: g */
    public C23727o mo6184g(AbstractC23295e0.EnumC23296a enumC23296a) {
        if (enumC23296a != null) {
            this.f65753b = enumC23296a;
            return this;
        }
        throw new IllegalArgumentException("includeAs cannot be null");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23711g
    /* renamed from: h */
    public Class<?> mo6183h() {
        return this.f65756e;
    }

    /* renamed from: i */
    public AbstractC23710f m6182i(AbstractC23458k<?> abstractC23458k, AbstractC23698i abstractC23698i, AbstractC23705c abstractC23705c, Collection<C23704b> collection, boolean z, boolean z2) {
        ConcurrentHashMap concurrentHashMap;
        AbstractC23710f abstractC23710f = this.f65757f;
        if (abstractC23710f != null) {
            return abstractC23710f;
        }
        AbstractC23295e0.EnumC23297b enumC23297b = this.f65752a;
        if (enumC23297b == null) {
            throw new IllegalStateException("Cannot build, 'init()' not yet called");
        }
        int ordinal = enumC23297b.ordinal();
        HashMap hashMap = null;
        if (ordinal == 0) {
            return null;
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                return new C23725m(abstractC23698i, abstractC23458k.f65071b.f65022a, abstractC23705c);
            }
            if (ordinal == 3) {
                if (z == z2) {
                    throw new IllegalArgumentException();
                }
                if (z) {
                    concurrentHashMap = new ConcurrentHashMap();
                } else {
                    hashMap = new HashMap();
                    concurrentHashMap = new ConcurrentHashMap(4);
                }
                boolean m6859o = abstractC23458k.m6859o(EnumC23942p.ACCEPT_CASE_INSENSITIVE_VALUES);
                if (collection != null) {
                    for (C23704b c23704b : collection) {
                        Class<?> cls = c23704b.f65735a;
                        String m6166g = c23704b.m6218a() ? c23704b.f65737c : C23731s.m6166g(cls);
                        if (z) {
                            concurrentHashMap.put(cls.getName(), m6166g);
                        }
                        if (z2) {
                            String str = m6166g;
                            if (m6859o) {
                                str = m6166g.toLowerCase();
                            }
                            AbstractC23698i abstractC23698i2 = (AbstractC23698i) hashMap.get(str);
                            if (abstractC23698i2 == null || !cls.isAssignableFrom(abstractC23698i2.f65728a)) {
                                hashMap.put(str, abstractC23458k.m6865d(cls));
                            }
                        }
                    }
                }
                return new C23731s(abstractC23458k, abstractC23698i, concurrentHashMap, hashMap);
            } else if (ordinal != 4) {
                StringBuilder m8728C = C22128a.m8728C("Do not know how to construct standard type id resolver for idType: ");
                m8728C.append(this.f65752a);
                throw new IllegalStateException(m8728C.toString());
            }
        }
        return new C23723k(abstractC23698i, abstractC23458k.f65071b.f65022a, abstractC23705c);
    }

    /* renamed from: j */
    public AbstractC23705c m6181j(AbstractC23458k<?> abstractC23458k) {
        AbstractC23705c abstractC23705c = abstractC23458k.f65071b.f65028g;
        C23702a c23702a = abstractC23705c;
        if (abstractC23705c == C23724l.f65749a) {
            c23702a = abstractC23705c;
            if (abstractC23458k.m6859o(EnumC23942p.BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES)) {
                c23702a = new C23702a();
            }
        }
        return c23702a;
    }
}
