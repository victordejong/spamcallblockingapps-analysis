package p269w;

import java.util.HashSet;
import java.util.Iterator;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4567e;
import p258v.C4568f;
import p269w.C4694b;
/* renamed from: w.h */
/* loaded from: classes-dex2jar.jar:w/h.class */
public class C4702h {

    /* renamed from: a */
    public static C4694b.C4695a f14539a = new C4694b.C4695a();

    /* renamed from: b */
    public static int f14540b;

    /* renamed from: c */
    public static int f14541c;

    /* renamed from: a */
    public static boolean m582a(C4566d c4566d) {
        int m802m = c4566d.m802m();
        int m796t = c4566d.m796t();
        C4566d c4566d2 = c4566d.f14069V;
        C4567e c4567e = c4566d2 != null ? (C4567e) c4566d2 : null;
        if (c4567e != null) {
            c4567e.m802m();
        }
        if (c4567e != null) {
            c4567e.m796t();
        }
        boolean z = m802m == 1 || c4566d.mo776D() || m802m == 2 || (m802m == 3 && c4566d.f14108r == 0 && c4566d.f14072Y == 0.0f && c4566d.m792x(0)) || (m802m == 3 && c4566d.f14108r == 1 && c4566d.m791y(0, c4566d.m795u()));
        boolean z2 = m796t == 1 || c4566d.mo775E() || m796t == 2 || (m796t == 3 && c4566d.f14109s == 0 && c4566d.f14072Y == 0.0f && c4566d.m792x(1)) || (m796t == 3 && c4566d.f14109s == 1 && c4566d.m791y(1, c4566d.m803l()));
        if (c4566d.f14072Y <= 0.0f || (!z && !z2)) {
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
    public static void m581b(int i, C4566d c4566d, C4694b.AbstractC4696b abstractC4696b, boolean z) {
        C4564c c4564c;
        C4564c c4564c2;
        C4564c c4564c3;
        C4564c c4564c4;
        if (c4566d.f14098m) {
            return;
        }
        f14540b++;
        if (!(c4566d instanceof C4567e) && c4566d.m823C() && m582a(c4566d)) {
            C4567e.m780e0(c4566d, abstractC4696b, new C4694b.C4695a(), 0);
        }
        C4564c mo769i = c4566d.mo769i(C4564c.EnumC4565a.LEFT);
        C4564c mo769i2 = c4566d.mo769i(C4564c.EnumC4565a.RIGHT);
        int m833c = mo769i.m833c();
        int m833c2 = mo769i2.m833c();
        HashSet<C4564c> hashSet = mo769i.f14030a;
        if (hashSet != null && mo769i.f14032c) {
            Iterator<C4564c> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C4564c next = it2.next();
                C4566d c4566d2 = next.f14033d;
                int i2 = i + 1;
                boolean m582a = m582a(c4566d2);
                if (c4566d2.m823C() && m582a) {
                    C4567e.m780e0(c4566d2, abstractC4696b, new C4694b.C4695a(), 0);
                }
                C4564c c4564c5 = c4566d2.f14057J;
                boolean z2 = (next == c4564c5 && (c4564c4 = c4566d2.f14059L.f14035f) != null && c4564c4.f14032c) || (next == c4566d2.f14059L && (c4564c3 = c4564c5.f14035f) != null && c4564c3.f14032c);
                if (c4566d2.m802m() != 3 || m582a) {
                    if (!c4566d2.m823C()) {
                        C4564c c4564c6 = c4566d2.f14057J;
                        if (next == c4564c6 && c4566d2.f14059L.f14035f == null) {
                            int m832d = c4564c6.m832d() + m833c;
                            c4566d2.m818L(m832d, c4566d2.m795u() + m832d);
                            m581b(i2, c4566d2, abstractC4696b, z);
                        } else {
                            C4564c c4564c7 = c4566d2.f14059L;
                            if (next == c4564c7 && c4564c6.f14035f == null) {
                                int m832d2 = m833c - c4564c7.m832d();
                                c4566d2.m818L(m832d2 - c4566d2.m795u(), m832d2);
                                m581b(i2, c4566d2, abstractC4696b, z);
                            } else if (z2 && !c4566d2.m825A()) {
                                m580c(i2, abstractC4696b, c4566d2, z);
                            }
                        }
                    }
                } else if (c4566d2.m802m() == 3 && c4566d2.f14112v >= 0 && c4566d2.f14111u >= 0 && (c4566d2.f14091i0 == 8 || (c4566d2.f14108r == 0 && c4566d2.f14072Y == 0.0f))) {
                    if (!c4566d2.m825A() && !c4566d2.f14054G && z2 && !c4566d2.m825A()) {
                        m579d(i2, c4566d, abstractC4696b, c4566d2, z);
                    }
                }
            }
        }
        if (c4566d instanceof C4568f) {
            return;
        }
        HashSet<C4564c> hashSet2 = mo769i2.f14030a;
        if (hashSet2 != null && mo769i2.f14032c) {
            Iterator<C4564c> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                C4564c next2 = it3.next();
                C4566d c4566d3 = next2.f14033d;
                int i3 = i + 1;
                boolean m582a2 = m582a(c4566d3);
                if (c4566d3.m823C() && m582a2) {
                    C4567e.m780e0(c4566d3, abstractC4696b, new C4694b.C4695a(), 0);
                }
                C4564c c4564c8 = c4566d3.f14057J;
                boolean z3 = (next2 == c4564c8 && (c4564c2 = c4566d3.f14059L.f14035f) != null && c4564c2.f14032c) || (next2 == c4566d3.f14059L && (c4564c = c4564c8.f14035f) != null && c4564c.f14032c);
                if (c4566d3.m802m() != 3 || m582a2) {
                    if (!c4566d3.m823C()) {
                        C4564c c4564c9 = c4566d3.f14057J;
                        if (next2 == c4564c9 && c4566d3.f14059L.f14035f == null) {
                            int m832d3 = c4564c9.m832d() + m833c2;
                            c4566d3.m818L(m832d3, c4566d3.m795u() + m832d3);
                            m581b(i3, c4566d3, abstractC4696b, z);
                        } else {
                            C4564c c4564c10 = c4566d3.f14059L;
                            if (next2 == c4564c10 && c4564c9.f14035f == null) {
                                int m832d4 = m833c2 - c4564c10.m832d();
                                c4566d3.m818L(m832d4 - c4566d3.m795u(), m832d4);
                                m581b(i3, c4566d3, abstractC4696b, z);
                            } else if (z3 && !c4566d3.m825A()) {
                                m580c(i3, abstractC4696b, c4566d3, z);
                            }
                        }
                    }
                } else if (c4566d3.m802m() == 3 && c4566d3.f14112v >= 0 && c4566d3.f14111u >= 0 && (c4566d3.f14091i0 == 8 || (c4566d3.f14108r == 0 && c4566d3.f14072Y == 0.0f))) {
                    if (!c4566d3.m825A() && !c4566d3.f14054G && z3 && !c4566d3.m825A()) {
                        m579d(i3, c4566d, abstractC4696b, c4566d3, z);
                    }
                }
            }
        }
        c4566d.f14098m = true;
    }

