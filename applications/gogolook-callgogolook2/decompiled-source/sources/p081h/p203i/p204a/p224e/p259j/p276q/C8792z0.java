package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.z0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/z0.class */
public final class C8792z0 extends AbstractC8714q7<C8792z0> {

    /* renamed from: c */
    public C8547a1[] f20154c = C8547a1.m17846e();

    public C8792z0() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        C8547a1[] a1VarArr = this.f20154c;
        int i = a;
        if (a1VarArr != null) {
            i = a;
            if (a1VarArr.length > 0) {
                int i2 = 0;
                while (true) {
                    C8547a1[] a1VarArr2 = this.f20154c;
                    i = a;
                    if (i2 >= a1VarArr2.length) {
                        break;
                    }
                    C8547a1 a1Var = a1VarArr2[i2];
                    a = a;
                    if (a1Var != null) {
                        a += C8696o7.m17255b(1, a1Var);
                    }
                    i2++;
                }
            }
        }
        return i;
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
                C8547a1[] a1VarArr = this.f20154c;
                int length = a1VarArr == null ? 0 : a1VarArr.length;
                C8547a1[] a1VarArr2 = new C8547a1[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f20154c, 0, a1VarArr2, 0, length);
                    i = length;
                }
                while (i < a1VarArr2.length - 1) {
                    a1VarArr2[i] = new C8547a1();
                    n7Var.m17305a(a1VarArr2[i]);
                    n7Var.m17300c();
                    i++;
                }
                a1VarArr2[i] = new C8547a1();
                n7Var.m17305a(a1VarArr2[i]);
                this.f20154c = a1VarArr2;
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        C8547a1[] a1VarArr = this.f20154c;
        if (a1VarArr != null && a1VarArr.length > 0) {
            int i = 0;
            while (true) {
                C8547a1[] a1VarArr2 = this.f20154c;
                if (i >= a1VarArr2.length) {
                    break;
                }
                C8547a1 a1Var = a1VarArr2[i];
                if (a1Var != null) {
                    o7Var.m17269a(1, a1Var);
                }
                i++;
            }
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8792z0)) {
            return false;
        }
        C8792z0 z0Var = (C8792z0) obj;
        if (!C8750u7.m17109a(this.f20154c, z0Var.f20154c)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(z0Var.f19936b);
        }
        C8732s7 s7Var2 = z0Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8792z0.class.getName().hashCode();
        int a = C8750u7.m17110a(this.f20154c);
        C8732s7 s7Var = this.f19936b;
        return ((((hashCode + 527) * 31) + a) * 31) + ((s7Var == null || s7Var.m17185d()) ? 0 : this.f19936b.hashCode());
    }
}
