package androidx.constraintlayout.p026a.p027a.p028a;

import androidx.constraintlayout.p026a.p027a.C0511a;
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.p026a.p027a.C0544f;
import androidx.constraintlayout.p026a.p027a.C0547h;
import androidx.constraintlayout.p026a.p027a.p028a.C0513b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: androidx.constraintlayout.a.a.a.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/h.class */
public final class C0522h {

    /* renamed from: a */
    private static C0513b.C0514a f1964a = new C0513b.C0514a();

    /* renamed from: a */
    private static void m45351a(C0513b.AbstractC0515b abstractC0515b, C0541e c0541e) {
        float f = c0541e.f2089ai;
        int m45303c = c0541e.f2050I.f2036f.m45303c();
        int m45303c2 = c0541e.f2052K.f2036f.m45303c();
        int m45301e = c0541e.f2050I.m45301e();
        int m45301e2 = c0541e.f2052K.m45301e();
        if (m45303c == m45303c2) {
            f = 0.5f;
        } else {
            m45303c = m45301e + m45303c;
            m45303c2 -= m45301e2;
        }
        int m45255p = c0541e.m45255p();
        int i = (m45303c2 - m45303c) - m45255p;
        if (m45303c > m45303c2) {
            i = (m45303c - m45303c2) - m45255p;
        }
        int i2 = (int) ((f * i) + 0.5f);
        int i3 = m45303c + i2;
        int i4 = i3 + m45255p;
        if (m45303c > m45303c2) {
            i3 = m45303c - i2;
            i4 = i3 - m45255p;
        }
        c0541e.m45283b(i3, i4);
        m45347a(c0541e, abstractC0515b);
    }

    /* renamed from: a */
    private static void m45350a(C0513b.AbstractC0515b abstractC0515b, C0541e c0541e, boolean z) {
        float f = c0541e.f2088ah;
        int m45303c = c0541e.f2049H.f2036f.m45303c();
        int m45303c2 = c0541e.f2051J.f2036f.m45303c();
        int m45301e = c0541e.f2049H.m45301e();
        int m45301e2 = c0541e.f2051J.m45301e();
        if (m45303c == m45303c2) {
            f = 0.5f;
        } else {
            m45303c = m45301e + m45303c;
            m45303c2 -= m45301e2;
        }
        int m45257o = c0541e.m45257o();
        int i = (m45303c2 - m45303c) - m45257o;
        if (m45303c > m45303c2) {
            i = (m45303c - m45303c2) - m45257o;
        }
        int i2 = ((int) ((f * i) + 0.5f)) + m45303c;
        int i3 = i2 + m45257o;
        if (m45303c > m45303c2) {
            i3 = i2 - m45257o;
        }
        c0541e.m45296a(i2, i3);
        m45344a(c0541e, abstractC0515b, z);
    }

    /* renamed from: a */
    private static void m45349a(C0511a c0511a, C0513b.AbstractC0515b abstractC0515b, int i, boolean z) {
        if (c0511a.m45369f()) {
            if (i == 0) {
                m45344a(c0511a, abstractC0515b, z);
            } else {
                m45347a(c0511a, abstractC0515b);
            }
        }
    }