    /* renamed from: c */
    public static void m580c(int i, C4694b.AbstractC4696b abstractC4696b, C4566d c4566d, boolean z) {
        float f = c4566d.f14085f0;
        int m833c = c4566d.f14057J.f14035f.m833c();
        int m833c2 = c4566d.f14059L.f14035f.m833c();
        int m832d = c4566d.f14057J.m832d();
        int m832d2 = c4566d.f14059L.m832d();
        if (m833c == m833c2) {
            f = 0.5f;
        } else {
            m833c = m832d + m833c;
            m833c2 -= m832d2;
        }
        int m795u = c4566d.m795u();
        int i2 = (m833c2 - m833c) - m795u;
        if (m833c > m833c2) {
            i2 = (m833c - m833c2) - m795u;
        }
        int i3 = ((int) (i2 > 0 ? (f * i2) + 0.5f : f * i2)) + m833c;
        int i4 = i3 + m795u;
        if (m833c > m833c2) {
            i4 = i3 - m795u;
        }
        c4566d.m818L(i3, i4);
        m581b(i + 1, c4566d, abstractC4696b, z);
    }

    /* renamed from: d */
    public static void m579d(int i, C4566d c4566d, C4694b.AbstractC4696b abstractC4696b, C4566d c4566d2, boolean z) {
        int i2;
        float f = c4566d2.f14085f0;
        int m832d = c4566d2.f14057J.m832d() + c4566d2.f14057J.f14035f.m833c();
        int m833c = c4566d2.f14059L.f14035f.m833c() - c4566d2.f14059L.m832d();
        if (m833c >= m832d) {
            int m795u = c4566d2.m795u();
            int i3 = m795u;
            if (c4566d2.f14091i0 != 8) {
                int i4 = c4566d2.f14108r;
                if (i4 == 2) {
                    i2 = (int) (c4566d2.f14085f0 * 0.5f * (c4566d instanceof C4567e ? c4566d.m795u() : c4566d.f14069V.m795u()));
                } else {
                    i2 = m795u;
                    if (i4 == 0) {
                        i2 = m833c - m832d;
                    }
                }
                int max = Math.max(c4566d2.f14111u, i2);
                int i5 = c4566d2.f14112v;
                i3 = max;
                if (i5 > 0) {
                    i3 = Math.min(i5, max);
                }
            }
            int i6 = m832d + ((int) ((f * ((m833c - m832d) - i3)) + 0.5f));
            c4566d2.m818L(i6, i3 + i6);
            m581b(i + 1, c4566d2, abstractC4696b, z);
        }
    }

