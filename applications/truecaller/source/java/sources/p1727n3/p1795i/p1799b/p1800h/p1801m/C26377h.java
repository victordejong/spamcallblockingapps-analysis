package p1727n3.p1795i.p1799b.p1800h.p1801m;

import java.util.HashSet;
import java.util.Iterator;
import n3.i.b.h.e;
import p1727n3.p1795i.p1799b.p1800h.C26361c;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1799b.p1800h.C26365g;
import p1727n3.p1795i.p1799b.p1800h.p1801m.C26370b;
/* renamed from: n3.i.b.h.m.h */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/m/h.class */
public class C26377h {

    /* renamed from: a */
    public static C26370b.C26371a f73820a = new C26370b.C26371a();

    /* renamed from: a */
    public static boolean m2022a(C26363d c26363d) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        C26363d.EnumC26364a enumC26364a2 = C26363d.EnumC26364a.WRAP_CONTENT;
        C26363d.EnumC26364a enumC26364a3 = C26363d.EnumC26364a.FIXED;
        C26363d.EnumC26364a m2067r = c26363d.m2067r();
        C26363d.EnumC26364a m2063v = c26363d.m2063v();
        C26363d c26363d2 = c26363d.f73684R;
        C26363d c26363d3 = c26363d2 != null ? (e) c26363d2 : null;
        if (c26363d3 != null) {
            c26363d3.m2067r();
        }
        if (c26363d3 != null) {
            c26363d3.m2063v();
        }
        boolean z = m2067r == enumC26364a3 || m2067r == enumC26364a2 || (m2067r == enumC26364a && c26363d.f73715l == 0 && c26363d.f73687U == 0.0f && c26363d.m2059z(0)) || c26363d.mo2052E();
        boolean z2 = m2063v == enumC26364a3 || m2063v == enumC26364a2 || (m2063v == enumC26364a && c26363d.f73717m == 0 && c26363d.f73687U == 0.0f && c26363d.m2059z(1)) || c26363d.mo2051F();
        if (c26363d.f73687U <= 0.0f || (!z && !z2)) {
            boolean z3 = false;
            if (z) {
                z3 = false;
                if (z2) {
                    z3 = true;
                }
            }
            return z3;
        }
        return true;
    }

    /* renamed from: b */
    public static void m2021b(C26363d c26363d, C26370b.AbstractC26372b abstractC26372b, boolean z) {
        HashSet<C26361c> hashSet;
        C26361c c26361c;
        C26361c c26361c2;
        C26361c c26361c3;
        C26361c c26361c4;
        C26361c c26361c5;
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        if (!(c26363d instanceof e) && c26363d.m2090D() && m2022a(c26363d)) {
            e.d0(c26363d, abstractC26372b, new C26370b.C26371a(), 0);
        }
        C26361c mo2045n = c26363d.mo2045n(C26361c.EnumC26362a.LEFT);
        C26361c mo2045n2 = c26363d.mo2045n(C26361c.EnumC26362a.RIGHT);
        int m2104d = mo2045n.m2104d();
        int m2104d2 = mo2045n2.m2104d();
        HashSet<C26361c> hashSet2 = mo2045n.f73641a;
        if (hashSet2 != null && mo2045n.f73643c) {
            Iterator<C26361c> it = hashSet2.iterator();
            while (it.hasNext()) {
                C26361c next = it.next();
                C26363d c26363d2 = next.f73644d;
                boolean m2022a = m2022a(c26363d2);
                if (c26363d2.m2090D() && m2022a) {
                    e.d0(c26363d2, abstractC26372b, new C26370b.C26371a(), 0);
                }
                if (c26363d2.m2067r() != enumC26364a || m2022a) {
                    if (!c26363d2.m2090D()) {
                        C26361c c26361c6 = c26363d2.f73670F;
                        if (next == c26361c6 && c26363d2.f73674H.f73646f == null) {
                            int m2103e = c26361c6.m2103e() + m2104d;
                            c26363d2.m2086L(m2103e, c26363d2.m2062w() + m2103e);
                            m2021b(c26363d2, abstractC26372b, z);
                        } else {
                            C26361c c26361c7 = c26363d2.f73674H;
                            if (next == c26361c7 && c26361c6.f73646f == null) {
                                int m2103e2 = m2104d - c26361c7.m2103e();
                                c26363d2.m2086L(m2103e2 - c26363d2.m2062w(), m2103e2);
                                m2021b(c26363d2, abstractC26372b, z);
                            } else if (next == c26361c6 && (c26361c3 = c26361c7.f73646f) != null && c26361c3.f73643c && !c26363d2.m2092B()) {
                                m2020c(abstractC26372b, c26363d2, z);
                            }
                        }
                    }
                } else if (c26363d2.m2067r() == enumC26364a && c26363d2.f73723p >= 0 && c26363d2.f73721o >= 0 && (c26363d2.f73712j0 == 8 || (c26363d2.f73715l == 0 && c26363d2.f73687U == 0.0f))) {
                    if (!c26363d2.m2092B() && !c26363d2.f73664C) {
                        C26361c c26361c8 = c26363d2.f73670F;
                        if (((next == c26361c8 && (c26361c5 = c26363d2.f73674H.f73646f) != null && c26361c5.f73643c) || (next == c26363d2.f73674H && (c26361c4 = c26361c8.f73646f) != null && c26361c4.f73643c)) && !c26363d2.m2092B()) {
                            m2019d(c26363d, abstractC26372b, c26363d2, z);
                        }
                    }
                }
            }
        }
        if (!(c26363d instanceof C26365g) && (hashSet = mo2045n2.f73641a) != null && mo2045n2.f73643c) {
            Iterator<C26361c> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C26361c next2 = it2.next();
                C26363d c26363d3 = next2.f73644d;
                boolean m2022a2 = m2022a(c26363d3);
                if (c26363d3.m2090D() && m2022a2) {
                    e.d0(c26363d3, abstractC26372b, new C26370b.C26371a(), 0);
                }
                C26361c c26361c9 = c26363d3.f73670F;
                boolean z2 = (next2 == c26361c9 && (c26361c2 = c26363d3.f73674H.f73646f) != null && c26361c2.f73643c) || (next2 == c26363d3.f73674H && (c26361c = c26361c9.f73646f) != null && c26361c.f73643c);
                if (c26363d3.m2067r() != enumC26364a || m2022a2) {
                    if (!c26363d3.m2090D()) {
                        C26361c c26361c10 = c26363d3.f73670F;
                        if (next2 == c26361c10 && c26363d3.f73674H.f73646f == null) {
                            int m2103e3 = c26361c10.m2103e() + m2104d2;
                            c26363d3.m2086L(m2103e3, c26363d3.m2062w() + m2103e3);
                            m2021b(c26363d3, abstractC26372b, z);
                        } else {
                            C26361c c26361c11 = c26363d3.f73674H;
                            if (next2 == c26361c11 && c26361c10.f73646f == null) {
                                int m2103e4 = m2104d2 - c26361c11.m2103e();
                                c26363d3.m2086L(m2103e4 - c26363d3.m2062w(), m2103e4);
                                m2021b(c26363d3, abstractC26372b, z);
                            } else if (z2 && !c26363d3.m2092B()) {
                                m2020c(abstractC26372b, c26363d3, z);
                            }
                        }
                    }
                } else if (c26363d3.m2067r() == enumC26364a && c26363d3.f73723p >= 0 && c26363d3.f73721o >= 0 && (c26363d3.f73712j0 == 8 || (c26363d3.f73715l == 0 && c26363d3.f73687U == 0.0f))) {
                    if (!c26363d3.m2092B() && !c26363d3.f73664C && z2 && !c26363d3.m2092B()) {
                        m2019d(c26363d, abstractC26372b, c26363d3, z);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m2020c(C26370b.AbstractC26372b abstractC26372b, C26363d c26363d, boolean z) {
        float f = c26363d.f73704f0;
        int m2104d = c26363d.f73670F.f73646f.m2104d();
        int m2104d2 = c26363d.f73674H.f73646f.m2104d();
        int m2103e = c26363d.f73670F.m2103e();
        int m2103e2 = c26363d.f73674H.m2103e();
        if (m2104d == m2104d2) {
            f = 0.5f;
        } else {
            m2104d = m2103e + m2104d;
            m2104d2 -= m2103e2;
        }
        int m2062w = c26363d.m2062w();
        int i = (m2104d2 - m2104d) - m2062w;
        if (m2104d > m2104d2) {
            i = (m2104d - m2104d2) - m2062w;
        }
        int i2 = ((int) ((f * i) + 0.5f)) + m2104d;
        int i3 = i2 + m2062w;
        if (m2104d > m2104d2) {
            i3 = i2 - m2062w;
        }
        c26363d.m2086L(i2, i3);
        m2021b(c26363d, abstractC26372b, z);
    }

    /* renamed from: d */
    public static void m2019d(C26363d c26363d, C26370b.AbstractC26372b abstractC26372b, C26363d c26363d2, boolean z) {
        int i;
        float f = c26363d2.f73704f0;
        int m2103e = c26363d2.f73670F.m2103e() + c26363d2.f73670F.f73646f.m2104d();
        int m2104d = c26363d2.f73674H.f73646f.m2104d() - c26363d2.f73674H.m2103e();
        if (m2104d >= m2103e) {
            int m2062w = c26363d2.m2062w();
            int i2 = m2062w;
            if (c26363d2.f73712j0 != 8) {
                int i3 = c26363d2.f73715l;
                if (i3 == 2) {
                    i = (int) (c26363d2.f73704f0 * 0.5f * (c26363d instanceof e ? c26363d.m2062w() : c26363d.f73684R.m2062w()));
                } else {
                    i = m2062w;
                    if (i3 == 0) {
                        i = m2104d - m2103e;
                    }
                }
                int max = Math.max(c26363d2.f73721o, i);
                int i4 = c26363d2.f73723p;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = m2103e + ((int) ((f * ((m2104d - m2103e) - i2)) + 0.5f));
            c26363d2.m2086L(i5, i2 + i5);
            m2021b(c26363d2, abstractC26372b, z);
        }
    }

    /* renamed from: e */
    public static void m2018e(C26370b.AbstractC26372b abstractC26372b, C26363d c26363d) {
        float f = c26363d.f73706g0;
        int m2104d = c26363d.f73672G.f73646f.m2104d();
        int m2104d2 = c26363d.f73675I.f73646f.m2104d();
        int m2103e = c26363d.f73672G.m2103e();
        int m2103e2 = c26363d.f73675I.m2103e();
        if (m2104d == m2104d2) {
            f = 0.5f;
        } else {
            m2104d = m2103e + m2104d;
            m2104d2 -= m2103e2;
        }
        int m2068q = c26363d.m2068q();
        int i = (m2104d2 - m2104d) - m2068q;
        if (m2104d > m2104d2) {
            i = (m2104d - m2104d2) - m2068q;
        }
        int i2 = (int) ((f * i) + 0.5f);
        int i3 = m2104d + i2;
        int i4 = i3 + m2068q;
        if (m2104d > m2104d2) {
            i3 = m2104d - i2;
            i4 = i3 - m2068q;
        }
        c26363d.m2085M(i3, i4);
        m2016g(c26363d, abstractC26372b);
    }

    /* renamed from: f */
    public static void m2017f(C26363d c26363d, C26370b.AbstractC26372b abstractC26372b, C26363d c26363d2) {
        int i;
        float f = c26363d2.f73706g0;
        int m2103e = c26363d2.f73672G.m2103e() + c26363d2.f73672G.f73646f.m2104d();
        int m2104d = c26363d2.f73675I.f73646f.m2104d() - c26363d2.f73675I.m2103e();
        if (m2104d >= m2103e) {
            int m2068q = c26363d2.m2068q();
            int i2 = m2068q;
            if (c26363d2.f73712j0 != 8) {
                int i3 = c26363d2.f73717m;
                if (i3 == 2) {
                    i = (int) (f * 0.5f * (c26363d instanceof e ? c26363d.m2068q() : c26363d.f73684R.m2068q()));
                } else {
                    i = m2068q;
                    if (i3 == 0) {
                        i = m2104d - m2103e;
                    }
                }
                int max = Math.max(c26363d2.f73727r, i);
                int i4 = c26363d2.f73729s;
                i2 = max;
                if (i4 > 0) {
                    i2 = Math.min(i4, max);
                }
            }
            int i5 = m2103e + ((int) ((f * ((m2104d - m2103e) - i2)) + 0.5f));
            c26363d2.m2085M(i5, i2 + i5);
            m2016g(c26363d2, abstractC26372b);
        }
    }

    /* renamed from: g */
    public static void m2016g(C26363d c26363d, C26370b.AbstractC26372b abstractC26372b) {
        C26361c c26361c;
        C26361c c26361c2;
        C26361c c26361c3;
        C26361c c26361c4;
        C26361c c26361c5;
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_CONSTRAINT;
        if (!(c26363d instanceof e) && c26363d.m2090D() && m2022a(c26363d)) {
            e.d0(c26363d, abstractC26372b, new C26370b.C26371a(), 0);
        }
        C26361c mo2045n = c26363d.mo2045n(C26361c.EnumC26362a.TOP);
        C26361c mo2045n2 = c26363d.mo2045n(C26361c.EnumC26362a.BOTTOM);
        int m2104d = mo2045n.m2104d();
        int m2104d2 = mo2045n2.m2104d();
        HashSet<C26361c> hashSet = mo2045n.f73641a;
        if (hashSet != null && mo2045n.f73643c) {
            Iterator<C26361c> it = hashSet.iterator();
            while (it.hasNext()) {
                C26361c next = it.next();
                C26363d c26363d2 = next.f73644d;
                boolean m2022a = m2022a(c26363d2);
                if (c26363d2.m2090D() && m2022a) {
                    e.d0(c26363d2, abstractC26372b, new C26370b.C26371a(), 0);
                }
                if (c26363d2.m2063v() != enumC26364a || m2022a) {
                    if (!c26363d2.m2090D()) {
                        C26361c c26361c6 = c26363d2.f73672G;
                        if (next == c26361c6 && c26363d2.f73675I.f73646f == null) {
                            int m2103e = c26361c6.m2103e() + m2104d;
                            c26363d2.m2085M(m2103e, c26363d2.m2068q() + m2103e);
                            m2016g(c26363d2, abstractC26372b);
                        } else {
                            C26361c c26361c7 = c26363d2.f73675I;
                            if (next == c26361c7 && c26361c7.f73646f == null) {
                                int m2103e2 = m2104d - c26361c7.m2103e();
                                c26363d2.m2085M(m2103e2 - c26363d2.m2068q(), m2103e2);
                                m2016g(c26363d2, abstractC26372b);
                            } else if (next == c26361c6 && (c26361c3 = c26361c7.f73646f) != null && c26361c3.f73643c) {
                                m2018e(abstractC26372b, c26363d2);
                            }
                        }
                    }
                } else if (c26363d2.m2063v() == enumC26364a && c26363d2.f73729s >= 0 && c26363d2.f73727r >= 0 && (c26363d2.f73712j0 == 8 || (c26363d2.f73717m == 0 && c26363d2.f73687U == 0.0f))) {
                    if (!c26363d2.m2091C() && !c26363d2.f73664C) {
                        C26361c c26361c8 = c26363d2.f73672G;
                        if (((next == c26361c8 && (c26361c5 = c26363d2.f73675I.f73646f) != null && c26361c5.f73643c) || (next == c26363d2.f73675I && (c26361c4 = c26361c8.f73646f) != null && c26361c4.f73643c)) && !c26363d2.m2091C()) {
                            m2017f(c26363d, abstractC26372b, c26363d2);
                        }
                    }
                }
            }
        }
        if (c26363d instanceof C26365g) {
            return;
        }
        HashSet<C26361c> hashSet2 = mo2045n2.f73641a;
        if (hashSet2 != null && mo2045n2.f73643c) {
            Iterator<C26361c> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C26361c next2 = it2.next();
                C26363d c26363d3 = next2.f73644d;
                boolean m2022a2 = m2022a(c26363d3);
                if (c26363d3.m2090D() && m2022a2) {
                    e.d0(c26363d3, abstractC26372b, new C26370b.C26371a(), 0);
                }
                C26361c c26361c9 = c26363d3.f73672G;
                boolean z = (next2 == c26361c9 && (c26361c2 = c26363d3.f73675I.f73646f) != null && c26361c2.f73643c) || (next2 == c26363d3.f73675I && (c26361c = c26361c9.f73646f) != null && c26361c.f73643c);
                if (c26363d3.m2063v() != enumC26364a || m2022a2) {
                    if (!c26363d3.m2090D()) {
                        C26361c c26361c10 = c26363d3.f73672G;
                        if (next2 == c26361c10 && c26363d3.f73675I.f73646f == null) {
                            int m2103e3 = c26361c10.m2103e() + m2104d2;
                            c26363d3.m2085M(m2103e3, c26363d3.m2068q() + m2103e3);
                            m2016g(c26363d3, abstractC26372b);
                        } else {
                            C26361c c26361c11 = c26363d3.f73675I;
                            if (next2 == c26361c11 && c26361c10.f73646f == null) {
                                int m2103e4 = m2104d2 - c26361c11.m2103e();
                                c26363d3.m2085M(m2103e4 - c26363d3.m2068q(), m2103e4);
                                m2016g(c26363d3, abstractC26372b);
                            } else if (z && !c26363d3.m2091C()) {
                                m2018e(abstractC26372b, c26363d3);
                            }
                        }
                    }
                } else if (c26363d3.m2063v() == enumC26364a && c26363d3.f73729s >= 0 && c26363d3.f73727r >= 0 && (c26363d3.f73712j0 == 8 || (c26363d3.f73717m == 0 && c26363d3.f73687U == 0.0f))) {
                    if (!c26363d3.m2091C() && !c26363d3.f73664C && z && !c26363d3.m2091C()) {
                        m2017f(c26363d, abstractC26372b, c26363d3);
                    }
                }
            }
        }
        C26361c mo2045n3 = c26363d.mo2045n(C26361c.EnumC26362a.BASELINE);
        if (mo2045n3.f73641a == null || !mo2045n3.f73643c) {
            return;
        }
        int m2104d3 = mo2045n3.m2104d();
        Iterator<C26361c> it3 = mo2045n3.f73641a.iterator();
        while (it3.hasNext()) {
            C26361c next3 = it3.next();
            C26363d c26363d4 = next3.f73644d;
            boolean m2022a3 = m2022a(c26363d4);
            if (c26363d4.m2090D() && m2022a3) {
                e.d0(c26363d4, abstractC26372b, new C26370b.C26371a(), 0);
            }
            if (c26363d4.m2063v() != enumC26364a || m2022a3) {
                if (!c26363d4.m2090D() && next3 == c26363d4.f73676J) {
                    if (c26363d4.f73660A) {
                        int i = m2104d3 - c26363d4.f73698c0;
                        int i2 = c26363d4.f73686T;
                        c26363d4.f73690X = i;
                        c26363d4.f73672G.m2095m(i);
                        c26363d4.f73675I.m2095m(i2 + i);
                        C26361c c26361c12 = c26363d4.f73676J;
                        c26361c12.f73642b = m2104d3;
                        c26361c12.f73643c = true;
                        c26363d4.f73709i = true;
                    }
                    m2016g(c26363d4, abstractC26372b);
                }
            }
        }
    }
}
