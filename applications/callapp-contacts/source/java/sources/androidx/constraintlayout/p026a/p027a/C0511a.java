package androidx.constraintlayout.p026a.p027a;

import androidx.constraintlayout.p026a.C0554b;
import androidx.constraintlayout.p026a.C0557d;
import androidx.constraintlayout.p026a.C0567h;
import androidx.constraintlayout.p026a.p027a.C0538d;
import androidx.constraintlayout.p026a.p027a.C0541e;
import java.util.HashMap;
/* renamed from: androidx.constraintlayout.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a.class */
public final class C0511a extends C0550j {

    /* renamed from: a */
    public int f1920a = 0;

    /* renamed from: b */
    public boolean f1921b = true;

    /* renamed from: c */
    public int f1922c = 0;

    /* renamed from: d */
    boolean f1923d = false;

    public C0511a() {
    }

    public C0511a(String str) {
        this.f2092al = str;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0550j, androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45180a(C0541e c0541e, HashMap<C0541e, C0541e> hashMap) {
        super.mo45180a(c0541e, hashMap);
        C0511a c0511a = (C0511a) c0541e;
        this.f1920a = c0511a.f1920a;
        this.f1921b = c0511a.f1921b;
        this.f1922c = c0511a.f1922c;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final void mo45192a(C0557d c0557d, boolean z) {
        boolean z2;
        int i;
        int i2;
        int i3;
        this.f2057P[0] = this.f2049H;
        this.f2057P[2] = this.f2050I;
        this.f2057P[1] = this.f2051J;
        this.f2057P[3] = this.f2052K;
        for (int i4 = 0; i4 < this.f2057P.length; i4++) {
            this.f2057P[i4].f2039i = c0557d.m45138a(this.f2057P[i4]);
        }
        int i5 = this.f1920a;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        C0538d c0538d = this.f2057P[this.f1920a];
        if (!this.f1923d) {
            m45369f();
        }
        if (this.f1923d) {
            this.f1923d = false;
            int i6 = this.f1920a;
            if (i6 == 0 || i6 == 1) {
                c0557d.m45142a(this.f2049H.f2039i, this.f2065X);
                c0557d.m45142a(this.f2051J.f2039i, this.f2065X);
                return;
            } else if (i6 != 2 && i6 != 3) {
                return;
            } else {
                c0557d.m45142a(this.f2050I.f2039i, this.f2066Y);
                c0557d.m45142a(this.f2052K.f2039i, this.f2066Y);
                return;
            }
        }
        for (int i7 = 0; i7 < this.f2216aY; i7++) {
            C0541e c0541e = this.f2215aX[i7];
            if ((this.f1921b || c0541e.mo45195a()) && ((((i2 = this.f1920a) == 0 || i2 == 1) && c0541e.f2059R[0] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2049H.f2036f != null && c0541e.f2051J.f2036f != null) || (((i3 = this.f1920a) == 2 || i3 == 3) && c0541e.f2059R[1] == C0541e.EnumC0543a.MATCH_CONSTRAINT && c0541e.f2050I.f2036f != null && c0541e.f2052K.f2036f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.f2049H.m45305b() || this.f2051J.m45305b();
        boolean z4 = this.f2050I.m45305b() || this.f2052K.m45305b();
        boolean z5 = !z2 && (((i = this.f1920a) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))));
        int i8 = 5;
        if (!z5) {
            i8 = 4;
        }
        for (int i9 = 0; i9 < this.f2216aY; i9++) {
            C0541e c0541e2 = this.f2215aX[i9];
            if (this.f1921b || c0541e2.mo45195a()) {
                C0567h m45138a = c0557d.m45138a(c0541e2.f2057P[this.f1920a]);
                c0541e2.f2057P[this.f1920a].f2039i = m45138a;
                int i10 = (c0541e2.f2057P[this.f1920a].f2036f == null || c0541e2.f2057P[this.f1920a].f2036f.f2034d != this) ? 0 : c0541e2.f2057P[this.f1920a].f2037g + 0;
                int i11 = this.f1920a;
                if (i11 == 0 || i11 == 2) {
                    C0567h c0567h = c0538d.f2039i;
                    int i12 = this.f1922c;
                    C0554b m45132c = c0557d.m45132c();
                    C0567h m45130d = c0557d.m45130d();
                    m45130d.f2322d = 0;
                    m45132c.m45152b(c0567h, m45138a, m45130d, i12 - i10);
                    c0557d.m45147a(m45132c);
                } else {
                    C0567h c0567h2 = c0538d.f2039i;
                    int i13 = this.f1922c;
                    C0554b m45132c2 = c0557d.m45132c();
                    C0567h m45130d2 = c0557d.m45130d();
                    m45130d2.f2322d = 0;
                    m45132c2.m45156a(c0567h2, m45138a, m45130d2, i13 + i10);
                    c0557d.m45147a(m45132c2);
                }
                c0557d.m45131c(c0538d.f2039i, m45138a, this.f1922c + i10, i8);
            }
        }
        int i14 = this.f1920a;
        if (i14 == 0) {
            c0557d.m45131c(this.f2051J.f2039i, this.f2049H.f2039i, 0, 8);
            c0557d.m45131c(this.f2049H.f2039i, this.f2060S.f2051J.f2039i, 0, 4);
            c0557d.m45131c(this.f2049H.f2039i, this.f2060S.f2049H.f2039i, 0, 0);
        } else if (i14 == 1) {
            c0557d.m45131c(this.f2049H.f2039i, this.f2051J.f2039i, 0, 8);
            c0557d.m45131c(this.f2049H.f2039i, this.f2060S.f2049H.f2039i, 0, 4);
            c0557d.m45131c(this.f2049H.f2039i, this.f2060S.f2051J.f2039i, 0, 0);
        } else if (i14 == 2) {
            c0557d.m45131c(this.f2052K.f2039i, this.f2050I.f2039i, 0, 8);
            c0557d.m45131c(this.f2050I.f2039i, this.f2060S.f2052K.f2039i, 0, 4);
            c0557d.m45131c(this.f2050I.f2039i, this.f2060S.f2050I.f2039i, 0, 0);
        } else if (i14 == 3) {
            c0557d.m45131c(this.f2050I.f2039i, this.f2052K.f2039i, 0, 8);
            c0557d.m45131c(this.f2050I.f2039i, this.f2060S.f2050I.f2039i, 0, 4);
            c0557d.m45131c(this.f2050I.f2039i, this.f2060S.f2052K.f2039i, 0, 0);
        }
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: a */
    public final boolean mo45195a() {
        return true;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: b */
    public final boolean mo45191b() {
        return this.f1923d;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    /* renamed from: c */
    public final boolean mo45189c() {
        return this.f1923d;
    }

    /* renamed from: d */
    public final void m45371d() {
        for (int i = 0; i < this.f2216aY; i++) {
            C0541e c0541e = this.f2215aX[i];
            int i2 = this.f1920a;
            if (i2 == 0 || i2 == 1) {
                c0541e.m45294a(0, true);
            } else if (i2 == 2 || i2 == 3) {
                c0541e.m45294a(1, true);
            }
        }
    }

    /* renamed from: e */
    public final int m45370e() {
        int i = this.f1920a;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    /* renamed from: f */
    public final boolean m45369f() {
        boolean z;
        boolean z2;
        int i;
        int i2;
        boolean z3;
        int i3 = 0;
        int i4 = 0;
        boolean z4 = true;
        while (true) {
            z = z4;
            if (i4 >= this.f2216aY) {
                break;
            }
            C0541e c0541e = this.f2215aX[i4];
            if (!this.f1921b) {
                z3 = z;
                if (!c0541e.mo45195a()) {
                    i4++;
                    z4 = z3;
                }
            }
            int i5 = this.f1920a;
            if ((i5 != 0 && i5 != 1) || c0541e.mo45191b()) {
                int i6 = this.f1920a;
                if (i6 != 2) {
                    z3 = z;
                    if (i6 != 3) {
                        i4++;
                        z4 = z3;
                    }
                }
                z3 = z;
                if (c0541e.mo45189c()) {
                    i4++;
                    z4 = z3;
                }
            }
            z3 = false;
            i4++;
            z4 = z3;
        }
        if (!z || this.f2216aY <= 0) {
            return false;
        }
        int i7 = 0;
        boolean z5 = false;
        while (true) {
            boolean z6 = z5;
            if (i3 >= this.f2216aY) {
                break;
            }
            C0541e c0541e2 = this.f2215aX[i3];
            if (!this.f1921b) {
                i = i7;
                z2 = z6;
                if (!c0541e2.mo45195a()) {
                    i3++;
                    i7 = i;
                    z5 = z2;
                }
            }
            int i8 = i7;
            boolean z7 = z6;
            if (!z6) {
                int i9 = this.f1920a;
                if (i9 == 0) {
                    i2 = c0541e2.mo45193a(C0538d.EnumC0540a.LEFT).m45303c();
                } else if (i9 == 1) {
                    i2 = c0541e2.mo45193a(C0538d.EnumC0540a.RIGHT).m45303c();
                } else if (i9 == 2) {
                    i2 = c0541e2.mo45193a(C0538d.EnumC0540a.TOP).m45303c();
                } else {
                    i2 = i7;
                    if (i9 == 3) {
                        i2 = c0541e2.mo45193a(C0538d.EnumC0540a.BOTTOM).m45303c();
                    }
                }
                z7 = true;
                i8 = i2;
            }
            int i10 = this.f1920a;
            if (i10 == 0) {
                i = Math.min(i8, c0541e2.mo45193a(C0538d.EnumC0540a.LEFT).m45303c());
                z2 = z7;
            } else if (i10 == 1) {
                i = Math.max(i8, c0541e2.mo45193a(C0538d.EnumC0540a.RIGHT).m45303c());
                z2 = z7;
            } else if (i10 == 2) {
                i = Math.min(i8, c0541e2.mo45193a(C0538d.EnumC0540a.TOP).m45303c());
                z2 = z7;
            } else {
                i = i8;
                z2 = z7;
                if (i10 == 3) {
                    i = Math.max(i8, c0541e2.mo45193a(C0538d.EnumC0540a.BOTTOM).m45303c());
                    z2 = z7;
                }
            }
            i3++;
            i7 = i;
            z5 = z2;
        }
        int i11 = i7 + this.f1922c;
        int i12 = this.f1920a;
        if (i12 == 0 || i12 == 1) {
            m45296a(i11, i11);
        } else {
            m45283b(i11, i11);
        }
        this.f1923d = true;
        return true;
    }

    @Override // androidx.constraintlayout.p026a.p027a.C0541e
    public final String toString() {
        String str = "[Barrier] " + this.f2092al + " {";
        for (int i = 0; i < this.f2216aY; i++) {
            C0541e c0541e = this.f2215aX[i];
            String str2 = str;
            if (i > 0) {
                str2 = str + ", ";
            }
            str = str2 + c0541e.f2092al;
        }
        return str + "}";
    }
}
