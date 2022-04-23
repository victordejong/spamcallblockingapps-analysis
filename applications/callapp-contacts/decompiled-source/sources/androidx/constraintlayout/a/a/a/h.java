package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a;
import androidx.constraintlayout.a.a.a.b;
import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static b.a f1334a = new b.a();

    private static void a(b.AbstractC0032b bVar, e eVar) {
        float f = eVar.ai;
        int c2 = eVar.I.f.c();
        int c3 = eVar.K.f.c();
        int e = eVar.I.e();
        int e2 = eVar.K.e();
        if (c2 == c3) {
            f = 0.5f;
        } else {
            c2 = e + c2;
            c3 -= e2;
        }
        int p = eVar.p();
        int i = (c3 - c2) - p;
        if (c2 > c3) {
            i = (c2 - c3) - p;
        }
        int i2 = (int) ((f * i) + 0.5f);
        int i3 = c2 + i2;
        int i4 = i3 + p;
        if (c2 > c3) {
            i3 = c2 - i2;
            i4 = i3 - p;
        }
        eVar.b(i3, i4);
        a(eVar, bVar);
    }

    private static void a(b.AbstractC0032b bVar, e eVar, boolean z) {
        float f = eVar.ah;
        int c2 = eVar.H.f.c();
        int c3 = eVar.J.f.c();
        int e = eVar.H.e();
        int e2 = eVar.J.e();
        if (c2 == c3) {
            f = 0.5f;
        } else {
            c2 = e + c2;
            c3 -= e2;
        }
        int o = eVar.o();
        int i = (c3 - c2) - o;
        if (c2 > c3) {
            i = (c2 - c3) - o;
        }
        int i2 = ((int) ((f * i) + 0.5f)) + c2;
        int i3 = i2 + o;
        if (c2 > c3) {
            i3 = i2 - o;
        }
        eVar.a(i2, i3);
        a(eVar, bVar, z);
    }

    private static void a(a aVar, b.AbstractC0032b bVar, int i, boolean z) {
        if (!aVar.f()) {
            return;
        }
        if (i == 0) {
            a(aVar, bVar, z);
        } else {
            a(aVar, bVar);
        }
    }

    private static void a(e eVar, b.AbstractC0032b bVar) {
        if (!(eVar instanceof f) && eVar.j() && a(eVar)) {
            f.a(eVar, bVar, new b.a(), b.a.f1320a);
        }
        d a2 = eVar.a(d.a.TOP);
        d a3 = eVar.a(d.a.BOTTOM);
        int c2 = a2.c();
        int c3 = a3.c();
        if (a2.f1363a != null && a2.f1365c) {
            Iterator<d> it2 = a2.f1363a.iterator();
            while (it2.hasNext()) {
                d next = it2.next();
                e eVar2 = next.f1366d;
                boolean a4 = a(eVar2);
                if (eVar2.j() && a4) {
                    f.a(eVar2, bVar, new b.a(), b.a.f1320a);
                }
                if (eVar2.R[1] != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.j()) {
                        if (next == eVar2.I && eVar2.K.f == null) {
                            int e = eVar2.I.e() + c2;
                            eVar2.b(e, eVar2.p() + e);
                            a(eVar2, bVar);
                        } else if (next == eVar2.K && eVar2.K.f == null) {
                            int e2 = c2 - eVar2.K.e();
                            eVar2.b(e2 - eVar2.p(), e2);
                            a(eVar2, bVar);
                        } else if (next == eVar2.I && eVar2.K.f != null && eVar2.K.f.f1365c) {
                            a(bVar, eVar2);
                        }
                    }
                } else if (eVar2.R[1] == e.a.MATCH_CONSTRAINT && eVar2.v >= 0 && eVar2.u >= 0 && (eVar2.ak == 8 || (eVar2.p == 0 && eVar2.V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!eVar2.x() && !eVar2.E) {
                        if (((next == eVar2.I && eVar2.K.f != null && eVar2.K.f.f1365c) || (next == eVar2.K && eVar2.I.f != null && eVar2.I.f.f1365c)) && !eVar2.x()) {
                            a(eVar, bVar, eVar2);
                        }
                    }
                }
            }
        }
        if (!(eVar instanceof androidx.constraintlayout.a.a.h)) {
            if (a3.f1363a != null && a3.f1365c) {
                Iterator<d> it3 = a3.f1363a.iterator();
                while (it3.hasNext()) {
                    d next2 = it3.next();
                    e eVar3 = next2.f1366d;
                    boolean a5 = a(eVar3);
                    if (eVar3.j() && a5) {
                        f.a(eVar3, bVar, new b.a(), b.a.f1320a);
                    }
                    boolean z = (next2 == eVar3.I && eVar3.K.f != null && eVar3.K.f.f1365c) || (next2 == eVar3.K && eVar3.I.f != null && eVar3.I.f.f1365c);
                    if (eVar3.R[1] != e.a.MATCH_CONSTRAINT || a5) {
                        if (!eVar3.j()) {
                            if (next2 == eVar3.I && eVar3.K.f == null) {
                                int e3 = eVar3.I.e() + c3;
                                eVar3.b(e3, eVar3.p() + e3);
                                a(eVar3, bVar);
                            } else if (next2 == eVar3.K && eVar3.I.f == null) {
                                int e4 = c3 - eVar3.K.e();
                                eVar3.b(e4 - eVar3.p(), e4);
                                a(eVar3, bVar);
                            } else if (z && !eVar3.x()) {
                                a(bVar, eVar3);
                            }
                        }
                    } else if (eVar3.R[1] == e.a.MATCH_CONSTRAINT && eVar3.v >= 0 && eVar3.u >= 0 && (eVar3.ak == 8 || (eVar3.p == 0 && eVar3.V == BitmapDescriptorFactory.HUE_RED))) {
                        if (!eVar3.x() && !eVar3.E && z && !eVar3.x()) {
                            a(eVar, bVar, eVar3);
                        }
                    }
                }
            }
            d a6 = eVar.a(d.a.BASELINE);
            if (a6.f1363a != null && a6.f1365c) {
                int c4 = a6.c();
                Iterator<d> it4 = a6.f1363a.iterator();
                while (it4.hasNext()) {
                    d next3 = it4.next();
                    e eVar4 = next3.f1366d;
                    boolean a7 = a(eVar4);
                    if (eVar4.j() && a7) {
                        f.a(eVar4, bVar, new b.a(), b.a.f1320a);
                    }
                    if (eVar4.R[1] != e.a.MATCH_CONSTRAINT || a7) {
                        if (!eVar4.j() && next3 == eVar4.L) {
                            eVar4.b(c4);
                            a(eVar4, bVar);
                        }
                    }
                }
            }
        }
    }

    private static void a(e eVar, b.AbstractC0032b bVar, e eVar2) {
        int i;
        float f = eVar2.ai;
        int c2 = eVar2.I.f.c() + eVar2.I.e();
        int c3 = eVar2.K.f.c() - eVar2.K.e();
        if (c3 >= c2) {
            int p = eVar2.p();
            int i2 = p;
            if (eVar2.ak != 8) {
                if (eVar2.p == 2) {
                    i = (int) (f * 0.5f * (eVar instanceof f ? eVar.p() : eVar.S.p()));
                } else {
                    i = p;
                    if (eVar2.p == 0) {
                        i = c3 - c2;
                    }
                }
                int max = Math.max(eVar2.u, i);
                i2 = max;
                if (eVar2.v > 0) {
                    i2 = Math.min(eVar2.v, max);
                }
            }
            int i3 = c2 + ((int) ((f * ((c3 - c2) - i2)) + 0.5f));
            eVar2.b(i3, i2 + i3);
            a(eVar2, bVar);
        }
    }

    private static void a(e eVar, b.AbstractC0032b bVar, e eVar2, boolean z) {
        int i;
        float f = eVar2.ah;
        int c2 = eVar2.H.f.c() + eVar2.H.e();
        int c3 = eVar2.J.f.c() - eVar2.J.e();
        if (c3 >= c2) {
            int o = eVar2.o();
            int i2 = o;
            if (eVar2.ak != 8) {
                if (eVar2.o == 2) {
                    i = (int) (eVar2.ah * 0.5f * (eVar instanceof f ? eVar.o() : eVar.S.o()));
                } else {
                    i = o;
                    if (eVar2.o == 0) {
                        i = c3 - c2;
                    }
                }
                int max = Math.max(eVar2.r, i);
                i2 = max;
                if (eVar2.s > 0) {
                    i2 = Math.min(eVar2.s, max);
                }
            }
            int i3 = c2 + ((int) ((f * ((c3 - c2) - i2)) + 0.5f));
            eVar2.a(i3, i2 + i3);
            a(eVar2, bVar, z);
        }
    }

    private static void a(e eVar, b.AbstractC0032b bVar, boolean z) {
        if (!(eVar instanceof f) && eVar.j() && a(eVar)) {
            f.a(eVar, bVar, new b.a(), b.a.f1320a);
        }
        d a2 = eVar.a(d.a.LEFT);
        d a3 = eVar.a(d.a.RIGHT);
        int c2 = a2.c();
        int c3 = a3.c();
        if (a2.f1363a != null && a2.f1365c) {
            Iterator<d> it2 = a2.f1363a.iterator();
            while (it2.hasNext()) {
                d next = it2.next();
                e eVar2 = next.f1366d;
                boolean a4 = a(eVar2);
                if (eVar2.j() && a4) {
                    f.a(eVar2, bVar, new b.a(), b.a.f1320a);
                }
                if (eVar2.R[0] != e.a.MATCH_CONSTRAINT || a4) {
                    if (!eVar2.j()) {
                        if (next == eVar2.H && eVar2.J.f == null) {
                            int e = eVar2.H.e() + c2;
                            eVar2.a(e, eVar2.o() + e);
                            a(eVar2, bVar, z);
                        } else if (next == eVar2.J && eVar2.H.f == null) {
                            int e2 = c2 - eVar2.J.e();
                            eVar2.a(e2 - eVar2.o(), e2);
                            a(eVar2, bVar, z);
                        } else if (next == eVar2.H && eVar2.J.f != null && eVar2.J.f.f1365c && !eVar2.w()) {
                            a(bVar, eVar2, z);
                        }
                    }
                } else if (eVar2.R[0] == e.a.MATCH_CONSTRAINT && eVar2.s >= 0 && eVar2.r >= 0 && (eVar2.ak == 8 || (eVar2.o == 0 && eVar2.V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!eVar2.w() && !eVar2.E) {
                        if (((next == eVar2.H && eVar2.J.f != null && eVar2.J.f.f1365c) || (next == eVar2.J && eVar2.H.f != null && eVar2.H.f.f1365c)) && !eVar2.w()) {
                            a(eVar, bVar, eVar2, z);
                        }
                    }
                }
            }
        }
        if (!(eVar instanceof androidx.constraintlayout.a.a.h) && a3.f1363a != null && a3.f1365c) {
            Iterator<d> it3 = a3.f1363a.iterator();
            while (it3.hasNext()) {
                d next2 = it3.next();
                e eVar3 = next2.f1366d;
                boolean a5 = a(eVar3);
                if (eVar3.j() && a5) {
                    f.a(eVar3, bVar, new b.a(), b.a.f1320a);
                }
                boolean z2 = (next2 == eVar3.H && eVar3.J.f != null && eVar3.J.f.f1365c) || (next2 == eVar3.J && eVar3.H.f != null && eVar3.H.f.f1365c);
                if (eVar3.R[0] != e.a.MATCH_CONSTRAINT || a5) {
                    if (!eVar3.j()) {
                        if (next2 == eVar3.H && eVar3.J.f == null) {
                            int e3 = eVar3.H.e() + c3;
                            eVar3.a(e3, eVar3.o() + e3);
                            a(eVar3, bVar, z);
                        } else if (next2 == eVar3.J && eVar3.H.f == null) {
                            int e4 = c3 - eVar3.J.e();
                            eVar3.a(e4 - eVar3.o(), e4);
                            a(eVar3, bVar, z);
                        } else if (z2 && !eVar3.w()) {
                            a(bVar, eVar3, z);
                        }
                    }
                } else if (eVar3.R[0] == e.a.MATCH_CONSTRAINT && eVar3.s >= 0 && eVar3.r >= 0 && (eVar3.ak == 8 || (eVar3.o == 0 && eVar3.V == BitmapDescriptorFactory.HUE_RED))) {
                    if (!eVar3.w() && !eVar3.E && z2 && !eVar3.w()) {
                        a(eVar, bVar, eVar3, z);
                    }
                }
            }
        }
    }

    public static void a(f fVar, b.AbstractC0032b bVar) {
        e.a aVar = fVar.R[0];
        e.a aVar2 = fVar.R[1];
        fVar.i();
        ArrayList<e> arrayList = fVar.be;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).i();
        }
        boolean z = fVar.f1377d;
        if (aVar == e.a.FIXED) {
            fVar.a(0, fVar.o());
        } else {
            fVar.g();
        }
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            e eVar = arrayList.get(i2);
            if (eVar instanceof androidx.constraintlayout.a.a.h) {
                androidx.constraintlayout.a.a.h hVar = (androidx.constraintlayout.a.a.h) eVar;
                z2 = z2;
                z3 = z3;
                if (hVar.aI == 1) {
                    if (hVar.e() != -1) {
                        hVar.r(hVar.e());
                    } else if (hVar.f() != -1 && fVar.b()) {
                        hVar.r(fVar.o() - hVar.f());
                    } else if (fVar.b()) {
                        hVar.r((int) ((hVar.d() * fVar.o()) + 0.5f));
                    }
                    z2 = true;
                    z3 = z3;
                }
            } else {
                z2 = z2;
                z3 = z3;
                if (eVar instanceof a) {
                    z2 = z2;
                    z3 = z3;
                    if (((a) eVar).e() == 0) {
                        z3 = true;
                        z2 = z2;
                    }
                }
            }
        }
        if (z2) {
            for (int i3 = 0; i3 < size; i3++) {
                e eVar2 = arrayList.get(i3);
                if (eVar2 instanceof androidx.constraintlayout.a.a.h) {
                    androidx.constraintlayout.a.a.h hVar2 = (androidx.constraintlayout.a.a.h) eVar2;
                    if (hVar2.aI == 1) {
                        a(hVar2, bVar, z);
                    }
                }
            }
        }
        a(fVar, bVar, z);
        if (z3) {
            for (int i4 = 0; i4 < size; i4++) {
                e eVar3 = arrayList.get(i4);
                if (eVar3 instanceof a) {
                    a aVar3 = (a) eVar3;
                    if (aVar3.e() == 0) {
                        a(aVar3, bVar, 0, z);
                    }
                }
            }
        }
        if (aVar2 == e.a.FIXED) {
            fVar.b(0, fVar.p());
        } else {
            fVar.g_();
        }
        boolean z4 = false;
        boolean z5 = false;
        for (int i5 = 0; i5 < size; i5++) {
            e eVar4 = arrayList.get(i5);
            if (eVar4 instanceof androidx.constraintlayout.a.a.h) {
                androidx.constraintlayout.a.a.h hVar3 = (androidx.constraintlayout.a.a.h) eVar4;
                z4 = z4;
                z5 = z5;
                if (hVar3.aI == 0) {
                    if (hVar3.e() != -1) {
                        hVar3.r(hVar3.e());
                    } else if (hVar3.f() != -1 && fVar.c()) {
                        hVar3.r(fVar.p() - hVar3.f());
                    } else if (fVar.c()) {
                        hVar3.r((int) ((hVar3.d() * fVar.p()) + 0.5f));
                    }
                    z4 = true;
                    z5 = z5;
                }
            } else {
                z4 = z4;
                z5 = z5;
                if (eVar4 instanceof a) {
                    z4 = z4;
                    z5 = z5;
                    if (((a) eVar4).e() == 1) {
                        z5 = true;
                        z4 = z4;
                    }
                }
            }
        }
        if (z4) {
            for (int i6 = 0; i6 < size; i6++) {
                e eVar5 = arrayList.get(i6);
                if (eVar5 instanceof androidx.constraintlayout.a.a.h) {
                    androidx.constraintlayout.a.a.h hVar4 = (androidx.constraintlayout.a.a.h) eVar5;
                    if (hVar4.aI == 0) {
                        a(hVar4, bVar);
                    }
                }
            }
        }
        a((e) fVar, bVar);
        int i7 = 0;
        if (z5) {
            int i8 = 0;
            while (true) {
                i7 = 0;
                if (i8 >= size) {
                    break;
                }
                e eVar6 = arrayList.get(i8);
                if (eVar6 instanceof a) {
                    a aVar4 = (a) eVar6;
                    if (aVar4.e() == 1) {
                        a(aVar4, bVar, 1, z);
                    }
                }
                i8++;
            }
        }
        while (i7 < size) {
            e eVar7 = arrayList.get(i7);
            if (eVar7.j() && a(eVar7)) {
                f.a(eVar7, bVar, f1334a, b.a.f1320a);
                a(eVar7, bVar, z);
                a(eVar7, bVar);
            }
            i7++;
        }
    }

    private static boolean a(e eVar) {
        e.a aVar = eVar.R[0];
        e.a aVar2 = eVar.R[1];
        f fVar = eVar.S != null ? (f) eVar.S : null;
        if (fVar != null) {
            e.a aVar3 = e.a.FIXED;
        }
        if (fVar != null) {
            e.a aVar4 = e.a.FIXED;
        }
        boolean z = aVar == e.a.FIXED || aVar == e.a.WRAP_CONTENT || (aVar == e.a.MATCH_CONSTRAINT && eVar.o == 0 && eVar.V == BitmapDescriptorFactory.HUE_RED && eVar.c(0)) || eVar.b();
        boolean z2 = aVar2 == e.a.FIXED || aVar2 == e.a.WRAP_CONTENT || (aVar2 == e.a.MATCH_CONSTRAINT && eVar.p == 0 && eVar.V == BitmapDescriptorFactory.HUE_RED && eVar.c(1)) || eVar.c();
        if (eVar.V <= BitmapDescriptorFactory.HUE_RED || (!z && !z2)) {
            return z && z2;
        }
        return true;
    }
}
