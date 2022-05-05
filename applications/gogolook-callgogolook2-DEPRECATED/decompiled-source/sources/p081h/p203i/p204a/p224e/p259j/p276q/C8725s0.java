package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.s0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/s0.class */
public final class C8725s0 extends AbstractC8714q7<C8725s0> {

    /* renamed from: g */
    public static volatile C8725s0[] f19951g;

    /* renamed from: c */
    public String f19952c = null;

    /* renamed from: d */
    public Boolean f19953d = null;

    /* renamed from: e */
    public Boolean f19954e = null;

    /* renamed from: f */
    public Integer f19955f = null;

    public C8725s0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8725s0[] m17209e() {
        if (f19951g == null) {
            synchronized (C8750u7.f20012b) {
                if (f19951g == null) {
                    f19951g = new C8725s0[0];
                }
            }
        }
        return f19951g;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        String str = this.f19952c;
        int i = a;
        if (str != null) {
            i = a + C8696o7.m17254b(1, str);
        }
        Boolean bool = this.f19953d;
        int i2 = i;
        if (bool != null) {
            bool.booleanValue();
            i2 = i + C8696o7.m17251c(2) + 1;
        }
        Boolean bool2 = this.f19954e;
        int i3 = i2;
        if (bool2 != null) {
            bool2.booleanValue();
            i3 = i2 + C8696o7.m17251c(3) + 1;
        }
        Integer num = this.f19955f;
        int i4 = i3;
        if (num != null) {
            i4 = i3 + C8696o7.m17250c(4, num.intValue());
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
                this.f19952c = n7Var.m17303b();
            } else if (c == 16) {
                this.f19953d = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 24) {
                this.f19954e = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 32) {
                this.f19955f = Integer.valueOf(n7Var.m17296e());
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        String str = this.f19952c;
        if (str != null) {
            o7Var.m17268a(1, str);
        }
        Boolean bool = this.f19953d;
        if (bool != null) {
            o7Var.m17267a(2, bool.booleanValue());
        }
        Boolean bool2 = this.f19954e;
        if (bool2 != null) {
            o7Var.m17267a(3, bool2.booleanValue());
        }
        Integer num = this.f19955f;
        if (num != null) {
            o7Var.m17257b(4, num.intValue());
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8725s0)) {
            return false;
        }
        C8725s0 s0Var = (C8725s0) obj;
        String str = this.f19952c;
        if (str == null) {
            if (s0Var.f19952c != null) {
                return false;
            }
        } else if (!str.equals(s0Var.f19952c)) {
            return false;
        }
        Boolean bool = this.f19953d;
        if (bool == null) {
            if (s0Var.f19953d != null) {
                return false;
            }
        } else if (!bool.equals(s0Var.f19953d)) {
            return false;
        }
        Boolean bool2 = this.f19954e;
        if (bool2 == null) {
            if (s0Var.f19954e != null) {
                return false;
            }
        } else if (!bool2.equals(s0Var.f19954e)) {
            return false;
        }
        Integer num = this.f19955f;
        if (num == null) {
            if (s0Var.f19955f != null) {
                return false;
            }
        } else if (!num.equals(s0Var.f19955f)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(s0Var.f19936b);
        }
        C8732s7 s7Var2 = s0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8725s0.class.getName().hashCode();
        String str = this.f19952c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        Boolean bool = this.f19953d;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        Boolean bool2 = this.f19954e;
        int hashCode4 = bool2 == null ? 0 : bool2.hashCode();
        Integer num = this.f19955f;
        int hashCode5 = num == null ? 0 : num.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
