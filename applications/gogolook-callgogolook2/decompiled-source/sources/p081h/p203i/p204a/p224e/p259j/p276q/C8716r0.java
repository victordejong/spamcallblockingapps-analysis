package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/r0.class */
public final class C8716r0 extends AbstractC8714q7<C8716r0> {

    /* renamed from: c */
    public Integer f19939c = null;

    /* renamed from: d */
    public String f19940d = null;

    /* renamed from: e */
    public Boolean f19941e = null;

    /* renamed from: f */
    public String[] f19942f = C8799z7.f20161b;

    public C8716r0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19939c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        String str = this.f19940d;
        int i2 = i;
        if (str != null) {
            i2 = i + C8696o7.m17254b(2, str);
        }
        Boolean bool = this.f19941e;
        int i3 = i2;
        if (bool != null) {
            bool.booleanValue();
            i3 = i2 + C8696o7.m17251c(3) + 1;
        }
        String[] strArr = this.f19942f;
        int i4 = i3;
        if (strArr != null) {
            i4 = i3;
            if (strArr.length > 0) {
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    String[] strArr2 = this.f19942f;
                    if (i5 >= strArr2.length) {
                        break;
                    }
                    String str2 = strArr2[i5];
                    i6 = i6;
                    i7 = i7;
                    if (str2 != null) {
                        i7++;
                        i6 += C8696o7.m17262a(str2);
                    }
                    i5++;
                }
                i4 = i3 + i6 + (i7 * 1);
            }
        }
        return i4;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        m17235b(n7Var);
        return this;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19939c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        String str = this.f19940d;
        if (str != null) {
            o7Var.m17268a(2, str);
        }
        Boolean bool = this.f19941e;
        if (bool != null) {
            o7Var.m17267a(3, bool.booleanValue());
        }
        String[] strArr = this.f19942f;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.f19942f;
                if (i >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i];
                if (str2 != null) {
                    o7Var.m17268a(4, str2);
                }
                i++;
            }
        }
        super.mo16952a(o7Var);
    }

    /* renamed from: b */
    public final C8716r0 m17235b(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            if (c == 0) {
                return this;
            }
            if (c == 8) {
                int a = n7Var.m17309a();
                try {
                    int e = n7Var.m17296e();
                    if (e < 0 || e > 6) {
                        StringBuilder sb = new StringBuilder(41);
                        sb.append(e);
                        sb.append(" is not a valid enum MatchType");
                        throw new IllegalArgumentException(sb.toString());
                        break;
                    }
                    this.f19939c = Integer.valueOf(e);
                } catch (IllegalArgumentException e2) {
                    n7Var.m17293f(a);
                    m17236a(n7Var, c);
                }
            } else if (c == 18) {
                this.f19940d = n7Var.m17303b();
            } else if (c == 24) {
                this.f19941e = Boolean.valueOf(n7Var.m17298d());
            } else if (c == 34) {
                int a2 = C8799z7.m16920a(n7Var, 34);
                String[] strArr = this.f19942f;
                int length = strArr == null ? 0 : strArr.length;
                String[] strArr2 = new String[a2 + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19942f, 0, strArr2, 0, length);
                    i = length;
                }
                while (i < strArr2.length - 1) {
                    strArr2[i] = n7Var.m17303b();
                    n7Var.m17300c();
                    i++;
                }
                strArr2[i] = n7Var.m17303b();
                this.f19942f = strArr2;
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8716r0)) {
            return false;
        }
        C8716r0 r0Var = (C8716r0) obj;
        Integer num = this.f19939c;
        if (num == null) {
            if (r0Var.f19939c != null) {
                return false;
            }
        } else if (!num.equals(r0Var.f19939c)) {
            return false;
        }
        String str = this.f19940d;
        if (str == null) {
            if (r0Var.f19940d != null) {
                return false;
            }
        } else if (!str.equals(r0Var.f19940d)) {
            return false;
        }
        Boolean bool = this.f19941e;
        if (bool == null) {
            if (r0Var.f19941e != null) {
                return false;
            }
        } else if (!bool.equals(r0Var.f19941e)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19942f, r0Var.f19942f)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(r0Var.f19936b);
        }
        C8732s7 s7Var2 = r0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8716r0.class.getName().hashCode();
        Integer num = this.f19939c;
        int intValue = num == null ? 0 : num.intValue();
        String str = this.f19940d;
        int hashCode2 = str == null ? 0 : str.hashCode();
        Boolean bool = this.f19941e;
        int hashCode3 = bool == null ? 0 : bool.hashCode();
        int a = C8750u7.m17110a(this.f19942f);
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + intValue) * 31) + hashCode2) * 31) + hashCode3) * 31) + a) * 31) + i;
    }
}