    /* renamed from: e */
    public static void m578e(int i, C4694b.AbstractC4696b abstractC4696b, C4566d c4566d) {
        float f = c4566d.f14087g0;
        int m833c = c4566d.f14058K.f14035f.m833c();
        int m833c2 = c4566d.f14060M.f14035f.m833c();
        int m832d = c4566d.f14058K.m832d();
        int m832d2 = c4566d.f14060M.m832d();
        if (m833c == m833c2) {
            f = 0.5f;
        } else {
            m833c = m832d + m833c;
            m833c2 -= m832d2;
        }
        int m803l = c4566d.m803l();
        int i2 = (m833c2 - m833c) - m803l;
        if (m833c > m833c2) {
            i2 = (m833c - m833c2) - m803l;
        }
        int i3 = (int) (i2 > 0 ? (f * i2) + 0.5f : f * i2);
        int i4 = m833c + i3;
        int i5 = i4 + m803l;
        if (m833c > m833c2) {
            i4 = m833c - i3;
            i5 = i4 - m803l;
        }
        c4566d.m817M(i4, i5);
        m576g(i + 1, c4566d, abstractC4696b);
    }

    /* renamed from: f */
    public static void m577f(int i, C4566d c4566d, C4694b.AbstractC4696b abstractC4696b, C4566d c4566d2) {
        int i2;
        float f = c4566d2.f14087g0;
        int m832d = c4566d2.f14058K.m832d() + c4566d2.f14058K.f14035f.m833c();
        int m833c = c4566d2.f14060M.f14035f.m833c() - c4566d2.f14060M.m832d();
        if (m833c >= m832d) {
            int m803l = c4566d2.m803l();
            int i3 = m803l;
            if (c4566d2.f14091i0 != 8) {
                int i4 = c4566d2.f14109s;
                if (i4 == 2) {
                    i2 = (int) (f * 0.5f * (c4566d instanceof C4567e ? c4566d.m803l() : c4566d.f14069V.m803l()));
                } else {
                    i2 = m803l;
                    if (i4 == 0) {
                        i2 = m833c - m832d;
                    }
                }
                int max = Math.max(c4566d2.f14114x, i2);
                int i5 = c4566d2.f14115y;
                i3 = max;
                if (i5 > 0) {
                    i3 = Math.min(i5, max);
                }
            }
            int i6 = m832d + ((int) ((f * ((m833c - m832d) - i3)) + 0.5f));
            c4566d2.m817M(i6, i3 + i6);
            m576g(i + 1, c4566d2, abstractC4696b);
        }
    }

