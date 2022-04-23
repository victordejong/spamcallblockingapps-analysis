package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.v0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v0.class */
public final class C8752v0 extends AbstractC8714q7<C8752v0> {

    /* renamed from: g */
    public static volatile C8752v0[] f20016g;

    /* renamed from: c */
    public Integer f20017c = null;

    /* renamed from: d */
    public C8556b1 f20018d = null;

    /* renamed from: e */
    public C8556b1 f20019e = null;

    /* renamed from: f */
    public Boolean f20020f = null;

    public C8752v0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8752v0[] m17108e() {
        if (f20016g == null) {
            synchronized (C8750u7.f20012b) {
                if (f20016g == null) {
                    f20016g = new C8752v0[0];
                }
            }
        }
        return f20016g;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f20017c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        C8556b1 b1Var = this.f20018d;
        int i2 = i;
        if (b1Var != null) {
            i2 = i + C8696o7.m17255b(2, b1Var);
        }
        C8556b1 b1Var2 = this.f20019e;
        int i3 = i2;
        if (b1Var2 != null) {
            i3 = i2 + C8696o7.m17255b(3, b1Var2);
        }
        Boolean bool = this.f20020f;
        int i4 = i3;
        if (bool != null) {
            bool.booleanValue();
            i4 = i3 + C8696o7.m17251c(4) + 1;
        }
        return i4;
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
                this.f20017c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 18) {
                if (this.f20018d == null) {
                    this.f20018d = new C8556b1();
                }
                n7Var.m17305a(this.f20018d);
            } else if (c == 26) {
                if (this.f20019e == null) {
                    this.f20019e = new C8556b1();
                }
                n7Var.m17305a(this.f20019e);
            } else if (c == 32) {
                this.f20020f = Boolean.valueOf(n7Var.m17298d());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f20017c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        C8556b1 b1Var = this.f20018d;
        if (b1Var != null) {
            o7Var.m17269a(2, b1Var);
        }
        C8556b1 b1Var2 = this.f20019e;
        if (b1Var2 != null) {
            o7Var.m17269a(3, b1Var2);
        }
        Boolean bool = this.f20020f;
        if (bool != null) {
            o7Var.m17267a(4, bool.booleanValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8752v0)) {
            return false;
        }
        C8752v0 v0Var = (C8752v0) obj;
        Integer num = this.f20017c;
        if (num == null) {
            if (v0Var.f20017c != null) {
                return false;
            }
        } else if (!num.equals(v0Var.f20017c)) {
            return false;
        }
        C8556b1 b1Var = this.f20018d;
        if (b1Var == null) {
            if (v0Var.f20018d != null) {
                return false;
            }
        } else if (!b1Var.equals(v0Var.f20018d)) {
            return false;
        }
        C8556b1 b1Var2 = this.f20019e;
        if (b1Var2 == null) {
            if (v0Var.f20019e != null) {
                return false;
            }
        } else if (!b1Var2.equals(v0Var.f20019e)) {
            return false;
        }
        Boolean bool = this.f20020f;
        if (bool == null) {
            if (v0Var.f20020f != null) {
                return false;
            }
        } else if (!bool.equals(v0Var.f20020f)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(v0Var.f19936b);
        }
        C8732s7 s7Var2 = v0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8752v0.class.getName().hashCode();
        Integer num = this.f20017c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        C8556b1 b1Var = this.f20018d;
        int hashCode3 = b1Var == null ? 0 : b1Var.hashCode();
        C8556b1 b1Var2 = this.f20019e;
        int hashCode4 = b1Var2 == null ? 0 : b1Var2.hashCode();
        Boolean bool = this.f20020f;
        int hashCode5 = bool == null ? 0 : bool.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
