package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.p0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/p0.class */
public final class C8698p0 extends AbstractC8714q7<C8698p0> {

    /* renamed from: c */
    public Integer f19918c = null;

    /* renamed from: d */
    public Boolean f19919d = null;

    /* renamed from: e */
    public String f19920e = null;

    /* renamed from: f */
    public String f19921f = null;

    /* renamed from: g */
    public String f19922g = null;

    public C8698p0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19918c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        Boolean bool = this.f19919d;
        int i2 = i;
        if (bool != null) {
            bool.booleanValue();
            i2 = i + C8696o7.m17251c(2) + 1;
        }
        String str = this.f19920e;
        int i3 = i2;
        if (str != null) {
            i3 = i2 + C8696o7.m17254b(3, str);
        }
        String str2 = this.f19921f;
        int i4 = i3;
        if (str2 != null) {
            i4 = i3 + C8696o7.m17254b(4, str2);
        }
        String str3 = this.f19922g;
        int i5 = i4;
        if (str3 != null) {
            i5 = i4 + C8696o7.m17254b(5, str3);
        }
        return i5;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        m17246b(n7Var);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19918c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        Boolean bool = this.f19919d;
        if (bool != null) {
            o7Var.m17267a(2, bool.booleanValue());
        }
        String str = this.f19920e;
        if (str != null) {
            o7Var.m17268a(3, str);
        }
        String str2 = this.f19921f;
        if (str2 != null) {
            o7Var.m17268a(4, str2);
        }
        String str3 = this.f19922g;
        if (str3 != null) {
            o7Var.m17268a(5, str3);
        }
        super.mo16952a(o7Var);
    }

    /* renamed from: b */
    public final C8698p0 m17246b(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            if (c == 0) {
                return this;
            }
            if (c == 8) {
                int a = n7Var.m17309a();
                try {
                    int e = n7Var.m17296e();
                    if (e < 0 || e > 4) {
                        StringBuilder sb = new StringBuilder(46);
                        sb.append(e);
                        sb.append(" is not a valid enum ComparisonType");
                        throw new IllegalArgumentException(sb.toString());
                        break;
                    }
                    this.f19918c = Integer.valueOf(e);
                } catch (IllegalArgumentException e2) {
                    n7Var.m17293f(a);
                    m17236a(n7Var, c);
                }
            } else if (c == 16) {
                this.f19919d = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 26) {
                this.f19920e = n7Var.m17303b();
            } else if (c == 34) {
                this.f19921f = n7Var.m17303b();
            } else if (c == 42) {
                this.f19922g = n7Var.m17303b();
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8698p0)) {
            return false;
        }
        C8698p0 p0Var = (C8698p0) obj;
        Integer num = this.f19918c;
        if (num == null) {
            if (p0Var.f19918c != null) {
                return false;
            }
        } else if (!num.equals(p0Var.f19918c)) {
            return false;
        }
        Boolean bool = this.f19919d;
        if (bool == null) {
            if (p0Var.f19919d != null) {
                return false;
            }
        } else if (!bool.equals(p0Var.f19919d)) {
            return false;
        }
        String str = this.f19920e;
        if (str == null) {
            if (p0Var.f19920e != null) {
                return false;
            }
        } else if (!str.equals(p0Var.f19920e)) {
            return false;
        }
        String str2 = this.f19921f;
        if (str2 == null) {
            if (p0Var.f19921f != null) {
                return false;
            }
        } else if (!str2.equals(p0Var.f19921f)) {
            return false;
        }
        String str3 = this.f19922g;
        if (str3 == null) {
            if (p0Var.f19922g != null) {
                return false;
            }
        } else if (!str3.equals(p0Var.f19922g)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(p0Var.f19936b);
        }
        C8732s7 s7Var2 = p0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8698p0.class.getName().hashCode();
        Integer num = this.f19918c;
        int intValue = num == null ? 0 : num.intValue();
        Boolean bool = this.f19919d;
        int hashCode2 = bool == null ? 0 : bool.hashCode();
        String str = this.f19920e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        String str2 = this.f19921f;
        int hashCode4 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f19922g;
        int hashCode5 = str3 == null ? 0 : str3.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + intValue) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i;
    }
}
