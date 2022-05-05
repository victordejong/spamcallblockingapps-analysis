package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.t0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/t0.class */
public final class C8734t0 extends AbstractC8714q7<C8734t0> {

    /* renamed from: c */
    public Long f19977c = null;

    /* renamed from: d */
    public String f19978d = null;

    /* renamed from: e */
    public Integer f19979e = null;

    /* renamed from: f */
    public C8743u0[] f19980f = C8743u0.m17122e();

    /* renamed from: g */
    public C8725s0[] f19981g = C8725s0.m17209e();

    /* renamed from: h */
    public C8670m0[] f19982h = C8670m0.m17415e();

    /* renamed from: i */
    public String f19983i = null;

    public C8734t0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Long l = this.f19977c;
        int i = a;
        if (l != null) {
            i = a + C8696o7.m17249c(1, l.longValue());
        }
        String str = this.f19978d;
        int i2 = i;
        if (str != null) {
            i2 = i + C8696o7.m17254b(2, str);
        }
        Integer num = this.f19979e;
        int i3 = i2;
        if (num != null) {
            i3 = i2 + C8696o7.m17250c(3, num.intValue());
        }
        C8743u0[] u0VarArr = this.f19980f;
        int i4 = 0;
        int i5 = i3;
        if (u0VarArr != null) {
            i5 = i3;
            if (u0VarArr.length > 0) {
                int i6 = 0;
                while (true) {
                    C8743u0[] u0VarArr2 = this.f19980f;
                    if (i6 >= u0VarArr2.length) {
                        break;
                    }
                    C8743u0 u0Var = u0VarArr2[i6];
                    i3 = i3;
                    if (u0Var != null) {
                        i3 += C8696o7.m17255b(4, u0Var);
                    }
                    i6++;
                }
                i5 = i3;
            }
        }
        C8725s0[] s0VarArr = this.f19981g;
        int i7 = i5;
        if (s0VarArr != null) {
            i7 = i5;
            if (s0VarArr.length > 0) {
                i7 = i5;
                int i8 = 0;
                while (true) {
                    C8725s0[] s0VarArr2 = this.f19981g;
                    if (i8 >= s0VarArr2.length) {
                        break;
                    }
                    C8725s0 s0Var = s0VarArr2[i8];
                    i7 = i7;
                    if (s0Var != null) {
                        i7 += C8696o7.m17255b(5, s0Var);
                    }
                    i8++;
                }
            }
        }
        C8670m0[] m0VarArr = this.f19982h;
        int i9 = i7;
        if (m0VarArr != null) {
            i9 = i7;
            if (m0VarArr.length > 0) {
                while (true) {
                    C8670m0[] m0VarArr2 = this.f19982h;
                    i9 = i7;
                    if (i4 >= m0VarArr2.length) {
                        break;
                    }
                    C8670m0 m0Var = m0VarArr2[i4];
                    i7 = i7;
                    if (m0Var != null) {
                        i7 += C8696o7.m17255b(6, m0Var);
                    }
                    i4++;
                }
            }
        }
        String str2 = this.f19983i;
        int i10 = i9;
        if (str2 != null) {
            i10 = i9 + C8696o7.m17254b(7, str2);
        }
        return i10;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            if (c == 0) {
                return this;
            }
            if (c == 8) {
                this.f19977c = Long.valueOf(n7Var.m17294f());
            } else if (c == 18) {
                this.f19978d = n7Var.m17303b();
            } else if (c == 24) {
                this.f19979e = Integer.valueOf(n7Var.m17296e());
            } else if (c == 34) {
                int a = C8799z7.m16920a(n7Var, 34);
                C8743u0[] u0VarArr = this.f19980f;
                int length = u0VarArr == null ? 0 : u0VarArr.length;
                C8743u0[] u0VarArr2 = new C8743u0[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19980f, 0, u0VarArr2, 0, length);
                    i = length;
                }
                while (i < u0VarArr2.length - 1) {
                    u0VarArr2[i] = new C8743u0();
                    n7Var.m17305a(u0VarArr2[i]);
                    n7Var.m17300c();
                    i++;
                }
                u0VarArr2[i] = new C8743u0();
                n7Var.m17305a(u0VarArr2[i]);
                this.f19980f = u0VarArr2;
            } else if (c == 42) {
                int a2 = C8799z7.m16920a(n7Var, 42);
                C8725s0[] s0VarArr = this.f19981g;
                int length2 = s0VarArr == null ? 0 : s0VarArr.length;
                C8725s0[] s0VarArr2 = new C8725s0[a2 + length2];
                int i2 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.f19981g, 0, s0VarArr2, 0, length2);
                    i2 = length2;
                }
                while (i2 < s0VarArr2.length - 1) {
                    s0VarArr2[i2] = new C8725s0();
                    n7Var.m17305a(s0VarArr2[i2]);
                    n7Var.m17300c();
                    i2++;
                }
                s0VarArr2[i2] = new C8725s0();
                n7Var.m17305a(s0VarArr2[i2]);
                this.f19981g = s0VarArr2;
            } else if (c == 50) {
                int a3 = C8799z7.m16920a(n7Var, 50);
                C8670m0[] m0VarArr = this.f19982h;
                int length3 = m0VarArr == null ? 0 : m0VarArr.length;
                C8670m0[] m0VarArr2 = new C8670m0[a3 + length3];
                int i3 = length3;
                if (length3 != 0) {
                    System.arraycopy(this.f19982h, 0, m0VarArr2, 0, length3);
                    i3 = length3;
                }
                while (i3 < m0VarArr2.length - 1) {
                    m0VarArr2[i3] = new C8670m0();
                    n7Var.m17305a(m0VarArr2[i3]);
                    n7Var.m17300c();
                    i3++;
                }
                m0VarArr2[i3] = new C8670m0();
                n7Var.m17305a(m0VarArr2[i3]);
                this.f19982h = m0VarArr2;
            } else if (c == 58) {
                this.f19983i = n7Var.m17303b();
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Long l = this.f19977c;
        if (l != null) {
            o7Var.m17256b(1, l.longValue());
        }
        String str = this.f19978d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        Integer num = this.f19979e;
        if (num != null) {
            o7Var.m17257b(3, num.intValue());
        }
        C8743u0[] u0VarArr = this.f19980f;
        int i = 0;
        if (u0VarArr != null && u0VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C8743u0[] u0VarArr2 = this.f19980f;
                if (i2 >= u0VarArr2.length) {
                    break;
                }
                C8743u0 u0Var = u0VarArr2[i2];
                if (u0Var != null) {
                    o7Var.m17269a(4, u0Var);
                }
                i2++;
            }
        }
        C8725s0[] s0VarArr = this.f19981g;
        if (s0VarArr != null && s0VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                C8725s0[] s0VarArr2 = this.f19981g;
                if (i3 >= s0VarArr2.length) {
                    break;
                }
                C8725s0 s0Var = s0VarArr2[i3];
                if (s0Var != null) {
                    o7Var.m17269a(5, s0Var);
                }
                i3++;
            }
        }
        C8670m0[] m0VarArr = this.f19982h;
        if (m0VarArr != null && m0VarArr.length > 0) {
            while (true) {
                C8670m0[] m0VarArr2 = this.f19982h;
                if (i >= m0VarArr2.length) {
                    break;
                }
                C8670m0 m0Var = m0VarArr2[i];
                if (m0Var != null) {
                    o7Var.m17269a(6, m0Var);
                }
                i++;
            }
        }
        String str2 = this.f19983i;
        if (str2 != null) {
            o7Var.m17268a(7, str2);
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8734t0)) {
            return false;
        }
        C8734t0 t0Var = (C8734t0) obj;
        Long l = this.f19977c;
        if (l == null) {
            if (t0Var.f19977c != null) {
                return false;
            }
        } else if (!l.equals(t0Var.f19977c)) {
            return false;
        }
        String str = this.f19978d;
        if (str == null) {
            if (t0Var.f19978d != null) {
                return false;
            }
        } else if (!str.equals(t0Var.f19978d)) {
            return false;
        }
        Integer num = this.f19979e;
        if (num == null) {
            if (t0Var.f19979e != null) {
                return false;
            }
        } else if (!num.equals(t0Var.f19979e)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19980f, t0Var.f19980f) || !C8750u7.m17109a(this.f19981g, t0Var.f19981g) || !C8750u7.m17109a(this.f19982h, t0Var.f19982h)) {
            return false;
        }
        String str2 = this.f19983i;
        if (str2 == null) {
            if (t0Var.f19983i != null) {
                return false;
            }
        } else if (!str2.equals(t0Var.f19983i)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(t0Var.f19936b);
        }
        C8732s7 s7Var2 = t0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8734t0.class.getName().hashCode();
        Long l = this.f19977c;
        int hashCode2 = l == null ? 0 : l.hashCode();
        String str = this.f19978d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        Integer num = this.f19979e;
        int hashCode4 = num == null ? 0 : num.hashCode();
        int a = C8750u7.m17110a(this.f19980f);
        int a2 = C8750u7.m17110a(this.f19981g);
        int a3 = C8750u7.m17110a(this.f19982h);
        String str2 = this.f19983i;
        int hashCode5 = str2 == null ? 0 : str2.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + a) * 31) + a2) * 31) + a3) * 31) + hashCode5) * 31) + i;
    }
}
