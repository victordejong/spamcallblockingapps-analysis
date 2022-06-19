package p269w;

import java.util.ArrayList;
import java.util.Iterator;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4567e;
/* renamed from: w.c */
/* loaded from: classes-dex2jar.jar:w/c.class */
public class C4697c extends AbstractC4711p {

    /* renamed from: k */
    public ArrayList<AbstractC4711p> f14516k = new ArrayList<>();

    /* renamed from: l */
    public int f14517l;

    public C4697c(C4566d c4566d, int i) {
        super(c4566d);
        this.f14559f = i;
        C4566d c4566d2 = this.f14555b;
        C4566d m800o = c4566d2.m800o(i);
        while (true) {
            C4566d c4566d3 = m800o;
            if (c4566d3 == null) {
                break;
            }
            c4566d2 = c4566d3;
            m800o = c4566d3.m800o(this.f14559f);
        }
        this.f14555b = c4566d2;
        ArrayList<AbstractC4711p> arrayList = this.f14516k;
        int i2 = this.f14559f;
        arrayList.add(i2 == 0 ? c4566d2.f14080d : i2 == 1 ? c4566d2.f14082e : null);
        C4566d m801n = c4566d2.m801n(this.f14559f);
        while (true) {
            C4566d c4566d4 = m801n;
            if (c4566d4 == null) {
                break;
            }
            ArrayList<AbstractC4711p> arrayList2 = this.f14516k;
            int i3 = this.f14559f;
            arrayList2.add(i3 == 0 ? c4566d4.f14080d : i3 == 1 ? c4566d4.f14082e : null);
            m801n = c4566d4.m801n(this.f14559f);
        }
        Iterator<AbstractC4711p> it2 = this.f14516k.iterator();
        while (it2.hasNext()) {
            AbstractC4711p next = it2.next();
            int i4 = this.f14559f;
            if (i4 == 0) {
                next.f14555b.f14076b = this;
            } else if (i4 == 1) {
                next.f14555b.f14078c = this;
            }
        }
        if ((this.f14559f == 0 && ((C4567e) this.f14555b.f14069V).f14134w0) && this.f14516k.size() > 1) {
            ArrayList<AbstractC4711p> arrayList3 = this.f14516k;
            this.f14555b = arrayList3.get(arrayList3.size() - 1).f14555b;
        }
        this.f14517l = this.f14559f == 0 ? this.f14555b.f14095k0 : this.f14555b.f14097l0;
    }

