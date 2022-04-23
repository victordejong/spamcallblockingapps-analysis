package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/c.class */
public final class c extends p {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<p> f1324a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private int f1325b;

    public c(e eVar, int i) {
        super(eVar);
        this.h = i;
        g();
    }

    private void g() {
        e eVar = this.f1353d;
        e m = eVar.m(this.h);
        while (m != null) {
            m = m.m(this.h);
            eVar = m;
        }
        this.f1353d = eVar;
        this.f1324a.add(eVar.a(this.h));
        e n = eVar.n(this.h);
        while (n != null) {
            this.f1324a.add(n.a(this.h));
            n = n.n(this.h);
        }
        Iterator<p> it2 = this.f1324a.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            if (this.h == 0) {
                next.f1353d.g = this;
            } else if (this.h == 1) {
                next.f1353d.h = this;
            }
        }
        if ((this.h == 0 && ((f) this.f1353d.S).f1377d) && this.f1324a.size() > 1) {
            ArrayList<p> arrayList = this.f1324a;
            this.f1353d = arrayList.get(arrayList.size() - 1).f1353d;
        }
        this.f1325b = this.h == 0 ? this.f1353d.ax : this.f1353d.ay;
    }

    private e h() {
        for (int i = 0; i < this.f1324a.size(); i++) {
            p pVar = this.f1324a.get(i);
            if (pVar.f1353d.ak != 8) {
                return pVar.f1353d;
            }
        }
        return null;
    }

    private e i() {
        for (int size = this.f1324a.size() - 1; size >= 0; size--) {
            p pVar = this.f1324a.get(size);
            if (pVar.f1353d.ak != 8) {
                return pVar.f1353d;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final boolean a() {
        int size = this.f1324a.size();
        for (int i = 0; i < size; i++) {
            if (!this.f1324a.get(i).a()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final long b() {
        int size = this.f1324a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            p pVar = this.f1324a.get(i);
            j = j + pVar.j.f + pVar.b() + pVar.k.f;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void c() {
        this.e = null;
        Iterator<p> it2 = this.f1324a.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    @Override // androidx.constraintlayout.a.a.a.p, androidx.constraintlayout.a.a.a.d
    public final void d() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        boolean z;
        int i9;
        int i10;
        float f2;
        int i11;
        if (this.j.j && this.k.j) {
            e eVar = this.f1353d.S;
            boolean z2 = (eVar == null || !(eVar instanceof f)) ? false : ((f) eVar).f1377d;
            int i12 = this.k.g - this.j.g;
            int size = this.f1324a.size();
            int i13 = 0;
            while (true) {
                i2 = -1;
                if (i13 >= size) {
                    i = -1;
                    break;
                } else if (this.f1324a.get(i13).f1353d.ak != 8) {
                    i = i13;
                    break;
                } else {
                    i13++;
                }
            }
            int i14 = size - 1;
            int i15 = i14;
            while (true) {
                if (i15 < 0) {
                    break;
                } else if (this.f1324a.get(i15).f1353d.ak != 8) {
                    i2 = i15;
                    break;
                } else {
                    i15--;
                }
            }
            for (int i16 = 0; i16 < 2; i16++) {
                i4 = 0;
                int i17 = 0;
                int i18 = 0;
                f = BitmapDescriptorFactory.HUE_RED;
                for (int i19 = 0; i19 < size; i19++) {
                    p pVar = this.f1324a.get(i19);
                    i4 = i4;
                    i17 = i17;
                    i18 = i18;
                    f = f;
                    if (pVar.f1353d.ak != 8) {
                        int i20 = i18 + 1;
                        int i21 = i4;
                        if (i19 > 0) {
                            i21 = i4;
                            if (i19 >= i) {
                                i21 = i4 + pVar.j.f;
                            }
                        }
                        int i22 = pVar.g.g;
                        boolean z3 = pVar.f != e.a.MATCH_CONSTRAINT;
                        if (!z3) {
                            if (pVar.f1352c == 1 && i16 == 0) {
                                i9 = pVar.g.m;
                                i10 = i17 + 1;
                            } else {
                                z = z3;
                                i9 = i22;
                                i10 = i17;
                                if (pVar.g.j) {
                                    i10 = i17;
                                    i9 = i22;
                                }
                            }
                            z = true;
                        } else if (this.h != 0 || pVar.f1353d.i.g.j) {
                            z = z3;
                            i9 = i22;
                            i10 = i17;
                            if (this.h == 1) {
                                z = z3;
                                i9 = i22;
                                i10 = i17;
                                if (!pVar.f1353d.j.g.j) {
                                    return;
                                }
                            }
                        } else {
                            return;
                        }
                        if (!z) {
                            int i23 = i10 + 1;
                            float f3 = pVar.f1353d.aB[this.h];
                            i11 = i21;
                            i10 = i23;
                            f2 = f;
                            if (f3 >= BitmapDescriptorFactory.HUE_RED) {
                                f2 = f + f3;
                                i11 = i21;
                                i10 = i23;
                            }
                        } else {
                            i11 = i21 + i9;
                            f2 = f;
                        }
                        i4 = i11;
                        i17 = i10;
                        i18 = i20;
                        f = f2;
                        if (i19 < i14) {
                            i4 = i11;
                            i17 = i10;
                            i18 = i20;
                            f = f2;
                            if (i19 < i2) {
                                i4 = i11 + (-pVar.k.f);
                                f = f2;
                                i18 = i20;
                                i17 = i10;
                            }
                        }
                    }
                }
                if (i4 < i12 || i17 == 0) {
                    i3 = i18;
                    i5 = i17;
                    break;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = BitmapDescriptorFactory.HUE_RED;
            int i24 = this.j.g;
            if (z2) {
                i24 = this.k.g;
            }
            int i25 = i24;
            if (i4 > i12) {
                i25 = z2 ? i24 + ((int) (((i4 - i12) / 2.0f) + 0.5f)) : i24 - ((int) (((i4 - i12) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i12 - i4;
                int i26 = (int) ((f4 / i5) + 0.5f);
                int i27 = 0;
                for (int i28 = 0; i28 < size; i28++) {
                    p pVar2 = this.f1324a.get(i28);
                    if (pVar2.f1353d.ak == 8 || pVar2.f != e.a.MATCH_CONSTRAINT || pVar2.g.j) {
                        i27 = i27;
                    } else {
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            i26 = (int) (((pVar2.f1353d.aB[this.h] * f4) / f) + 0.5f);
                        }
                        if (this.h == 0) {
                            int i29 = pVar2.f1353d.s;
                            int max = Math.max(pVar2.f1353d.r, pVar2.f1352c == 1 ? Math.min(i26, pVar2.g.m) : i26);
                            int i30 = max;
                            if (i29 > 0) {
                                i30 = Math.min(i29, max);
                            }
                            i8 = i26;
                            i27 = i27;
                            if (i30 != i26) {
                                i27++;
                                i8 = i30;
                            }
                        } else {
                            int i31 = pVar2.f1353d.v;
                            int max2 = Math.max(pVar2.f1353d.u, pVar2.f1352c == 1 ? Math.min(i26, pVar2.g.m) : i26);
                            int i32 = max2;
                            if (i31 > 0) {
                                i32 = Math.min(i31, max2);
                            }
                            i8 = i26;
                            i27 = i27;
                            if (i32 != i26) {
                                i27++;
                                i8 = i32;
                            }
                        }
                        pVar2.g.a(i8);
                    }
                }
                if (i27 > 0) {
                    i5 -= i27;
                    i7 = 0;
                    for (int i33 = 0; i33 < size; i33++) {
                        p pVar3 = this.f1324a.get(i33);
                        i7 = i7;
                        if (pVar3.f1353d.ak != 8) {
                            int i34 = i7;
                            if (i33 > 0) {
                                i34 = i7;
                                if (i33 >= i) {
                                    i34 = i7 + pVar3.j.f;
                                }
                            }
                            int i35 = i34 + pVar3.g.g;
                            i7 = i35;
                            if (i33 < i14) {
                                i7 = i35;
                                if (i33 < i2) {
                                    i7 = i35 + (-pVar3.k.f);
                                }
                            }
                        }
                    }
                } else {
                    i7 = i4;
                }
                if (this.f1325b == 2 && i27 == 0) {
                    this.f1325b = 0;
                    i4 = i7;
                    i6 = i5;
                    i25 = i25;
                } else {
                    i4 = i7;
                    i6 = i5;
                    i25 = i25;
                }
            } else {
                i6 = i5;
            }
            if (i4 > i12) {
                this.f1325b = 2;
            }
            if (i3 > 0 && i6 == 0 && i == i2) {
                this.f1325b = 2;
            }
            int i36 = this.f1325b;
            if (i36 == 1) {
                int i37 = i3 > 1 ? (i12 - i4) / (i3 - 1) : i3 == 1 ? (i12 - i4) / 2 : 0;
                if (i6 > 0) {
                    i37 = 0;
                }
                for (int i38 = 0; i38 < size; i38++) {
                    p pVar4 = this.f1324a.get(z2 ? size - (i38 + 1) : i38);
                    if (pVar4.f1353d.ak == 8) {
                        pVar4.j.a(i25);
                        pVar4.k.a(i25);
                        i25 = i25;
                    } else {
                        int i39 = i25;
                        if (i38 > 0) {
                            i39 = z2 ? i25 - i37 : i25 + i37;
                        }
                        int i40 = i39;
                        if (i38 > 0) {
                            i40 = i39;
                            if (i38 >= i) {
                                i40 = z2 ? i39 - pVar4.j.f : i39 + pVar4.j.f;
                            }
                        }
                        if (z2) {
                            pVar4.k.a(i40);
                        } else {
                            pVar4.j.a(i40);
                        }
                        int i41 = pVar4.g.g;
                        int i42 = i41;
                        if (pVar4.f == e.a.MATCH_CONSTRAINT) {
                            i42 = i41;
                            if (pVar4.f1352c == 1) {
                                i42 = pVar4.g.m;
                            }
                        }
                        int i43 = z2 ? i40 - i42 : i40 + i42;
                        if (z2) {
                            pVar4.j.a(i43);
                        } else {
                            pVar4.k.a(i43);
                        }
                        pVar4.i = true;
                        i25 = i43;
                        if (i38 < i14) {
                            i25 = i43;
                            if (i38 < i2) {
                                i25 = z2 ? i43 - (-pVar4.k.f) : i43 + (-pVar4.k.f);
                            }
                        }
                    }
                }
            } else if (i36 == 0) {
                int i44 = (i12 - i4) / (i3 + 1);
                if (i6 > 0) {
                    i44 = 0;
                }
                for (int i45 = 0; i45 < size; i45++) {
                    p pVar5 = this.f1324a.get(z2 ? size - (i45 + 1) : i45);
                    if (pVar5.f1353d.ak == 8) {
                        pVar5.j.a(i25);
                        pVar5.k.a(i25);
                    } else {
                        int i46 = z2 ? i25 - i44 : i25 + i44;
                        int i47 = i46;
                        if (i45 > 0) {
                            i47 = i46;
                            if (i45 >= i) {
                                i47 = z2 ? i46 - pVar5.j.f : i46 + pVar5.j.f;
                            }
                        }
                        if (z2) {
                            pVar5.k.a(i47);
                        } else {
                            pVar5.j.a(i47);
                        }
                        int i48 = pVar5.g.g;
                        int i49 = i48;
                        if (pVar5.f == e.a.MATCH_CONSTRAINT) {
                            i49 = i48;
                            if (pVar5.f1352c == 1) {
                                i49 = Math.min(i48, pVar5.g.m);
                            }
                        }
                        int i50 = z2 ? i47 - i49 : i47 + i49;
                        if (z2) {
                            pVar5.j.a(i50);
                        } else {
                            pVar5.k.a(i50);
                        }
                        i25 = i50;
                        if (i45 < i14) {
                            i25 = i50;
                            if (i45 < i2) {
                                i25 = z2 ? i50 - (-pVar5.k.f) : i50 + (-pVar5.k.f);
                            }
                        }
                    }
                }
            } else if (i36 == 2) {
                float f5 = this.h == 0 ? this.f1353d.ah : this.f1353d.ai;
                float f6 = f5;
                if (z2) {
                    f6 = 1.0f - f5;
                }
                int i51 = (int) (((i12 - i4) * f6) + 0.5f);
                if (i51 < 0 || i6 > 0) {
                    i51 = 0;
                }
                int i52 = z2 ? i25 - i51 : i25 + i51;
                for (int i53 = 0; i53 < size; i53++) {
                    p pVar6 = this.f1324a.get(z2 ? size - (i53 + 1) : i53);
                    if (pVar6.f1353d.ak == 8) {
                        pVar6.j.a(i52);
                        pVar6.k.a(i52);
                    } else {
                        int i54 = i52;
                        if (i53 > 0) {
                            i54 = i52;
                            if (i53 >= i) {
                                i54 = z2 ? i52 - pVar6.j.f : i52 + pVar6.j.f;
                            }
                        }
                        if (z2) {
                            pVar6.k.a(i54);
                        } else {
                            pVar6.j.a(i54);
                        }
                        int i55 = pVar6.g.g;
                        if (pVar6.f == e.a.MATCH_CONSTRAINT && pVar6.f1352c == 1) {
                            i55 = pVar6.g.m;
                        }
                        int i56 = z2 ? i54 - i55 : i54 + i55;
                        if (z2) {
                            pVar6.j.a(i56);
                        } else {
                            pVar6.k.a(i56);
                        }
                        i52 = i56;
                        if (i53 < i14) {
                            i52 = i56;
                            if (i53 < i2) {
                                i52 = z2 ? i56 - (-pVar6.k.f) : i56 + (-pVar6.k.f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final void e() {
        for (int i = 0; i < this.f1324a.size(); i++) {
            this.f1324a.get(i).e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void f() {
        Iterator<p> it2 = this.f1324a.iterator();
        while (it2.hasNext()) {
            it2.next().f();
        }
        int size = this.f1324a.size();
        if (size > 0) {
            e eVar = this.f1324a.get(0).f1353d;
            e eVar2 = this.f1324a.get(size - 1).f1353d;
            if (this.h == 0) {
                d dVar = eVar.H;
                d dVar2 = eVar2.J;
                f a2 = a(dVar, 0);
                int e = dVar.e();
                e h = h();
                if (h != null) {
                    e = h.H.e();
                }
                if (a2 != null) {
                    a(this.j, a2, e);
                }
                f a3 = a(dVar2, 0);
                int e2 = dVar2.e();
                e i = i();
                if (i != null) {
                    e2 = i.J.e();
                }
                if (a3 != null) {
                    a(this.k, a3, -e2);
                }
            } else {
                d dVar3 = eVar.I;
                d dVar4 = eVar2.K;
                f a4 = a(dVar3, 1);
                int e3 = dVar3.e();
                e h2 = h();
                if (h2 != null) {
                    e3 = h2.I.e();
                }
                if (a4 != null) {
                    a(this.j, a4, e3);
                }
                f a5 = a(dVar4, 1);
                int e4 = dVar4.e();
                e i2 = i();
                if (i2 != null) {
                    e4 = i2.K.e();
                }
                if (a5 != null) {
                    a(this.k, a5, -e4);
                }
            }
            this.j.f1330a = this;
            this.k.f1330a = this;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.h == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<p> it2 = this.f1324a.iterator();
        while (it2.hasNext()) {
            p next = it2.next();
            sb2 = ((sb2 + "<") + next) + "> ";
        }
        return sb2;
    }
}
