package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.o0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o0.class */
public final class C8688o0 extends AbstractC8714q7<C8688o0> {

    /* renamed from: g */
    public static volatile C8688o0[] f19895g;

    /* renamed from: c */
    public C8716r0 f19896c = null;

    /* renamed from: d */
    public C8698p0 f19897d = null;

    /* renamed from: e */
    public Boolean f19898e = null;

    /* renamed from: f */
    public String f19899f = null;

    public C8688o0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8688o0[] m17287e() {
        if (f19895g == null) {
            synchronized (C8750u7.f20012b) {
                if (f19895g == null) {
                    f19895g = new C8688o0[0];
                }
            }
        }
        return f19895g;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        C8716r0 r0Var = this.f19896c;
        int i = a;
        if (r0Var != null) {
            i = a + C8696o7.m17255b(1, r0Var);
        }
        C8698p0 p0Var = this.f19897d;
        int i2 = i;
        if (p0Var != null) {
            i2 = i + C8696o7.m17255b(2, p0Var);
        }
        Boolean bool = this.f19898e;
        int i3 = i2;
        if (bool != null) {
            bool.booleanValue();
            i3 = i2 + C8696o7.m17251c(3) + 1;
        }
        String str = this.f19899f;
        int i4 = i3;
        if (str != null) {
            i4 = i3 + C8696o7.m17254b(4, str);
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
            if (c == 10) {
                if (this.f19896c == null) {
                    this.f19896c = new C8716r0();
                }
                n7Var.m17305a(this.f19896c);
            } else if (c == 18) {
                if (this.f19897d == null) {
                    this.f19897d = new C8698p0();
                }
                n7Var.m17305a(this.f19897d);
            } else if (c == 24) {
                this.f19898e = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 34) {
                this.f19899f = n7Var.m17303b();
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        C8716r0 r0Var = this.f19896c;
        if (r0Var != null) {
            o7Var.m17269a(1, r0Var);
        }
        C8698p0 p0Var = this.f19897d;
        if (p0Var != null) {
            o7Var.m17269a(2, p0Var);
        }
        Boolean bool = this.f19898e;
        if (bool != null) {
            o7Var.m17267a(3, bool.booleanValue());
        }
        String str = this.f19899f;
        if (str != null) {
            o7Var.m17268a(4, str);
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8688o0)) {
            return false;
        }
        C8688o0 o0Var = (C8688o0) obj;
        C8716r0 r0Var = this.f19896c;
        if (r0Var == null) {
            if (o0Var.f19896c != null) {
                return false;
            }
        } else if (!r0Var.equals(o0Var.f19896c)) {
            return false;
        }
        C8698p0 p0Var = this.f19897d;
        if (p0Var == null) {
            if (o0Var.f19897d != null) {
                return false;
            }
        } else if (!p0Var.equals(o0Var.f19897d)) {
            return false;
        }
        Boolean bool = this.f19898e;
        if (bool == null) {
            if (o0Var.f19898e != null) {
                return false;
            }
        } else if (!bool.equals(o0Var.f19898e)) {
            return false;
        }
        String str = this.f19899f;
        if (str == null) {
            if (o0Var.f19899f != null) {
                return false;
            }
        } else if (!str.equals(o0Var.f19899f)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(o0Var.f19936b);
        }
        C8732s7 s7Var2 = o0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8688o0.class.getName().hashCode();
        C8716r0 r0Var = this.f19896c;
        int hashCode2 = r0Var == null ? 0 : r0Var.hashCode();
        C8698p0 p0Var = this.f19897d;
        int hashCode3 = p0Var == null ? 0 : p0Var.hashCode();
        Boolean bool = this.f19898e;
        int hashCode4 = bool == null ? 0 : bool.hashCode();
        String str = this.f19899f;
        int hashCode5 = str == null ? 0 : str.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
