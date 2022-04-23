package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.c1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/c1.class */
public final class C8565c1 extends AbstractC8714q7<C8565c1> {

    /* renamed from: e */
    public static volatile C8565c1[] f19620e;

    /* renamed from: c */
    public Integer f19621c = null;

    /* renamed from: d */
    public long[] f19622d = C8799z7.f20160a;

    public C8565c1() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8565c1[] m17765e() {
        if (f19620e == null) {
            synchronized (C8750u7.f20012b) {
                if (f19620e == null) {
                    f19620e = new C8565c1[0];
                }
            }
        }
        return f19620e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        long[] jArr;
        int a = super.mo16954a();
        Integer num = this.f19621c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        long[] jArr2 = this.f19622d;
        int i2 = i;
        if (jArr2 != null) {
            i2 = i;
            if (jArr2.length > 0) {
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    jArr = this.f19622d;
                    if (i3 >= jArr.length) {
                        break;
                    }
                    i4 += C8696o7.m17253b(jArr[i3]);
                    i3++;
                }
                i2 = i + i4 + (jArr.length * 1);
            }
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
            if (c == 8) {
                this.f19621c = Integer.valueOf(n7Var.m17296e());
            } else if (c == 16) {
                int a = C8799z7.m16920a(n7Var, 16);
                long[] jArr = this.f19622d;
                int length = jArr == null ? 0 : jArr.length;
                long[] jArr2 = new long[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19622d, 0, jArr2, 0, length);
                    i = length;
                }
                while (i < jArr2.length - 1) {
                    jArr2[i] = n7Var.m17294f();
                    n7Var.m17300c();
                    i++;
                }
                jArr2[i] = n7Var.m17294f();
                this.f19622d = jArr2;
            } else if (c == 18) {
                int c2 = n7Var.m17299c(n7Var.m17296e());
                int a2 = n7Var.m17309a();
                int i2 = 0;
                while (n7Var.m17288k() > 0) {
                    n7Var.m17294f();
                    i2++;
                }
                n7Var.m17293f(a2);
                long[] jArr3 = this.f19622d;
                int length2 = jArr3 == null ? 0 : jArr3.length;
                long[] jArr4 = new long[i2 + length2];
                int i3 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.f19622d, 0, jArr4, 0, length2);
                    i3 = length2;
                }
                while (i3 < jArr4.length) {
                    jArr4[i3] = n7Var.m17294f();
                    i3++;
                }
                this.f19622d = jArr4;
                n7Var.m17297d(c2);
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19621c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        long[] jArr = this.f19622d;
        if (jArr != null && jArr.length > 0) {
            int i = 0;
            while (true) {
                long[] jArr2 = this.f19622d;
                if (i >= jArr2.length) {
                    break;
                }
                o7Var.m17256b(2, jArr2[i]);
                i++;
            }
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8565c1)) {
            return false;
        }
        C8565c1 c1Var = (C8565c1) obj;
        Integer num = this.f19621c;
        if (num == null) {
            if (c1Var.f19621c != null) {
                return false;
            }
        } else if (!num.equals(c1Var.f19621c)) {
            return false;
        }
        if (!C8750u7.m17111a(this.f19622d, c1Var.f19622d)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(c1Var.f19936b);
        }
        C8732s7 s7Var2 = c1Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8565c1.class.getName().hashCode();
        Integer num = this.f19621c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int a = C8750u7.m17112a(this.f19622d);
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + a) * 31) + i;
    }
}
