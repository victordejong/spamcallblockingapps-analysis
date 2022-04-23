package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.n0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/n0.class */
public final class C8679n0 extends AbstractC8714q7<C8679n0> {

    /* renamed from: j */
    public static volatile C8679n0[] f19852j;

    /* renamed from: c */
    public Integer f19853c = null;

    /* renamed from: d */
    public String f19854d = null;

    /* renamed from: e */
    public C8688o0[] f19855e = C8688o0.m17287e();

    /* renamed from: f */
    public Boolean f19856f = null;

    /* renamed from: g */
    public C8698p0 f19857g = null;

    /* renamed from: h */
    public Boolean f19858h = null;

    /* renamed from: i */
    public Boolean f19859i = null;

    public C8679n0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8679n0[] m17346e() {
        if (f19852j == null) {
            synchronized (C8750u7.f20012b) {
                if (f19852j == null) {
                    f19852j = new C8679n0[0];
                }
            }
        }
        return f19852j;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19853c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        String str = this.f19854d;
        int i2 = i;
        if (str != null) {
            i2 = i + C8696o7.m17254b(2, str);
        }
        C8688o0[] o0VarArr = this.f19855e;
        int i3 = i2;
        if (o0VarArr != null) {
            i3 = i2;
            if (o0VarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    C8688o0[] o0VarArr2 = this.f19855e;
                    i3 = i2;
                    if (i4 >= o0VarArr2.length) {
                        break;
                    }
                    C8688o0 o0Var = o0VarArr2[i4];
                    i2 = i2;
                    if (o0Var != null) {
                        i2 += C8696o7.m17255b(3, o0Var);
                    }
                    i4++;
                }
            }
        }
        Boolean bool = this.f19856f;
        int i5 = i3;
        if (bool != null) {
            bool.booleanValue();
            i5 = i3 + C8696o7.m17251c(4) + 1;
        }
        C8698p0 p0Var = this.f19857g;
        int i6 = i5;
        if (p0Var != null) {
            i6 = i5 + C8696o7.m17255b(5, p0Var);
        }
        Boolean bool2 = this.f19858h;
        int i7 = i6;
        if (bool2 != null) {
            bool2.booleanValue();
            i7 = i6 + C8696o7.m17251c(6) + 1;
        }
        Boolean bool3 = this.f19859i;
        int i8 = i7;
        if (bool3 != null) {
            bool3.booleanValue();
            i8 = i7 + C8696o7.m17251c(7) + 1;
        }
        return i8;
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
                this.f19853c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 18) {
                this.f19854d = n7Var.m17303b();
            } else if (c == 26) {
                int a = C8799z7.m16920a(n7Var, 26);
                C8688o0[] o0VarArr = this.f19855e;
                int length = o0VarArr == null ? 0 : o0VarArr.length;
                C8688o0[] o0VarArr2 = new C8688o0[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19855e, 0, o0VarArr2, 0, length);
                    i = length;
                }
                while (i < o0VarArr2.length - 1) {
                    o0VarArr2[i] = new C8688o0();
                    n7Var.m17305a(o0VarArr2[i]);
                    n7Var.m17300c();
                    i++;
                }
                o0VarArr2[i] = new C8688o0();
                n7Var.m17305a(o0VarArr2[i]);
                this.f19855e = o0VarArr2;
            } else if (c == 32) {
                this.f19856f = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 42) {
                if (this.f19857g == null) {
                    this.f19857g = new C8698p0();
                }
                n7Var.m17305a(this.f19857g);
            } else if (c == 48) {
                this.f19858h = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 56) {
                this.f19859i = Boolean.valueOf(n7Var.m17298d());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19853c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        String str = this.f19854d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        C8688o0[] o0VarArr = this.f19855e;
        if (o0VarArr != null && o0VarArr.length > 0) {
            int i = 0;
            while (true) {
                C8688o0[] o0VarArr2 = this.f19855e;
                if (i >= o0VarArr2.length) {
                    break;
                }
                C8688o0 o0Var = o0VarArr2[i];
                if (o0Var != null) {
                    o7Var.m17269a(3, o0Var);
                }
                i++;
            }
        }
        Boolean bool = this.f19856f;
        if (bool != null) {
            o7Var.m17267a(4, bool.booleanValue());
        }
        C8698p0 p0Var = this.f19857g;
        if (p0Var != null) {
            o7Var.m17269a(5, p0Var);
        }
        Boolean bool2 = this.f19858h;
        if (bool2 != null) {
            o7Var.m17267a(6, bool2.booleanValue());
        }
        Boolean bool3 = this.f19859i;
        if (bool3 != null) {
            o7Var.m17267a(7, bool3.booleanValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8679n0)) {
            return false;
        }
        C8679n0 n0Var = (C8679n0) obj;
        Integer num = this.f19853c;
        if (num == null) {
            if (n0Var.f19853c != null) {
                return false;
            }
        } else if (!num.equals(n0Var.f19853c)) {
            return false;
        }
        String str = this.f19854d;
        if (str == null) {
            if (n0Var.f19854d != null) {
                return false;
            }
        } else if (!str.equals(n0Var.f19854d)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19855e, n0Var.f19855e)) {
            return false;
        }
        Boolean bool = this.f19856f;
        if (bool == null) {
            if (n0Var.f19856f != null) {
                return false;
            }
        } else if (!bool.equals(n0Var.f19856f)) {
            return false;
        }
        C8698p0 p0Var = this.f19857g;
        if (p0Var == null) {
            if (n0Var.f19857g != null) {
                return false;
            }
        } else if (!p0Var.equals(n0Var.f19857g)) {
            return false;
        }
        Boolean bool2 = this.f19858h;
        if (bool2 == null) {
            if (n0Var.f19858h != null) {
                return false;
            }
        } else if (!bool2.equals(n0Var.f19858h)) {
            return false;
        }
        Boolean bool3 = this.f19859i;
        if (bool3 == null) {
            if (n0Var.f19859i != null) {
                return false;
            }
        } else if (!bool3.equals(n0Var.f19859i)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(n0Var.f19936b);
        }
        C8732s7 s7Var2 = n0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8679n0.class.getName().hashCode();
        Integer num = this.f19853c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f19854d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int a = C8750u7.m17110a(this.f19855e);
        Boolean bool = this.f19856f;
        int hashCode4 = bool == null ? 0 : bool.hashCode();
        C8698p0 p0Var = this.f19857g;
        int hashCode5 = p0Var == null ? 0 : p0Var.hashCode();
        Boolean bool2 = this.f19858h;
        int hashCode6 = bool2 == null ? 0 : bool2.hashCode();
        Boolean bool3 = this.f19859i;
        int hashCode7 = bool3 == null ? 0 : bool3.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + a) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }
}
