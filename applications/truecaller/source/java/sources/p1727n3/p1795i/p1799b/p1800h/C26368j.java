package p1727n3.p1795i.p1799b.p1800h;

import p1727n3.p1795i.p1799b.C26355d;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
/* renamed from: n3.i.b.h.j */
/* loaded from: classes-dex2jar.jar:n3/i/b/h/j.class */
public class C26368j {

    /* renamed from: a */
    public static boolean[] f73776a = new boolean[3];

    /* renamed from: a */
    public static void m2039a(e eVar, C26355d c26355d, C26363d c26363d) {
        C26363d.EnumC26364a enumC26364a = C26363d.EnumC26364a.MATCH_PARENT;
        c26363d.f73711j = -1;
        c26363d.f73713k = -1;
        C26363d.EnumC26364a enumC26364a2 = eVar.f73683Q[0];
        C26363d.EnumC26364a enumC26364a3 = C26363d.EnumC26364a.WRAP_CONTENT;
        if (enumC26364a2 != enumC26364a3 && c26363d.f73683Q[0] == enumC26364a) {
            int i = c26363d.f73670F.f73647g;
            int m2062w = eVar.m2062w() - c26363d.f73674H.f73647g;
            C26361c c26361c = c26363d.f73670F;
            c26361c.f73649i = c26355d.m2126l(c26361c);
            C26361c c26361c2 = c26363d.f73674H;
            c26361c2.f73649i = c26355d.m2126l(c26361c2);
            c26355d.m2133e(c26363d.f73670F.f73649i, i);
            c26355d.m2133e(c26363d.f73674H.f73649i, m2062w);
            c26363d.f73711j = 2;
            c26363d.f73689W = i;
            int i2 = m2062w - i;
            c26363d.f73685S = i2;
            int i3 = c26363d.f73700d0;
            if (i2 < i3) {
                c26363d.f73685S = i3;
            }
        }
        if (eVar.f73683Q[1] == enumC26364a3 || c26363d.f73683Q[1] != enumC26364a) {
            return;
        }
        int i4 = c26363d.f73672G.f73647g;
        int m2068q = eVar.m2068q() - c26363d.f73675I.f73647g;
        C26361c c26361c3 = c26363d.f73672G;
        c26361c3.f73649i = c26355d.m2126l(c26361c3);
        C26361c c26361c4 = c26363d.f73675I;
        c26361c4.f73649i = c26355d.m2126l(c26361c4);
        c26355d.m2133e(c26363d.f73672G.f73649i, i4);
        c26355d.m2133e(c26363d.f73675I.f73649i, m2068q);
        if (c26363d.f73698c0 > 0 || c26363d.f73712j0 == 8) {
            C26361c c26361c5 = c26363d.f73676J;
            c26361c5.f73649i = c26355d.m2126l(c26361c5);
            c26355d.m2133e(c26363d.f73676J.f73649i, c26363d.f73698c0 + i4);
        }
        c26363d.f73713k = 2;
        c26363d.f73690X = i4;
        int i5 = m2068q - i4;
        c26363d.f73686T = i5;
        int i6 = c26363d.f73702e0;
        if (i5 >= i6) {
            return;
        }
        c26363d.f73686T = i6;
    }

    /* renamed from: b */
    public static final boolean m2038b(int i, int i2) {
        return (i & i2) == i2;
    }
}