    @Override // p269w.AbstractC4711p, p269w.AbstractC4698d
    /* renamed from: a */
    public void mo561a(AbstractC4698d abstractC4698d) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        float f2;
        int i11;
        int i12;
        C4700f c4700f = this.f14561h;
        if (c4700f.f14535j) {
            C4700f c4700f2 = this.f14562i;
            if (!c4700f2.f14535j) {
                return;
            }
            C4566d c4566d = this.f14555b.f14069V;
            boolean z = c4566d instanceof C4567e ? ((C4567e) c4566d).f14134w0 : false;
            int i13 = c4700f2.f14532g - c4700f.f14532g;
            int size = this.f14516k.size();
            int i14 = 0;
            while (true) {
                if (i14 >= size) {
                    i = -1;
                    break;
                }
                i = i14;
                if (this.f14516k.get(i14).f14555b.f14091i0 != 8) {
                    break;
                }
                i14++;
            }
            int i15 = size - 1;
            int i16 = i15;
            while (true) {
                i2 = -1;
                if (i16 < 0) {
                    break;
                }
                if (this.f14516k.get(i16).f14555b.f14091i0 != 8) {
                    i2 = i16;
                    break;
                }
                i16--;
            }
            for (int i17 = 0; i17 < 2; i17++) {
                int i18 = 0;
                i5 = 0;
                int i19 = 0;
                int i20 = 0;
                f = 0.0f;
                while (i18 < size) {
                    AbstractC4711p abstractC4711p = this.f14516k.get(i18);
                    C4566d c4566d2 = abstractC4711p.f14555b;
                    if (c4566d2.f14091i0 == 8) {
                        i10 = i19;
                    } else {
                        int i21 = i20 + 1;
                        int i22 = i5;
                        if (i18 > 0) {
                            i22 = i5;
                            if (i18 >= i) {
                                i22 = i5 + abstractC4711p.f14561h.f14531f;
                            }
                        }
                        C4701g c4701g = abstractC4711p.f14558e;
                        int i23 = c4701g.f14532g;
                        boolean z2 = abstractC4711p.f14557d != 3;
                        if (z2) {
                            int i24 = this.f14559f;
                            if (i24 == 0 && !c4566d2.f14080d.f14558e.f14535j) {
                                return;
                            }
                            if (i24 == 1 && !c4566d2.f14082e.f14558e.f14535j) {
                                return;
                            }
                        } else {
                            if (abstractC4711p.f14554a == 1 && i17 == 0) {
                                i12 = c4701g.f14538m;
                                i19++;
                            } else if (c4701g.f14535j) {
                                i12 = i23;
                            }
                            i23 = i12;
                            z2 = true;
                        }
                        if (!z2) {
                            int i25 = i19 + 1;
                            float f3 = c4566d2.f14099m0[this.f14559f];
                            i11 = i22;
                            i19 = i25;
                            f2 = f;
                            if (f3 >= 0.0f) {
                                f2 = f + f3;
                                i11 = i22;
                                i19 = i25;
                            }
                        } else {
                            i11 = i22 + i23;
                            f2 = f;
                        }
                        i5 = i11;
                        i10 = i19;
                        i20 = i21;
                        f = f2;
                        if (i18 < i15) {
                            i5 = i11;
                            i10 = i19;
                            i20 = i21;
                            f = f2;
                            if (i18 < i2) {
                                i5 = i11 + (-abstractC4711p.f14562i.f14531f);
                                f = f2;
                                i20 = i21;
                                i10 = i19;
                            }
                        }
                    }
                    i18++;
                    i19 = i10;
                }
                if (i5 < i13 || i19 == 0) {
                    i4 = i20;
                    i3 = i19;
                    break;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = 0.0f;
            int i26 = this.f14561h.f14532g;
            if (z) {
                i26 = this.f14562i.f14532g;
            }
            int i27 = i26;
            if (i5 > i13) {
                int i28 = (int) (((i5 - i13) / 2.0f) + 0.5f);
                i27 = z ? i26 + i28 : i26 - i28;
            }
            if (i3 > 0) {
                float f4 = i13 - i5;
                int i29 = (int) ((f4 / i3) + 0.5f);
                int i30 = i5;
                int i31 = 0;
                int i32 = i27;
                for (int i33 = 0; i33 < size; i33++) {
                    AbstractC4711p abstractC4711p2 = this.f14516k.get(i33);
                    C4566d c4566d3 = abstractC4711p2.f14555b;
                    if (c4566d3.f14091i0 != 8 && abstractC4711p2.f14557d == 3) {
                        C4701g c4701g2 = abstractC4711p2.f14558e;
                        if (!c4701g2.f14535j) {
                            int i34 = f > 0.0f ? (int) (((c4566d3.f14099m0[this.f14559f] * f4) / f) + 0.5f) : i29;
                            if (this.f14559f == 0) {
                                i8 = c4566d3.f14112v;
                                i9 = c4566d3.f14111u;
                            } else {
                                i8 = c4566d3.f14115y;
                                i9 = c4566d3.f14114x;
                            }
                            int max = Math.max(i9, abstractC4711p2.f14554a == 1 ? Math.min(i34, c4701g2.f14538m) : i34);
                            int i35 = max;
                            if (i8 > 0) {
                                i35 = Math.min(i8, max);
                            }
                            int i36 = i34;
                            int i37 = i31;
                            if (i35 != i34) {
                                i37 = i31 + 1;
                                i36 = i35;
                            }
                            abstractC4711p2.f14558e.mo583c(i36);
                            i31 = i37;
                        }
                    }
                }
                if (i31 > 0) {
                    int i38 = i3 - i31;
                    i7 = 0;
                    for (int i39 = 0; i39 < size; i39++) {
                        AbstractC4711p abstractC4711p3 = this.f14516k.get(i39);
                        if (abstractC4711p3.f14555b.f14091i0 != 8) {
                            int i40 = i7;
                            if (i39 > 0) {
                                i40 = i7;
                                if (i39 >= i) {
                                    i40 = i7 + abstractC4711p3.f14561h.f14531f;
                                }
                            }
                            int i41 = i40 + abstractC4711p3.f14558e.f14532g;
                            i7 = i41;
                            if (i39 < i15) {
                                i7 = i41;
                                if (i39 < i2) {
                                    i7 = i41 + (-abstractC4711p3.f14562i.f14531f);
                                }
                            }
                        }
                    }
                    i3 = i38;
                } else {
                    i7 = i30;
                }
                if (this.f14517l == 2 && i31 == 0) {
                    this.f14517l = 0;
                    i6 = i3;
                    i5 = i7;
                    i27 = i32;
                } else {
                    i6 = i3;
                    i5 = i7;
                    i27 = i32;
                }
            } else {
                i6 = i3;
            }
            if (i5 > i13) {
                this.f14517l = 2;
            }
            if (i4 > 0 && i6 == 0 && i == i2) {
                this.f14517l = 2;
            }
            int i42 = this.f14517l;
            if (i42 != 1) {
                if (i42 == 0) {
                    int i43 = (i13 - i5) / (i4 + 1);
                    if (i6 > 0) {
                        i43 = 0;
                    }
                    for (int i44 = 0; i44 < size; i44++) {
                        AbstractC4711p abstractC4711p4 = this.f14516k.get(z ? size - (i44 + 1) : i44);
                        if (abstractC4711p4.f14555b.f14091i0 == 8) {
                            abstractC4711p4.f14561h.mo583c(i27);
                            abstractC4711p4.f14562i.mo583c(i27);
                        } else {
                            int i45 = z ? i27 - i43 : i27 + i43;
                            int i46 = i45;
                            if (i44 > 0) {
                                i46 = i45;
                                if (i44 >= i) {
                                    i46 = z ? i45 - abstractC4711p4.f14561h.f14531f : i45 + abstractC4711p4.f14561h.f14531f;
                                }
                            }
                            if (z) {
                                abstractC4711p4.f14562i.mo583c(i46);
                            } else {
                                abstractC4711p4.f14561h.mo583c(i46);
                            }
                            C4701g c4701g3 = abstractC4711p4.f14558e;
                            int i47 = c4701g3.f14532g;
                            int i48 = i47;
                            if (abstractC4711p4.f14557d == 3) {
                                i48 = i47;
                                if (abstractC4711p4.f14554a == 1) {
                                    i48 = Math.min(i47, c4701g3.f14538m);
                                }
                            }
                            int i49 = z ? i46 - i48 : i46 + i48;
                            if (z) {
                                abstractC4711p4.f14561h.mo583c(i49);
                            } else {
                                abstractC4711p4.f14562i.mo583c(i49);
                            }
                            i27 = i49;
                            if (i44 < i15) {
                                i27 = i49;
                                if (i44 < i2) {
                                    i27 = z ? i49 - (-abstractC4711p4.f14562i.f14531f) : i49 + (-abstractC4711p4.f14562i.f14531f);
                                }
                            }
                        }
                    }
                    return;
                } else if (i42 != 2) {
                    return;
                } else {
                    float f5 = this.f14559f == 0 ? this.f14555b.f14085f0 : this.f14555b.f14087g0;
                    float f6 = f5;
                    if (z) {
                        f6 = 1.0f - f5;
                    }
                    int i50 = (int) (((i13 - i5) * f6) + 0.5f);
                    if (i50 < 0 || i6 > 0) {
                        i50 = 0;
                    }
                    int i51 = z ? i27 - i50 : i27 + i50;
                    for (int i52 = 0; i52 < size; i52++) {
                        AbstractC4711p abstractC4711p5 = this.f14516k.get(z ? size - (i52 + 1) : i52);
                        if (abstractC4711p5.f14555b.f14091i0 == 8) {
                            abstractC4711p5.f14561h.mo583c(i51);
                            abstractC4711p5.f14562i.mo583c(i51);
                        } else {
                            int i53 = i51;
                            if (i52 > 0) {
                                i53 = i51;
                                if (i52 >= i) {
                                    i53 = z ? i51 - abstractC4711p5.f14561h.f14531f : i51 + abstractC4711p5.f14561h.f14531f;
                                }
                            }
                            if (z) {
                                abstractC4711p5.f14562i.mo583c(i53);
                            } else {
                                abstractC4711p5.f14561h.mo583c(i53);
                            }
                            C4701g c4701g4 = abstractC4711p5.f14558e;
                            int i54 = c4701g4.f14532g;
                            if (abstractC4711p5.f14557d == 3 && abstractC4711p5.f14554a == 1) {
                                i54 = c4701g4.f14538m;
                            }
                            int i55 = z ? i53 - i54 : i53 + i54;
                            if (z) {
                                abstractC4711p5.f14561h.mo583c(i55);
                            } else {
                                abstractC4711p5.f14562i.mo583c(i55);
                            }
                            i51 = i55;
                            if (i52 < i15) {
                                i51 = i55;
                                if (i52 < i2) {
                                    i51 = z ? i55 - (-abstractC4711p5.f14562i.f14531f) : i55 + (-abstractC4711p5.f14562i.f14531f);
                                }
                            }
                        }
                    }
                    return;
                }
            }
            int i56 = i4 > 1 ? (i13 - i5) / (i4 - 1) : i4 == 1 ? (i13 - i5) / 2 : 0;
            if (i6 > 0) {
                i56 = 0;
            }
            int i57 = 0;
            while (true) {
                int i58 = i27;
                if (i57 >= size) {
                    return;
                }
                AbstractC4711p abstractC4711p6 = this.f14516k.get(z ? size - (i57 + 1) : i57);
                if (abstractC4711p6.f14555b.f14091i0 == 8) {
                    abstractC4711p6.f14561h.mo583c(i58);
                    abstractC4711p6.f14562i.mo583c(i58);
                    i27 = i58;
                } else {
                    int i59 = i58;
                    if (i57 > 0) {
                        i59 = z ? i58 - i56 : i58 + i56;
                    }
                    int i60 = i59;
                    if (i57 > 0) {
                        i60 = i59;
                        if (i57 >= i) {
                            i60 = z ? i59 - abstractC4711p6.f14561h.f14531f : i59 + abstractC4711p6.f14561h.f14531f;
                        }
                    }
                    if (z) {
                        abstractC4711p6.f14562i.mo583c(i60);
                    } else {
                        abstractC4711p6.f14561h.mo583c(i60);
                    }
                    C4701g c4701g5 = abstractC4711p6.f14558e;
                    int i61 = c4701g5.f14532g;
                    int i62 = i61;
                    if (abstractC4711p6.f14557d == 3) {
                        i62 = i61;
                        if (abstractC4711p6.f14554a == 1) {
                            i62 = c4701g5.f14538m;
                        }
                    }
                    int i63 = z ? i60 - i62 : i60 + i62;
                    if (z) {
                        abstractC4711p6.f14561h.mo583c(i63);
                    } else {
                        abstractC4711p6.f14562i.mo583c(i63);
                    }
                    abstractC4711p6.f14560g = true;
                    i27 = i63;
                    if (i57 < i15) {
                        i27 = i63;
                        if (i57 < i2) {
                            i27 = z ? i63 - (-abstractC4711p6.f14562i.f14531f) : i63 + (-abstractC4711p6.f14562i.f14531f);
                        }
                    }
                }
                i57++;
            }
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: d */
    public void mo558d() {
        Iterator<AbstractC4711p> it2 = this.f14516k.iterator();
        while (it2.hasNext()) {
            it2.next().mo558d();
        }
        int size = this.f14516k.size();
        if (size < 1) {
            return;
        }
        C4566d c4566d = this.f14516k.get(0).f14555b;
        C4566d c4566d2 = this.f14516k.get(size - 1).f14555b;
        if (this.f14559f == 0) {
            C4564c c4564c = c4566d.f14057J;
            C4564c c4564c2 = c4566d2.f14059L;
            C4700f m553i = m553i(c4564c, 0);
            int m832d = c4564c.m832d();
            C4566d m593m = m593m();
            if (m593m != null) {
                m832d = m593m.f14057J.m832d();
            }
            if (m553i != null) {
                C4700f c4700f = this.f14561h;
                c4700f.f14537l.add(m553i);
                c4700f.f14531f = m832d;
                m553i.f14536k.add(c4700f);
            }
            C4700f m553i2 = m553i(c4564c2, 0);
            int m832d2 = c4564c2.m832d();
            C4566d m592n = m592n();
            if (m592n != null) {
                m832d2 = m592n.f14059L.m832d();
            }
            if (m553i2 != null) {
                C4700f c4700f2 = this.f14562i;
                c4700f2.f14537l.add(m553i2);
                c4700f2.f14531f = -m832d2;
                m553i2.f14536k.add(c4700f2);
            }
        } else {
            C4564c c4564c3 = c4566d.f14058K;
            C4564c c4564c4 = c4566d2.f14060M;
            C4700f m553i3 = m553i(c4564c3, 1);
            int m832d3 = c4564c3.m832d();
            C4566d m593m2 = m593m();
            if (m593m2 != null) {
                m832d3 = m593m2.f14058K.m832d();
            }
            if (m553i3 != null) {
                C4700f c4700f3 = this.f14561h;
                c4700f3.f14537l.add(m553i3);
                c4700f3.f14531f = m832d3;
                m553i3.f14536k.add(c4700f3);
            }
            C4700f m553i4 = m553i(c4564c4, 1);
            int m832d4 = c4564c4.m832d();
            C4566d m592n2 = m592n();
            if (m592n2 != null) {
                m832d4 = m592n2.f14060M.m832d();
            }
            if (m553i4 != null) {
                C4700f c4700f4 = this.f14562i;
                c4700f4.f14537l.add(m553i4);
                c4700f4.f14531f = -m832d4;
                m553i4.f14536k.add(c4700f4);
            }
        }
        this.f14561h.f14526a = this;
        this.f14562i.f14526a = this;
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: e */
    public void mo557e() {
        for (int i = 0; i < this.f14516k.size(); i++) {
            this.f14516k.get(i).mo557e();
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: f */
    public void mo556f() {
        this.f14556c = null;
        Iterator<AbstractC4711p> it2 = this.f14516k.iterator();
        while (it2.hasNext()) {
            it2.next().mo556f();
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    @Override // p269w.AbstractC4711p
    /* renamed from: j */
    public long mo552j() {
        int size = this.f14516k.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            AbstractC4711p abstractC4711p = this.f14516k.get(i);
            c = abstractC4711p.f14562i.f14531f + abstractC4711p.mo552j() + c + abstractC4711p.f14561h.f14531f;
        }
        return c;
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: k */
    public boolean mo551k() {
        int size = this.f14516k.size();
        for (int i = 0; i < size; i++) {
            if (!this.f14516k.get(i).mo551k()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: m */
    public final C4566d m593m() {
        for (int i = 0; i < this.f14516k.size(); i++) {
            C4566d c4566d = this.f14516k.get(i).f14555b;
            if (c4566d.f14091i0 != 8) {
                return c4566d;
            }
        }
        return null;
    }

    /* renamed from: n */
    public final C4566d m592n() {
        for (int size = this.f14516k.size() - 1; size >= 0; size--) {
            C4566d c4566d = this.f14516k.get(size).f14555b;
            if (c4566d.f14091i0 != 8) {
                return c4566d;
            }
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f14559f == 0 ? "horizontal : " : "vertical : ");
        Iterator<AbstractC4711p> it2 = this.f14516k.iterator();
        while (it2.hasNext()) {
            sb.append("<");
            sb.append(it2.next());
            sb.append("> ");
        }
        return sb.toString();
    }
}
