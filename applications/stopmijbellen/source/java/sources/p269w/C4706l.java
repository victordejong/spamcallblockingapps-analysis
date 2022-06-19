package p269w;

import android.support.p012v4.media.C0082b;
import p258v.AbstractC4569g;
import p258v.C4564c;
import p258v.C4566d;
/* renamed from: w.l */
/* loaded from: classes-dex2jar.jar:w/l.class */
public class C4706l extends AbstractC4711p {

    /* renamed from: k */
    public static int[] f14542k = new int[2];

    public C4706l(C4566d c4566d) {
        super(c4566d);
        this.f14561h.f14530e = 4;
        this.f14562i.f14530e = 5;
        this.f14559f = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x04cf, code lost:
        if (r0 != 1) goto L134;
     */
    @Override // p269w.AbstractC4711p, p269w.AbstractC4698d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo561a(p269w.AbstractC4698d r10) {
        /*
            Method dump skipped, instructions count: 1984
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p269w.C4706l.mo561a(w.d):void");
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: d */
    public void mo558d() {
        C4566d c4566d;
        C4566d c4566d2;
        C4566d c4566d3;
        C4566d c4566d4 = this.f14555b;
        if (c4566d4.f14074a) {
            this.f14558e.mo583c(c4566d4.m795u());
        }
        if (!this.f14558e.f14535j) {
            int m802m = this.f14555b.m802m();
            this.f14557d = m802m;
            if (m802m != 3) {
                if (m802m == 4 && (c4566d3 = this.f14555b.f14069V) != null && (c4566d3.m802m() == 1 || c4566d3.m802m() == 4)) {
                    int m795u = c4566d3.m795u();
                    int m832d = this.f14555b.f14057J.m832d();
                    int m832d2 = this.f14555b.f14059L.m832d();
                    m560b(this.f14561h, c4566d3.f14080d.f14561h, this.f14555b.f14057J.m832d());
                    m560b(this.f14562i, c4566d3.f14080d.f14562i, -this.f14555b.f14059L.m832d());
                    this.f14558e.mo583c((m795u - m832d) - m832d2);
                    return;
                } else if (this.f14557d == 1) {
                    this.f14558e.mo583c(this.f14555b.m795u());
                }
            }
        } else if (this.f14557d == 4 && (c4566d2 = this.f14555b.f14069V) != null && (c4566d2.m802m() == 1 || c4566d2.m802m() == 4)) {
            m560b(this.f14561h, c4566d2.f14080d.f14561h, this.f14555b.f14057J.m832d());
            m560b(this.f14562i, c4566d2.f14080d.f14562i, -this.f14555b.f14059L.m832d());
            return;
        }
        C4701g c4701g = this.f14558e;
        if (c4701g.f14535j) {
            C4566d c4566d5 = this.f14555b;
            if (c4566d5.f14074a) {
                C4564c[] c4564cArr = c4566d5.f14065R;
                if (c4564cArr[0].f14035f != null && c4564cArr[1].f14035f != null) {
                    if (c4566d5.m825A()) {
                        this.f14561h.f14531f = this.f14555b.f14065R[0].m832d();
                        this.f14562i.f14531f = -this.f14555b.f14065R[1].m832d();
                        return;
                    }
                    C4700f m554h = m554h(this.f14555b.f14065R[0]);
                    if (m554h != null) {
                        C4700f c4700f = this.f14561h;
                        int m832d3 = this.f14555b.f14065R[0].m832d();
                        c4700f.f14537l.add(m554h);
                        c4700f.f14531f = m832d3;
                        m554h.f14536k.add(c4700f);
                    }
                    C4700f m554h2 = m554h(this.f14555b.f14065R[1]);
                    if (m554h2 != null) {
                        C4700f c4700f2 = this.f14562i;
                        int i = -this.f14555b.f14065R[1].m832d();
                        c4700f2.f14537l.add(m554h2);
                        c4700f2.f14531f = i;
                        m554h2.f14536k.add(c4700f2);
                    }
                    this.f14561h.f14527b = true;
                    this.f14562i.f14527b = true;
                    return;
                } else if (c4564cArr[0].f14035f != null) {
                    C4700f m554h3 = m554h(c4564cArr[0]);
                    if (m554h3 == null) {
                        return;
                    }
                    C4700f c4700f3 = this.f14561h;
                    int m832d4 = this.f14555b.f14065R[0].m832d();
                    c4700f3.f14537l.add(m554h3);
                    c4700f3.f14531f = m832d4;
                    m554h3.f14536k.add(c4700f3);
                    m560b(this.f14562i, this.f14561h, this.f14558e.f14532g);
                    return;
                } else if (c4564cArr[1].f14035f == null) {
                    if ((c4566d5 instanceof AbstractC4569g) || c4566d5.f14069V == null || c4566d5.mo769i(C4564c.EnumC4565a.CENTER).f14035f != null) {
                        return;
                    }
                    C4566d c4566d6 = this.f14555b;
                    m560b(this.f14561h, c4566d6.f14069V.f14080d.f14561h, c4566d6.m794v());
                    m560b(this.f14562i, this.f14561h, this.f14558e.f14532g);
                    return;
                } else {
                    C4700f m554h4 = m554h(c4564cArr[1]);
                    if (m554h4 == null) {
                        return;
                    }
                    C4700f c4700f4 = this.f14562i;
                    int i2 = -this.f14555b.f14065R[1].m832d();
                    c4700f4.f14537l.add(m554h4);
                    c4700f4.f14531f = i2;
                    m554h4.f14536k.add(c4700f4);
                    m560b(this.f14561h, this.f14562i, -this.f14558e.f14532g);
                    return;
                }
            }
        }
        if (this.f14557d == 3) {
            C4566d c4566d7 = this.f14555b;
            int i3 = c4566d7.f14108r;
            if (i3 == 2) {
                C4566d c4566d8 = c4566d7.f14069V;
                if (c4566d8 != null) {
                    C4701g c4701g2 = c4566d8.f14082e.f14558e;
                    c4701g.f14537l.add(c4701g2);
                    c4701g2.f14536k.add(this.f14558e);
                    C4701g c4701g3 = this.f14558e;
                    c4701g3.f14527b = true;
                    c4701g3.f14536k.add(this.f14561h);
                    this.f14558e.f14536k.add(this.f14562i);
                }
            } else if (i3 == 3) {
                if (c4566d7.f14109s == 3) {
                    this.f14561h.f14526a = this;
                    this.f14562i.f14526a = this;
                    C4708n c4708n = c4566d7.f14082e;
                    c4708n.f14561h.f14526a = this;
                    c4708n.f14562i.f14526a = this;
                    c4701g.f14526a = this;
                    if (c4566d7.m824B()) {
                        this.f14558e.f14537l.add(this.f14555b.f14082e.f14558e);
                        this.f14555b.f14082e.f14558e.f14536k.add(this.f14558e);
                        C4708n c4708n2 = this.f14555b.f14082e;
                        c4708n2.f14558e.f14526a = this;
                        this.f14558e.f14537l.add(c4708n2.f14561h);
                        this.f14558e.f14537l.add(this.f14555b.f14082e.f14562i);
                        this.f14555b.f14082e.f14561h.f14536k.add(this.f14558e);
                        this.f14555b.f14082e.f14562i.f14536k.add(this.f14558e);
                    } else if (this.f14555b.m825A()) {
                        this.f14555b.f14082e.f14558e.f14537l.add(this.f14558e);
                        this.f14558e.f14536k.add(this.f14555b.f14082e.f14558e);
                    } else {
                        this.f14555b.f14082e.f14558e.f14537l.add(this.f14558e);
                    }
                } else {
                    C4701g c4701g4 = c4566d7.f14082e.f14558e;
                    c4701g.f14537l.add(c4701g4);
                    c4701g4.f14536k.add(this.f14558e);
                    this.f14555b.f14082e.f14561h.f14536k.add(this.f14558e);
                    this.f14555b.f14082e.f14562i.f14536k.add(this.f14558e);
                    C4701g c4701g5 = this.f14558e;
                    c4701g5.f14527b = true;
                    c4701g5.f14536k.add(this.f14561h);
                    this.f14558e.f14536k.add(this.f14562i);
                    this.f14561h.f14537l.add(this.f14558e);
                    this.f14562i.f14537l.add(this.f14558e);
                }
            }
        }
        C4566d c4566d9 = this.f14555b;
        C4564c[] c4564cArr2 = c4566d9.f14065R;
        if (c4564cArr2[0].f14035f != null && c4564cArr2[1].f14035f != null) {
            if (c4566d9.m825A()) {
                this.f14561h.f14531f = this.f14555b.f14065R[0].m832d();
                this.f14562i.f14531f = -this.f14555b.f14065R[1].m832d();
                return;
            }
            C4700f m554h5 = m554h(this.f14555b.f14065R[0]);
            C4700f m554h6 = m554h(this.f14555b.f14065R[1]);
            if (m554h5 != null) {
                m554h5.f14536k.add(this);
                if (m554h5.f14535j) {
                    mo561a(this);
                }
            }
            if (m554h6 != null) {
                m554h6.f14536k.add(this);
                if (m554h6.f14535j) {
                    mo561a(this);
                }
            }
            this.f14563j = 4;
        } else if (c4564cArr2[0].f14035f != null) {
            C4700f m554h7 = m554h(c4564cArr2[0]);
            if (m554h7 == null) {
                return;
            }
            C4700f c4700f5 = this.f14561h;
            int m832d5 = this.f14555b.f14065R[0].m832d();
            c4700f5.f14537l.add(m554h7);
            c4700f5.f14531f = m832d5;
            m554h7.f14536k.add(c4700f5);
            m559c(this.f14562i, this.f14561h, 1, this.f14558e);
        } else if (c4564cArr2[1].f14035f == null) {
            if ((c4566d9 instanceof AbstractC4569g) || (c4566d = c4566d9.f14069V) == null) {
                return;
            }
            m560b(this.f14561h, c4566d.f14080d.f14561h, c4566d9.m794v());
            m559c(this.f14562i, this.f14561h, 1, this.f14558e);
        } else {
            C4700f m554h8 = m554h(c4564cArr2[1]);
            if (m554h8 == null) {
                return;
            }
            C4700f c4700f6 = this.f14562i;
            int i4 = -this.f14555b.f14065R[1].m832d();
            c4700f6.f14537l.add(m554h8);
            c4700f6.f14531f = i4;
            m554h8.f14536k.add(c4700f6);
            m559c(this.f14561h, this.f14562i, -1, this.f14558e);
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: e */
    public void mo557e() {
        C4700f c4700f = this.f14561h;
        if (c4700f.f14535j) {
            this.f14555b.f14075a0 = c4700f.f14532g;
        }
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: f */
    public void mo556f() {
        this.f14556c = null;
        this.f14561h.m584b();
        this.f14562i.m584b();
        this.f14558e.m584b();
        this.f14560g = false;
    }

    @Override // p269w.AbstractC4711p
    /* renamed from: k */
    public boolean mo551k() {
        return this.f14557d != 3 || this.f14555b.f14108r == 0;
    }

    /* renamed from: m */
    public final void m570m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else if (i5 != 1) {
                return;
            } else {
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 > i7) {
        } else {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* renamed from: n */
    public void m569n() {
        this.f14560g = false;
        this.f14561h.m584b();
        this.f14561h.f14535j = false;
        this.f14562i.m584b();
        this.f14562i.f14535j = false;
        this.f14558e.f14535j = false;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("HorizontalRun ");
        m8752j.append(this.f14555b.f14093j0);
        return m8752j.toString();
    }
}
