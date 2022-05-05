package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.u0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/u0.class */
public final class C8743u0 extends AbstractC8714q7<C8743u0> {

    /* renamed from: e */
    public static volatile C8743u0[] f20000e;

    /* renamed from: c */
    public String f20001c = null;

    /* renamed from: d */
    public String f20002d = null;

    public C8743u0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8743u0[] m17122e() {
        if (f20000e == null) {
            synchronized (C8750u7.f20012b) {
                if (f20000e == null) {
                    f20000e = new C8743u0[0];
                }
            }
        }
        return f20000e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        String str = this.f20001c;
        int i = a;
        if (str != null) {
            i = a + C8696o7.m17254b(1, str);
        }
        String str2 = this.f20002d;
        int i2 = i;
        if (str2 != null) {
            i2 = i + C8696o7.m17254b(2, str2);
        }
        return i2;
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
                this.f20001c = n7Var.m17303b();
            } else if (c == 18) {
                this.f20002d = n7Var.m17303b();
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        String str = this.f20001c;
        if (str != null) {
            o7Var.m17268a(1, str);
        }
        String str2 = this.f20002d;
        if (str2 != null) {
            o7Var.m17268a(2, str2);
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8743u0)) {
            return false;
        }
        C8743u0 u0Var = (C8743u0) obj;
        String str = this.f20001c;
        if (str == null) {
            if (u0Var.f20001c != null) {
                return false;
            }
        } else if (!str.equals(u0Var.f20001c)) {
            return false;
        }
        String str2 = this.f20002d;
        if (str2 == null) {
            if (u0Var.f20002d != null) {
                return false;
            }
        } else if (!str2.equals(u0Var.f20002d)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(u0Var.f19936b);
        }
        C8732s7 s7Var2 = u0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8743u0.class.getName().hashCode();
        String str = this.f20001c;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.f20002d;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }
}
