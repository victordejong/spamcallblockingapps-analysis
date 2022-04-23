package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.x0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x0.class */
public final class C8770x0 extends AbstractC8714q7<C8770x0> {

    /* renamed from: h */
    public static volatile C8770x0[] f20103h;

    /* renamed from: c */
    public C8783y0[] f20104c = C8783y0.m17000e();

    /* renamed from: d */
    public String f20105d = null;

    /* renamed from: e */
    public Long f20106e = null;

    /* renamed from: f */
    public Long f20107f = null;

    /* renamed from: g */
    public Integer f20108g = null;

    public C8770x0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8770x0[] m17074e() {
        if (f20103h == null) {
            synchronized (C8750u7.f20012b) {
                if (f20103h == null) {
                    f20103h = new C8770x0[0];
                }
            }
        }
        return f20103h;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        C8783y0[] y0VarArr = this.f20104c;
        int i = a;
        if (y0VarArr != null) {
            i = a;
            if (y0VarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C8783y0[] y0VarArr2 = this.f20104c;
                    i = a;
                    if (i2 >= y0VarArr2.length) {
                        break;
                    }
                    C8783y0 y0Var = y0VarArr2[i2];
                    a = a;
                    if (y0Var != null) {
                        a += C8696o7.m17255b(1, y0Var);
                    }
                    i2++;
                }
            }
        }
        String str = this.f20105d;
        int i3 = i;
        if (str != null) {
            i3 = i + C8696o7.m17254b(2, str);
        }
        Long l = this.f20106e;
        int i4 = i3;
        if (l != null) {
            i4 = i3 + C8696o7.m17249c(3, l.longValue());
        }
        Long l2 = this.f20107f;
        int i5 = i4;
        if (l2 != null) {
            i5 = i4 + C8696o7.m17249c(4, l2.longValue());
        }
        Integer num = this.f20108g;
        int i6 = i5;
        if (num != null) {
            i6 = i5 + C8696o7.m17250c(5, num.intValue());
        }
        return i6;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            if (c == 0) {
                return this;
            }
            if (c == 10) {
                int a = C8799z7.m16920a(n7Var, 10);
                C8783y0[] y0VarArr = this.f20104c;
                int length = y0VarArr == null ? 0 : y0VarArr.length;
                C8783y0[] y0VarArr2 = new C8783y0[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f20104c, 0, y0VarArr2, 0, length);
                    i = length;
                }
                while (i < y0VarArr2.length - 1) {
                    y0VarArr2[i] = new C8783y0();
                    n7Var.m17305a(y0VarArr2[i]);
                    n7Var.m17300c();
                    i++;
                }
                y0VarArr2[i] = new C8783y0();
                n7Var.m17305a(y0VarArr2[i]);
                this.f20104c = y0VarArr2;
            } else if (c == 18) {
                this.f20105d = n7Var.m17303b();
            } else if (c == 24) {
                this.f20106e = Long.valueOf(n7Var.m17294f());
            } else if (c == 32) {
                this.f20107f = Long.valueOf(n7Var.m17294f());
            } else if (c == 40) {
                this.f20108g = Integer.valueOf(n7Var.m17296e());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        C8783y0[] y0VarArr = this.f20104c;
        if (y0VarArr != null && y0VarArr.length > 0) {
            int i = 0;
            while (true) {
                C8783y0[] y0VarArr2 = this.f20104c;
                if (i >= y0VarArr2.length) {
                    break;
                }
                C8783y0 y0Var = y0VarArr2[i];
                if (y0Var != null) {
                    o7Var.m17269a(1, y0Var);
                }
                i++;
            }
        }
        String str = this.f20105d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        Long l = this.f20106e;
        if (l != null) {
            o7Var.m17256b(3, l.longValue());
        }
        Long l2 = this.f20107f;
        if (l2 != null) {
            o7Var.m17256b(4, l2.longValue());
        }
        Integer num = this.f20108g;
        if (num != null) {
            o7Var.m17257b(5, num.intValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8770x0)) {
            return false;
        }
        C8770x0 x0Var = (C8770x0) obj;
        if (!C8750u7.m17109a(this.f20104c, x0Var.f20104c)) {
            return false;
        }
        String str = this.f20105d;
        if (str == null) {
            if (x0Var.f20105d != null) {
                return false;
            }
        } else if (!str.equals(x0Var.f20105d)) {
            return false;
        }
        Long l = this.f20106e;
        if (l == null) {
            if (x0Var.f20106e != null) {
                return false;
            }
        } else if (!l.equals(x0Var.f20106e)) {
            return false;
        }
        Long l2 = this.f20107f;
        if (l2 == null) {
            if (x0Var.f20107f != null) {
                return false;
            }
        } else if (!l2.equals(x0Var.f20107f)) {
            return false;
        }
        Integer num = this.f20108g;
        if (num == null) {
            if (x0Var.f20108g != null) {
                return false;
            }
        } else if (!num.equals(x0Var.f20108g)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(x0Var.f19936b);
        }
        C8732s7 s7Var2 = x0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8770x0.class.getName().hashCode();
        int a = C8750u7.m17110a(this.f20104c);
        String str = this.f20105d;
        int hashCode2 = str == null ? 0 : str.hashCode();
        Long l = this.f20106e;
        int hashCode3 = l == null ? 0 : l.hashCode();
        Long l2 = this.f20107f;
        int hashCode4 = l2 == null ? 0 : l2.hashCode();
        Integer num = this.f20108g;
        int hashCode5 = num == null ? 0 : num.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + a) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