    /* renamed from: g */
    public static void m576g(int i, C4566d c4566d, C4694b.AbstractC4696b abstractC4696b) {
        C4564c c4564c;
        C4564c c4564c2;
        C4564c c4564c3;
        C4564c c4564c4;
        if (c4566d.f14100n) {
            return;
        }
        f14541c++;
        if (!(c4566d instanceof C4567e) && c4566d.m823C() && m582a(c4566d)) {
            C4567e.m780e0(c4566d, abstractC4696b, new C4694b.C4695a(), 0);
        }
        C4564c mo769i = c4566d.mo769i(C4564c.EnumC4565a.TOP);
        C4564c mo769i2 = c4566d.mo769i(C4564c.EnumC4565a.BOTTOM);
        int m833c = mo769i.m833c();
        int m833c2 = mo769i2.m833c();
        HashSet<C4564c> hashSet = mo769i.f14030a;
        if (hashSet != null && mo769i.f14032c) {
            Iterator<C4564c> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C4564c next = it2.next();
                C4566d c4566d2 = next.f14033d;
                int i2 = i + 1;
                boolean m582a = m582a(c4566d2);
                if (c4566d2.m823C() && m582a) {
                    C4567e.m780e0(c4566d2, abstractC4696b, new C4694b.C4695a(), 0);
                }
                C4564c c4564c5 = c4566d2.f14058K;
                boolean z = (next == c4564c5 && (c4564c4 = c4566d2.f14060M.f14035f) != null && c4564c4.f14032c) || (next == c4566d2.f14060M && (c4564c3 = c4564c5.f14035f) != null && c4564c3.f14032c);
                if (c4566d2.m796t() != 3 || m582a) {
                    if (!c4566d2.m823C()) {
                        C4564c c4564c6 = c4566d2.f14058K;
                        if (next == c4564c6 && c4566d2.f14060M.f14035f == null) {
                            int m832d = c4564c6.m832d() + m833c;
                            c4566d2.m817M(m832d, c4566d2.m803l() + m832d);
                            m576g(i2, c4566d2, abstractC4696b);
                        } else {
                            C4564c c4564c7 = c4566d2.f14060M;
                            if (next == c4564c7 && c4564c6.f14035f == null) {
                                int m832d2 = m833c - c4564c7.m832d();
                                c4566d2.m817M(m832d2 - c4566d2.m803l(), m832d2);
                                m576g(i2, c4566d2, abstractC4696b);
                            } else if (z && !c4566d2.m824B()) {
                                m578e(i2, abstractC4696b, c4566d2);
                            }
                        }
                    }
                } else if (c4566d2.m796t() == 3 && c4566d2.f14115y >= 0 && c4566d2.f14114x >= 0 && (c4566d2.f14091i0 == 8 || (c4566d2.f14109s == 0 && c4566d2.f14072Y == 0.0f))) {
                    if (!c4566d2.m824B() && !c4566d2.f14054G && z && !c4566d2.m824B()) {
                        m577f(i2, c4566d, abstractC4696b, c4566d2);
                    }
                }
            }
        }
        if (c4566d instanceof C4568f) {
            return;
        }
        HashSet<C4564c> hashSet2 = mo769i2.f14030a;
        if (hashSet2 != null && mo769i2.f14032c) {
            Iterator<C4564c> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                C4564c next2 = it3.next();
                C4566d c4566d3 = next2.f14033d;
                int i3 = i + 1;
                boolean m582a2 = m582a(c4566d3);
                if (c4566d3.m823C() && m582a2) {
                    C4567e.m780e0(c4566d3, abstractC4696b, new C4694b.C4695a(), 0);
                }
                C4564c c4564c8 = c4566d3.f14058K;
                boolean z2 = (next2 == c4564c8 && (c4564c2 = c4566d3.f14060M.f14035f) != null && c4564c2.f14032c) || (next2 == c4566d3.f14060M && (c4564c = c4564c8.f14035f) != null && c4564c.f14032c);
                if (c4566d3.m796t() != 3 || m582a2) {
                    if (!c4566d3.m823C()) {
                        C4564c c4564c9 = c4566d3.f14058K;
                        if (next2 == c4564c9 && c4566d3.f14060M.f14035f == null) {
                            int m832d3 = c4564c9.m832d() + m833c2;
                            c4566d3.m817M(m832d3, c4566d3.m803l() + m832d3);
                            m576g(i3, c4566d3, abstractC4696b);
                        } else {
                            C4564c c4564c10 = c4566d3.f14060M;
                            if (next2 == c4564c10 && c4564c9.f14035f == null) {
                                int m832d4 = m833c2 - c4564c10.m832d();
                                c4566d3.m817M(m832d4 - c4566d3.m803l(), m832d4);
                                m576g(i3, c4566d3, abstractC4696b);
                            } else if (z2 && !c4566d3.m824B()) {
                                m578e(i3, abstractC4696b, c4566d3);
                            }
                        }
                    }
                } else if (c4566d3.m796t() == 3 && c4566d3.f14115y >= 0 && c4566d3.f14114x >= 0 && (c4566d3.f14091i0 == 8 || (c4566d3.f14109s == 0 && c4566d3.f14072Y == 0.0f))) {
                    if (!c4566d3.m824B() && !c4566d3.f14054G && z2 && !c4566d3.m824B()) {
                        m577f(i3, c4566d, abstractC4696b, c4566d3);
                    }
                }
            }
        }
        C4564c mo769i3 = c4566d.mo769i(C4564c.EnumC4565a.BASELINE);
        if (mo769i3.f14030a != null && mo769i3.f14032c) {
            int m833c3 = mo769i3.m833c();
            Iterator<C4564c> it4 = mo769i3.f14030a.iterator();
            while (it4.hasNext()) {
                C4564c next3 = it4.next();
                C4566d c4566d4 = next3.f14033d;
                boolean m582a3 = m582a(c4566d4);
                if (c4566d4.m823C() && m582a3) {
                    C4567e.m780e0(c4566d4, abstractC4696b, new C4694b.C4695a(), 0);
                }
                if (c4566d4.m796t() != 3 || m582a3) {
                    if (!c4566d4.m823C() && next3 == c4566d4.f14061N) {
                        int m832d5 = next3.m832d() + m833c3;
                        if (c4566d4.f14052E) {
                            int i4 = m832d5 - c4566d4.f14079c0;
                            int i5 = c4566d4.f14071X;
                            c4566d4.f14077b0 = i4;
                            c4566d4.f14058K.m826j(i4);
                            c4566d4.f14060M.m826j(i5 + i4);
                            C4564c c4564c11 = c4566d4.f14061N;
                            c4564c11.f14031b = m832d5;
                            c4564c11.f14032c = true;
                            c4566d4.f14096l = true;
                        }
                        m576g(i + 1, c4566d4, abstractC4696b);
                    }
                }
            }
        }
        c4566d.f14100n = true;
    }
}
