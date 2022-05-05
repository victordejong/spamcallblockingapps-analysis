package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.y0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/y0.class */
public final class C8783y0 extends AbstractC8714q7<C8783y0> {

    /* renamed from: h */
    public static volatile C8783y0[] f20134h;

    /* renamed from: c */
    public String f20135c = null;

    /* renamed from: d */
    public String f20136d = null;

    /* renamed from: e */
    public Long f20137e = null;

    /* renamed from: f */
    public Float f20138f = null;

    /* renamed from: g */
    public Double f20139g = null;

    public C8783y0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8783y0[] m17000e() {
        if (f20134h == null) {
            synchronized (C8750u7.f20012b) {
                if (f20134h == null) {
                    f20134h = new C8783y0[0];
                }
            }
        }
        return f20134h;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        String str = this.f20135c;
        int i = a;
        if (str != null) {
            i = a + C8696o7.m17254b(1, str);
        }
        String str2 = this.f20136d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C8696o7.m17254b(2, str2);
        }
        Long l = this.f20137e;
        int i3 = i2;
        if (l != null) {
            i3 = i2 + C8696o7.m17249c(3, l.longValue());
        }
        Float f = this.f20138f;
        int i4 = i3;
        if (f != null) {
            f.floatValue();
            i4 = i3 + C8696o7.m17251c(4) + 4;
        }
        Double d = this.f20139g;
        int i5 = i4;
        if (d != null) {
            d.doubleValue();
            i5 = i4 + C8696o7.m17251c(5) + 8;
        }
        return i5;
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
                this.f20135c = n7Var.m17303b();
            } else if (c == 18) {
                this.f20136d = n7Var.m17303b();
            } else if (c == 24) {
                this.f20137e = Long.valueOf(n7Var.m17294f());
            } else if (c == 37) {
                this.f20138f = Float.valueOf(Float.intBitsToFloat(n7Var.m17292g()));
            } else if (c == 41) {
                this.f20139g = Double.valueOf(Double.longBitsToDouble(n7Var.m17291h()));
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        String str = this.f20135c;
        if (str != null) {
            o7Var.m17268a(1, str);
        }
        String str2 = this.f20136d;
        if (str2 != null) {
            o7Var.m17268a(2, str2);
        }
        Long l = this.f20137e;
        if (l != null) {
            o7Var.m17256b(3, l.longValue());
        }
        Float f = this.f20138f;
        if (f != null) {
            o7Var.m17273a(4, f.floatValue());
        }
        Double d = this.f20139g;
        if (d != null) {
            o7Var.m17274a(5, d.doubleValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8783y0)) {
            return false;
        }
        C8783y0 y0Var = (C8783y0) obj;
        String str = this.f20135c;
        if (str == null) {
            if (y0Var.f20135c != null) {
                return false;
            }
        } else if (!str.equals(y0Var.f20135c)) {
            return false;
        }
        String str2 = this.f20136d;
        if (str2 == null) {
            if (y0Var.f20136d != null) {
                return false;
            }
        } else if (!str2.equals(y0Var.f20136d)) {
            return false;
        }
        Long l = this.f20137e;
        if (l == null) {
            if (y0Var.f20137e != null) {
                return false;
            }
        } else if (!l.equals(y0Var.f20137e)) {
            return false;
        }
        Float f = this.f20138f;
        if (f == null) {
            if (y0Var.f20138f != null) {
                return false;
            }
        } else if (!f.equals(y0Var.f20138f)) {
            return false;
        }
        Double d = this.f20139g;
        if (d == null) {
            if (y0Var.f20139g != null) {
                return false;
            }
        } else if (!d.equals(y0Var.f20139g)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(y0Var.f19936b);
        }
        C8732s7 s7Var2 = y0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8783y0.class.getName().hashCode();
        String str = this.f20135c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f20136d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        Long l = this.f20137e;
        int hashCode4 = l == null ? 0 : l.hashCode();
        Float f = this.f20138f;
        int hashCode5 = f == null ? 0 : f.hashCode();
        Double d = this.f20139g;
        int hashCode6 = d == null ? 0 : d.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }
}
