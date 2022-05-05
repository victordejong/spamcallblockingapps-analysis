package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/d1.class */
public final class C8579d1 extends AbstractC8714q7<C8579d1> {

    /* renamed from: i */
    public static volatile C8579d1[] f19649i;

    /* renamed from: c */
    public Long f19650c = null;

    /* renamed from: d */
    public String f19651d = null;

    /* renamed from: e */
    public String f19652e = null;

    /* renamed from: f */
    public Long f19653f = null;

    /* renamed from: g */
    public Float f19654g = null;

    /* renamed from: h */
    public Double f19655h = null;

    public C8579d1() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8579d1[] m17711e() {
        if (f19649i == null) {
            synchronized (C8750u7.f20012b) {
                if (f19649i == null) {
                    f19649i = new C8579d1[0];
                }
            }
        }
        return f19649i;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Long l = this.f19650c;
        int i = a;
        if (l != null) {
            i = a + C8696o7.m17249c(1, l.longValue());
        }
        String str = this.f19651d;
        int i2 = i;
        if (str != null) {
            i2 = i + C8696o7.m17254b(2, str);
        }
        String str2 = this.f19652e;
        int i3 = i2;
        if (str2 != null) {
            i3 = i2 + C8696o7.m17254b(3, str2);
        }
        Long l2 = this.f19653f;
        int i4 = i3;
        if (l2 != null) {
            i4 = i3 + C8696o7.m17249c(4, l2.longValue());
        }
        Float f = this.f19654g;
        int i5 = i4;
        if (f != null) {
            f.floatValue();
            i5 = i4 + C8696o7.m17251c(5) + 4;
        }
        Double d = this.f19655h;
        int i6 = i5;
        if (d != null) {
            d.doubleValue();
            i6 = i5 + C8696o7.m17251c(6) + 8;
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
            if (c == 8) {
                this.f19650c = Long.valueOf(n7Var.m17294f());
            } else if (c == 18) {
                this.f19651d = n7Var.m17303b();
            } else if (c == 26) {
                this.f19652e = n7Var.m17303b();
            } else if (c == 32) {
                this.f19653f = Long.valueOf(n7Var.m17294f());
            } else if (c == 45) {
                this.f19654g = Float.valueOf(Float.intBitsToFloat(n7Var.m17292g()));
            } else if (c == 49) {
                this.f19655h = Double.valueOf(Double.longBitsToDouble(n7Var.m17291h()));
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Long l = this.f19650c;
        if (l != null) {
            o7Var.m17256b(1, l.longValue());
        }
        String str = this.f19651d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        String str2 = this.f19652e;
        if (str2 != null) {
            o7Var.m17268a(3, str2);
        }
        Long l2 = this.f19653f;
        if (l2 != null) {
            o7Var.m17256b(4, l2.longValue());
        }
        Float f = this.f19654g;
        if (f != null) {
            o7Var.m17273a(5, f.floatValue());
        }
        Double d = this.f19655h;
        if (d != null) {
            o7Var.m17274a(6, d.doubleValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8579d1)) {
            return false;
        }
        C8579d1 d1Var = (C8579d1) obj;
        Long l = this.f19650c;
        if (l == null) {
            if (d1Var.f19650c != null) {
                return false;
            }
        } else if (!l.equals(d1Var.f19650c)) {
            return false;
        }
        String str = this.f19651d;
        if (str == null) {
            if (d1Var.f19651d != null) {
                return false;
            }
        } else if (!str.equals(d1Var.f19651d)) {
            return false;
        }
        String str2 = this.f19652e;
        if (str2 == null) {
            if (d1Var.f19652e != null) {
                return false;
            }
        } else if (!str2.equals(d1Var.f19652e)) {
            return false;
        }
        Long l2 = this.f19653f;
        if (l2 == null) {
            if (d1Var.f19653f != null) {
                return false;
            }
        } else if (!l2.equals(d1Var.f19653f)) {
            return false;
        }
        Float f = this.f19654g;
        if (f == null) {
            if (d1Var.f19654g != null) {
                return false;
            }
        } else if (!f.equals(d1Var.f19654g)) {
            return false;
        }
        Double d = this.f19655h;
        if (d == null) {
            if (d1Var.f19655h != null) {
                return false;
            }
        } else if (!d.equals(d1Var.f19655h)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(d1Var.f19936b);
        }
        C8732s7 s7Var2 = d1Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8579d1.class.getName().hashCode();
        Long l = this.f19650c;
        int hashCode2 = l == null ? 0 : l.hashCode();
        String str = this.f19651d;
        int hashCode3 = str == null ? 0 : str.hashCode();
        String str2 = this.f19652e;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        Long l2 = this.f19653f;
        int hashCode5 = l2 == null ? 0 : l2.hashCode();
        Float f = this.f19654g;
        int hashCode6 = f == null ? 0 : f.hashCode();
        Double d = this.f19655h;
        int hashCode7 = d == null ? 0 : d.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }
}
