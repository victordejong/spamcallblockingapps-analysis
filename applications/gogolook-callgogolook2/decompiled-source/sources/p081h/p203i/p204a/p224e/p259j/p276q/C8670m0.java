package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.m0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/m0.class */
public final class C8670m0 extends AbstractC8714q7<C8670m0> {

    /* renamed from: h */
    public static volatile C8670m0[] f19836h;

    /* renamed from: c */
    public Integer f19837c = null;

    /* renamed from: d */
    public C8707q0[] f19838d = C8707q0.m17242e();

    /* renamed from: e */
    public C8679n0[] f19839e = C8679n0.m17346e();

    /* renamed from: f */
    public Boolean f19840f = null;

    /* renamed from: g */
    public Boolean f19841g = null;

    public C8670m0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8670m0[] m17415e() {
        if (f19836h == null) {
            synchronized (C8750u7.f20012b) {
                if (f19836h == null) {
                    f19836h = new C8670m0[0];
                }
            }
        }
        return f19836h;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19837c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        C8707q0[] q0VarArr = this.f19838d;
        int i2 = 0;
        int i3 = i;
        if (q0VarArr != null) {
            i3 = i;
            if (q0VarArr.length > 0) {
                i3 = i;
                int i4 = 0;
                while (true) {
                    C8707q0[] q0VarArr2 = this.f19838d;
                    if (i4 >= q0VarArr2.length) {
                        break;
                    }
                    C8707q0 q0Var = q0VarArr2[i4];
                    i3 = i3;
                    if (q0Var != null) {
                        i3 += C8696o7.m17255b(2, q0Var);
                    }
                    i4++;
                }
            }
        }
        C8679n0[] n0VarArr = this.f19839e;
        int i5 = i3;
        if (n0VarArr != null) {
            i5 = i3;
            if (n0VarArr.length > 0) {
                while (true) {
                    C8679n0[] n0VarArr2 = this.f19839e;
                    i5 = i3;
                    if (i2 >= n0VarArr2.length) {
                        break;
                    }
                    C8679n0 n0Var = n0VarArr2[i2];
                    i3 = i3;
                    if (n0Var != null) {
                        i3 += C8696o7.m17255b(3, n0Var);
                    }
                    i2++;
                }
            }
        }
        Boolean bool = this.f19840f;
        int i6 = i5;
        if (bool != null) {
            bool.booleanValue();
            i6 = i5 + C8696o7.m17251c(4) + 1;
        }
        Boolean bool2 = this.f19841g;
        int i7 = i6;
        if (bool2 != null) {
            bool2.booleanValue();
            i7 = i6 + C8696o7.m17251c(5) + 1;
        }
        return i7;
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
                this.f19837c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 18) {
                int a = C8799z7.m16920a(n7Var, 18);
                C8707q0[] q0VarArr = this.f19838d;
                int length = q0VarArr == null ? 0 : q0VarArr.length;
                C8707q0[] q0VarArr2 = new C8707q0[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19838d, 0, q0VarArr2, 0, length);
                    i = length;
                }
                while (i < q0VarArr2.length - 1) {
                    q0VarArr2[i] = new C8707q0();
                    n7Var.m17305a(q0VarArr2[i]);
                    n7Var.m17300c();
                    i++;
                }
                q0VarArr2[i] = new C8707q0();
                n7Var.m17305a(q0VarArr2[i]);
                this.f19838d = q0VarArr2;
            } else if (c == 26) {
                int a2 = C8799z7.m16920a(n7Var, 26);
                C8679n0[] n0VarArr = this.f19839e;
                int length2 = n0VarArr == null ? 0 : n0VarArr.length;
                C8679n0[] n0VarArr2 = new C8679n0[a2 + length2];
                int i2 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.f19839e, 0, n0VarArr2, 0, length2);
                    i2 = length2;
                }
                while (i2 < n0VarArr2.length - 1) {
                    n0VarArr2[i2] = new C8679n0();
                    n7Var.m17305a(n0VarArr2[i2]);
                    n7Var.m17300c();
                    i2++;
                }
                n0VarArr2[i2] = new C8679n0();
                n7Var.m17305a(n0VarArr2[i2]);
                this.f19839e = n0VarArr2;
            } else if (c == 32) {
                this.f19840f = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 40) {
                this.f19841g = Boolean.valueOf(n7Var.m17298d());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19837c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        C8707q0[] q0VarArr = this.f19838d;
        int i = 0;
        if (q0VarArr != null && q0VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C8707q0[] q0VarArr2 = this.f19838d;
                if (i2 >= q0VarArr2.length) {
                    break;
                }
                C8707q0 q0Var = q0VarArr2[i2];
                if (q0Var != null) {
                    o7Var.m17269a(2, q0Var);
                }
                i2++;
            }
        }
        C8679n0[] n0VarArr = this.f19839e;
        if (n0VarArr != null && n0VarArr.length > 0) {
            while (true) {
                C8679n0[] n0VarArr2 = this.f19839e;
                if (i >= n0VarArr2.length) {
                    break;
                }
                C8679n0 n0Var = n0VarArr2[i];
                if (n0Var != null) {
                    o7Var.m17269a(3, n0Var);
                }
                i++;
            }
        }
        Boolean bool = this.f19840f;
        if (bool != null) {
            o7Var.m17267a(4, bool.booleanValue());
        }
        Boolean bool2 = this.f19841g;
        if (bool2 != null) {
            o7Var.m17267a(5, bool2.booleanValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8670m0)) {
            return false;
        }
        C8670m0 m0Var = (C8670m0) obj;
        Integer num = this.f19837c;
        if (num == null) {
            if (m0Var.f19837c != null) {
                return false;
            }
        } else if (!num.equals(m0Var.f19837c)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19838d, m0Var.f19838d) || !C8750u7.m17109a(this.f19839e, m0Var.f19839e)) {
            return false;
        }
        Boolean bool = this.f19840f;
        if (bool == null) {
            if (m0Var.f19840f != null) {
                return false;
            }
        } else if (!bool.equals(m0Var.f19840f)) {
            return false;
        }
        Boolean bool2 = this.f19841g;
        if (bool2 == null) {
            if (m0Var.f19841g != null) {
                return false;
            }
        } else if (!bool2.equals(m0Var.f19841g)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(m0Var.f19936b);
        }
        C8732s7 s7Var2 = m0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8670m0.class.getName().hashCode();
        Integer num = this.f19837c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int a = C8750u7.m17110a(this.f19838d);
        int a2 = C8750u7.m17110a(this.f19839e);
        Boolean bool = this.f19840f;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f19841g;
        int hashCode4 = bool2 == null ? 0 : bool2.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + a) * 31) + a2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }
}