    /* renamed from: a */
    private static void m45347a(C0541e c0541e, C0513b.AbstractC0515b abstractC0515b) {
        if (!(c0541e instanceof C0544f) && c0541e.m45266j() && m45348a(c0541e)) {
            C0544f.m45239a(c0541e, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
        }
        C0538d mo45193a = c0541e.mo45193a(C0538d.EnumC0540a.TOP);
        C0538d mo45193a2 = c0541e.mo45193a(C0538d.EnumC0540a.BOTTOM);
        int m45303c = mo45193a.m45303c();
        int m45303c2 = mo45193a2.m45303c();
        if (mo45193a.f2031a != null && mo45193a.f2033c) {
            Iterator<C0538d> it2 = mo45193a.f2031a.iterator();
            while (it2.hasNext()) {
                C0538d next = it2.next();
                C0541e c0541e2 = next.f2034d;
                boolean m45348a = m45348a(c0541e2);
                if (c0541e2.m45266j() && m45348a) {
                    C0544f.m45239a(c0541e2, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
                }
                if (c0541e2.f2059R[1] != C0541e.EnumC0543a.MATCH_CONSTRAINT || m45348a) {
                    if (!c0541e2.m45266j()) {
                        if (next == c0541e2.f2050I && c0541e2.f2052K.f2036f == null) {
                            int m45301e = c0541e2.f2050I.m45301e() + m45303c;
                            c0541e2.m45283b(m45301e, c0541e2.m45255p() + m45301e);
                            m45347a(c0541e2, abstractC0515b);
                        } else if (next == c0541e2.f2052K && c0541e2.f2052K.f2036f == null) {
                            int m45301e2 = m45303c - c0541e2.f2052K.m45301e();
                            c0541e2.m45283b(m45301e2 - c0541e2.m45255p(), m45301e2);
                            m45347a(c0541e2, abstractC0515b);
                        } else if (next == c0541e2.f2050I && c0541e2.f2052K.f2036f != null && c0541e2.f2052K.f2036f.f2033c) {
                            m45351a(abstractC0515b, c0541e2);
                        }
                    }
                } else if (c0541e2.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e2.f2127v >= 0 && c0541e2.f2126u >= 0 && (c0541e2.f2091ak == 8 || (c0541e2.f2121p == 0 && c0541e2.f2063V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!c0541e2.m45247x() && !c0541e2.f2046E) {
                        if (((next == c0541e2.f2050I && c0541e2.f2052K.f2036f != null && c0541e2.f2052K.f2036f.f2033c) || (next == c0541e2.f2052K && c0541e2.f2050I.f2036f != null && c0541e2.f2050I.f2036f.f2033c)) && !c0541e2.m45247x()) {
                            m45346a(c0541e, abstractC0515b, c0541e2);
                        }
                    }
                }
            }
        }
        if (c0541e instanceof C0547h) {
            return;
        }
        if (mo45193a2.f2031a != null && mo45193a2.f2033c) {
            Iterator<C0538d> it3 = mo45193a2.f2031a.iterator();
            while (it3.hasNext()) {
                C0538d next2 = it3.next();
                C0541e c0541e3 = next2.f2034d;
                boolean m45348a2 = m45348a(c0541e3);
                if (c0541e3.m45266j() && m45348a2) {
                    C0544f.m45239a(c0541e3, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
                }
                boolean z = (next2 == c0541e3.f2050I && c0541e3.f2052K.f2036f != null && c0541e3.f2052K.f2036f.f2033c) || (next2 == c0541e3.f2052K && c0541e3.f2050I.f2036f != null && c0541e3.f2050I.f2036f.f2033c);
                if (c0541e3.f2059R[1] != C0541e.EnumC0543a.MATCH_CONSTRAINT || m45348a2) {
                    if (!c0541e3.m45266j()) {
                        if (next2 == c0541e3.f2050I && c0541e3.f2052K.f2036f == null) {
                            int m45301e3 = c0541e3.f2050I.m45301e() + m45303c2;
                            c0541e3.m45283b(m45301e3, c0541e3.m45255p() + m45301e3);
                            m45347a(c0541e3, abstractC0515b);
                        } else if (next2 == c0541e3.f2052K && c0541e3.f2050I.f2036f == null) {
                            int m45301e4 = m45303c2 - c0541e3.f2052K.m45301e();
                            c0541e3.m45283b(m45301e4 - c0541e3.m45255p(), m45301e4);
                            m45347a(c0541e3, abstractC0515b);
                        } else if (z && !c0541e3.m45247x()) {
                            m45351a(abstractC0515b, c0541e3);
                        }
                    }
                } else if (c0541e3.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e3.f2127v >= 0 && c0541e3.f2126u >= 0 && (c0541e3.f2091ak == 8 || (c0541e3.f2121p == 0 && c0541e3.f2063V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!c0541e3.m45247x() && !c0541e3.f2046E && z && !c0541e3.m45247x()) {
                        m45346a(c0541e, abstractC0515b, c0541e3);
                    }
                }
            }
        }
        C0538d mo45193a3 = c0541e.mo45193a(C0538d.EnumC0540a.BASELINE);
        if (mo45193a3.f2031a == null || !mo45193a3.f2033c) {
            return;
        }
        int m45303c3 = mo45193a3.m45303c();
        Iterator<C0538d> it4 = mo45193a3.f2031a.iterator();
        while (it4.hasNext()) {
            C0538d next3 = it4.next();
            C0541e c0541e4 = next3.f2034d;
            boolean m45348a3 = m45348a(c0541e4);
            if (c0541e4.m45266j() && m45348a3) {
                C0544f.m45239a(c0541e4, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
            }
            if (c0541e4.f2059R[1] != C0541e.EnumC0543a.MATCH_CONSTRAINT || m45348a3) {
                if (!c0541e4.m45266j() && next3 == c0541e4.f2053L) {
                    c0541e4.m45284b(m45303c3);
                    m45347a(c0541e4, abstractC0515b);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m45346a(C0541e c0541e, C0513b.AbstractC0515b abstractC0515b, C0541e c0541e2) {
        int i;
        float f = c0541e2.f2089ai;
        int m45303c = c0541e2.f2050I.f2036f.m45303c() + c0541e2.f2050I.m45301e();
        int m45303c2 = c0541e2.f2052K.f2036f.m45303c() - c0541e2.f2052K.m45301e();
        if (m45303c2 >= m45303c) {
            int m45255p = c0541e2.m45255p();
            int i2 = m45255p;
            if (c0541e2.f2091ak != 8) {
                if (c0541e2.f2121p == 2) {
                    i = (int) (f * 0.5f * (c0541e instanceof C0544f ? c0541e.m45255p() : c0541e.f2060S.m45255p()));
                } else {
                    i = m45255p;
                    if (c0541e2.f2121p == 0) {
                        i = m45303c2 - m45303c;
                    }
                }
                int max = Math.max(c0541e2.f2126u, i);
                i2 = max;
                if (c0541e2.f2127v > 0) {
                    i2 = Math.min(c0541e2.f2127v, max);
                }
            }
            int i3 = m45303c + ((int) ((f * ((m45303c2 - m45303c) - i2)) + 0.5f));
            c0541e2.m45283b(i3, i2 + i3);
            m45347a(c0541e2, abstractC0515b);
        }
    }

    /* renamed from: a */
    private static void m45345a(C0541e c0541e, C0513b.AbstractC0515b abstractC0515b, C0541e c0541e2, boolean z) {
        int i;
        float f = c0541e2.f2088ah;
        int m45303c = c0541e2.f2049H.f2036f.m45303c() + c0541e2.f2049H.m45301e();
        int m45303c2 = c0541e2.f2051J.f2036f.m45303c() - c0541e2.f2051J.m45301e();
        if (m45303c2 >= m45303c) {
            int m45257o = c0541e2.m45257o();
            int i2 = m45257o;
            if (c0541e2.f2091ak != 8) {
                if (c0541e2.f2120o == 2) {
                    i = (int) (c0541e2.f2088ah * 0.5f * (c0541e instanceof C0544f ? c0541e.m45257o() : c0541e.f2060S.m45257o()));
                } else {
                    i = m45257o;
                    if (c0541e2.f2120o == 0) {
                        i = m45303c2 - m45303c;
                    }
                }
                int max = Math.max(c0541e2.f2123r, i);
                i2 = max;
                if (c0541e2.f2124s > 0) {
                    i2 = Math.min(c0541e2.f2124s, max);
                }
            }
            int i3 = m45303c + ((int) ((f * ((m45303c2 - m45303c) - i2)) + 0.5f));
            c0541e2.m45296a(i3, i2 + i3);
            m45344a(c0541e2, abstractC0515b, z);
        }
    }

    /* renamed from: a */
    private static void m45344a(C0541e c0541e, C0513b.AbstractC0515b abstractC0515b, boolean z) {
        if (!(c0541e instanceof C0544f) && c0541e.m45266j() && m45348a(c0541e)) {
            C0544f.m45239a(c0541e, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
        }
        C0538d mo45193a = c0541e.mo45193a(C0538d.EnumC0540a.LEFT);
        C0538d mo45193a2 = c0541e.mo45193a(C0538d.EnumC0540a.RIGHT);
        int m45303c = mo45193a.m45303c();
        int m45303c2 = mo45193a2.m45303c();
        if (mo45193a.f2031a != null && mo45193a.f2033c) {
            Iterator<C0538d> it2 = mo45193a.f2031a.iterator();
            while (it2.hasNext()) {
                C0538d next = it2.next();
                C0541e c0541e2 = next.f2034d;
                boolean m45348a = m45348a(c0541e2);
                if (c0541e2.m45266j() && m45348a) {
                    C0544f.m45239a(c0541e2, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
                }
                if (c0541e2.f2059R[0] != C0541e.EnumC0543a.MATCH_CONSTRAINT || m45348a) {
                    if (!c0541e2.m45266j()) {
                        if (next == c0541e2.f2049H && c0541e2.f2051J.f2036f == null) {
                            int m45301e = c0541e2.f2049H.m45301e() + m45303c;
                            c0541e2.m45296a(m45301e, c0541e2.m45257o() + m45301e);
                            m45344a(c0541e2, abstractC0515b, z);
                        } else if (next == c0541e2.f2051J && c0541e2.f2049H.f2036f == null) {
                            int m45301e2 = m45303c - c0541e2.f2051J.m45301e();
                            c0541e2.m45296a(m45301e2 - c0541e2.m45257o(), m45301e2);
                            m45344a(c0541e2, abstractC0515b, z);
                        } else if (next == c0541e2.f2049H && c0541e2.f2051J.f2036f != null && c0541e2.f2051J.f2036f.f2033c && !c0541e2.m45248w()) {
                            m45350a(abstractC0515b, c0541e2, z);
                        }
                    }
                } else if (c0541e2.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e2.f2124s >= 0 && c0541e2.f2123r >= 0 && (c0541e2.f2091ak == 8 || (c0541e2.f2120o == 0 && c0541e2.f2063V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!c0541e2.m45248w() && !c0541e2.f2046E) {
                        if (((next == c0541e2.f2049H && c0541e2.f2051J.f2036f != null && c0541e2.f2051J.f2036f.f2033c) || (next == c0541e2.f2051J && c0541e2.f2049H.f2036f != null && c0541e2.f2049H.f2036f.f2033c)) && !c0541e2.m45248w()) {
                            m45345a(c0541e, abstractC0515b, c0541e2, z);
                        }
                    }
                }
            }
        }
        if (!(c0541e instanceof C0547h) && mo45193a2.f2031a != null && mo45193a2.f2033c) {
            Iterator<C0538d> it3 = mo45193a2.f2031a.iterator();
            while (it3.hasNext()) {
                C0538d next2 = it3.next();
                C0541e c0541e3 = next2.f2034d;
                boolean m45348a2 = m45348a(c0541e3);
                if (c0541e3.m45266j() && m45348a2) {
                    C0544f.m45239a(c0541e3, abstractC0515b, new C0513b.C0514a(), C0513b.C0514a.f1927a);
                }
                boolean z2 = (next2 == c0541e3.f2049H && c0541e3.f2051J.f2036f != null && c0541e3.f2051J.f2036f.f2033c) || (next2 == c0541e3.f2051J && c0541e3.f2049H.f2036f != null && c0541e3.f2049H.f2036f.f2033c);
                if (c0541e3.f2059R[0] != C0541e.EnumC0543a.MATCH_CONSTRAINT || m45348a2) {
                    if (!c0541e3.m45266j()) {
                        if (next2 == c0541e3.f2049H && c0541e3.f2051J.f2036f == null) {
                            int m45301e3 = c0541e3.f2049H.m45301e() + m45303c2;
                            c0541e3.m45296a(m45301e3, c0541e3.m45257o() + m45301e3);
                            m45344a(c0541e3, abstractC0515b, z);
                        } else if (next2 == c0541e3.f2051J && c0541e3.f2049H.f2036f == null) {
                            int m45301e4 = m45303c2 - c0541e3.f2051J.m45301e();
                            c0541e3.m45296a(m45301e4 - c0541e3.m45257o(), m45301e4);
                            m45344a(c0541e3, abstractC0515b, z);
                        } else if (z2 && !c0541e3.m45248w()) {
                            m45350a(abstractC0515b, c0541e3, z);
                        }
                    }
                } else if (c0541e3.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e3.f2124s >= 0 && c0541e3.f2123r >= 0 && (c0541e3.f2091ak == 8 || (c0541e3.f2120o == 0 && c0541e3.f2063V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!c0541e3.m45248w() && !c0541e3.f2046E && z2 && !c0541e3.m45248w()) {
                        m45345a(c0541e, abstractC0515b, c0541e3, z);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m45343a(C0544f c0544f, C0513b.AbstractC0515b abstractC0515b) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        C0541e.EnumC0543a enumC0543a = c0544f.f2059R[0];
        C0541e.EnumC0543a enumC0543a2 = c0544f.f2059R[1];
        c0544f.m45268i();
        ArrayList<C0541e> arrayList = c0544f.f2231be;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).m45268i();
        }
        boolean z7 = c0544f.f2163d;
        if (enumC0543a == C0541e.EnumC0543a.FIXED) {
            c0544f.m45296a(0, c0544f.m45257o());
        } else {
            c0544f.m45272g();
        }
        int i2 = 0;
        boolean z8 = false;
        boolean z9 = false;
        while (true) {
            z = z9;
            if (i2 >= size) {
                break;
            }
            C0541e c0541e = arrayList.get(i2);
            if (c0541e instanceof C0547h) {
                C0547h c0547h = (C0547h) c0541e;
                z6 = z8;
                z5 = z;
                if (c0547h.f2208aI == 1) {
                    if (c0547h.m45187e() != -1) {
                        c0547h.m45182r(c0547h.m45187e());
                    } else if (c0547h.m45186f() != -1 && c0544f.mo45191b()) {
                        c0547h.m45182r(c0544f.m45257o() - c0547h.m45186f());
                    } else if (c0544f.mo45191b()) {
                        c0547h.m45182r((int) ((c0547h.m45188d() * c0544f.m45257o()) + 0.5f));
                    }
                    z6 = true;
                    z5 = z;
                }
            } else {
                z6 = z8;
                z5 = z;
                if (c0541e instanceof C0511a) {
                    z6 = z8;
                    z5 = z;
                    if (((C0511a) c0541e).m45370e() == 0) {
                        z5 = true;
                        z6 = z8;
                    }
                }
            }
            i2++;
            z8 = z6;
            z9 = z5;
        }
        if (z8) {
            for (int i3 = 0; i3 < size; i3++) {
                C0541e c0541e2 = arrayList.get(i3);
                if (c0541e2 instanceof C0547h) {
                    C0547h c0547h2 = (C0547h) c0541e2;
                    if (c0547h2.f2208aI == 1) {
                        m45344a(c0547h2, abstractC0515b, z7);
                    }
                }
            }
        }
        m45344a(c0544f, abstractC0515b, z7);
        if (z) {
            for (int i4 = 0; i4 < size; i4++) {
                C0541e c0541e3 = arrayList.get(i4);
                if (c0541e3 instanceof C0511a) {
                    C0511a c0511a = (C0511a) c0541e3;
                    if (c0511a.m45370e() == 0) {
                        m45349a(c0511a, abstractC0515b, 0, z7);
                    }
                }
            }
        }
        if (enumC0543a2 == C0541e.EnumC0543a.FIXED) {
            c0544f.m45283b(0, c0544f.m45255p());
        } else {
            c0544f.m45270g_();
        }
        int i5 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            z2 = z11;
            if (i5 >= size) {
                break;
            }
            C0541e c0541e4 = arrayList.get(i5);
            if (c0541e4 instanceof C0547h) {
                C0547h c0547h3 = (C0547h) c0541e4;
                z3 = z10;
                z4 = z2;
                if (c0547h3.f2208aI == 0) {
                    if (c0547h3.m45187e() != -1) {
                        c0547h3.m45182r(c0547h3.m45187e());
                    } else if (c0547h3.m45186f() != -1 && c0544f.mo45189c()) {
                        c0547h3.m45182r(c0544f.m45255p() - c0547h3.m45186f());
                    } else if (c0544f.mo45189c()) {
                        c0547h3.m45182r((int) ((c0547h3.m45188d() * c0544f.m45255p()) + 0.5f));
                    }
                    z3 = true;
                    z4 = z2;
                }
            } else {
                z3 = z10;
                z4 = z2;
                if (c0541e4 instanceof C0511a) {
                    z3 = z10;
                    z4 = z2;
                    if (((C0511a) c0541e4).m45370e() == 1) {
                        z4 = true;
                        z3 = z10;
                    }
                }
            }
            i5++;
            z10 = z3;
            z11 = z4;
        }
        if (z10) {
            for (int i6 = 0; i6 < size; i6++) {
                C0541e c0541e5 = arrayList.get(i6);
                if (c0541e5 instanceof C0547h) {
                    C0547h c0547h4 = (C0547h) c0541e5;
                    if (c0547h4.f2208aI == 0) {
                        m45347a(c0547h4, abstractC0515b);
                    }
                }
            }
        }
        m45347a((C0541e) c0544f, abstractC0515b);
        int i7 = 0;
        if (z2) {
            int i8 = 0;
            while (true) {
                i7 = 0;
                if (i8 >= size) {
                    break;
                }
                C0541e c0541e6 = arrayList.get(i8);
                if (c0541e6 instanceof C0511a) {
                    C0511a c0511a2 = (C0511a) c0541e6;
                    if (c0511a2.m45370e() == 1) {
                        m45349a(c0511a2, abstractC0515b, 1, z7);
                    }
                }
                i8++;
            }
        }
        while (i7 < size) {
            C0541e c0541e7 = arrayList.get(i7);
            if (c0541e7.m45266j() && m45348a(c0541e7)) {
                C0544f.m45239a(c0541e7, abstractC0515b, f1964a, C0513b.C0514a.f1927a);
                m45344a(c0541e7, abstractC0515b, z7);
                m45347a(c0541e7, abstractC0515b);
            }
            i7++;
        }
    }

    /* renamed from: a */
    private static boolean m45348a(C0541e c0541e) {
        C0541e.EnumC0543a enumC0543a = c0541e.f2059R[0];
        C0541e.EnumC0543a enumC0543a2 = c0541e.f2059R[1];
        C0544f c0544f = c0541e.f2060S != null ? (C0544f) c0541e.f2060S : null;
        if (c0544f != null) {
            C0541e.EnumC0543a enumC0543a3 = C0541e.EnumC0543a.FIXED;
        }
        if (c0544f != null) {
            C0541e.EnumC0543a enumC0543a4 = C0541e.EnumC0543a.FIXED;
        }
        boolean z = enumC0543a == C0541e.EnumC0543a.FIXED || enumC0543a == C0541e.EnumC0543a.WRAP_CONTENT || (enumC0543a == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2120o == 0 && c0541e.f2063V == BitmapDescriptorFactory.HUE_RED && c0541e.m45281c(0)) || c0541e.mo45191b();
        boolean z2 = enumC0543a2 == C0541e.EnumC0543a.FIXED || enumC0543a2 == C0541e.EnumC0543a.WRAP_CONTENT || (enumC0543a2 == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2121p == 0 && c0541e.f2063V == BitmapDescriptorFactory.HUE_RED && c0541e.m45281c(1)) || c0541e.mo45189c();
        if (c0541e.f2063V <= BitmapDescriptorFactory.HUE_RED || (!z && !z2)) {
            return z && z2;
        }
        return true;
    }
}
