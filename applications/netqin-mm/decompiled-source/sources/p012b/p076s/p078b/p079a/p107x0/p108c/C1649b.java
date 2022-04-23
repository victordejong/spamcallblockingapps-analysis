package p012b.p076s.p078b.p079a.p107x0.p108c;

import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.x0.c.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/x0/c/b.class */
public final class C1649b {
    /* renamed from: a */
    public static int m32488a(C1184p pVar) {
        int i = 0;
        while (pVar.m34372a() != 0) {
            int r = pVar.m34344r();
            int i2 = i + r;
            i = i2;
            if (r != 255) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static void m32489a(long j, C1184p pVar, AbstractC1362q[] qVarArr) {
        int i;
        while (true) {
            boolean z = true;
            if (pVar.m34372a() > 1) {
                int a = m32488a(pVar);
                int a2 = m32488a(pVar);
                int c = pVar.m34363c() + a2;
                if (a2 == -1 || a2 > pVar.m34372a()) {
                    C1175j.m34414d("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                    i = pVar.m34361d();
                } else {
                    i = c;
                    if (a == 4) {
                        i = c;
                        if (a2 >= 8) {
                            int r = pVar.m34344r();
                            int x = pVar.m34338x();
                            int f = x == 49 ? pVar.m34357f() : 0;
                            int r2 = pVar.m34344r();
                            if (x == 47) {
                                pVar.m34356f(1);
                            }
                            boolean z2 = r == 181 && (x == 49 || x == 47) && r2 == 3;
                            boolean z3 = z2;
                            if (x == 49) {
                                if (f != 1195456820) {
                                    z = false;
                                }
                                z3 = z2 & z;
                            }
                            i = c;
                            if (z3) {
                                m32487b(j, pVar, qVarArr);
                                i = c;
                            }
                        }
                    }
                }
                pVar.m34358e(i);
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public static void m32487b(long j, C1184p pVar, AbstractC1362q[] qVarArr) {
        int r = pVar.m34344r();
        if ((r & 64) != 0) {
            pVar.m34356f(1);
            int i = (r & 31) * 3;
            int c = pVar.m34363c();
            for (AbstractC1362q qVar : qVarArr) {
                pVar.m34358e(c);
                qVar.mo32827a(pVar, i);
                qVar.mo32832a(j, 1, i, 0, null);
            }
        }
    }
}
