package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.b1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b1.class */
public final class C8556b1 extends AbstractC8714q7<C8556b1> {

    /* renamed from: c */
    public long[] f19607c;

    /* renamed from: d */
    public long[] f19608d;

    /* renamed from: e */
    public C8761w0[] f19609e = C8761w0.m17090e();

    /* renamed from: f */
    public C8565c1[] f19610f = C8565c1.m17765e();

    public C8556b1() {
        long[] jArr = C8799z7.f20160a;
        this.f19607c = jArr;
        this.f19608d = jArr;
        this.f19936b = null;
        this.f20095a = -1;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        long[] jArr;
        long[] jArr2;
        int a = super.mo16954a();
        long[] jArr3 = this.f19607c;
        int i = 0;
        int i2 = a;
        if (jArr3 != null) {
            i2 = a;
            if (jArr3.length > 0) {
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    jArr2 = this.f19607c;
                    if (i3 >= jArr2.length) {
                        break;
                    }
                    i4 += C8696o7.m17253b(jArr2[i3]);
                    i3++;
                }
                i2 = a + i4 + (jArr2.length * 1);
            }
        }
        long[] jArr4 = this.f19608d;
        int i5 = i2;
        if (jArr4 != null) {
            i5 = i2;
            if (jArr4.length > 0) {
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    jArr = this.f19608d;
                    if (i6 >= jArr.length) {
                        break;
                    }
                    i7 += C8696o7.m17253b(jArr[i6]);
                    i6++;
                }
                i5 = i2 + i7 + (jArr.length * 1);
            }
        }
        C8761w0[] w0VarArr = this.f19609e;
        int i8 = i5;
        if (w0VarArr != null) {
            i8 = i5;
            if (w0VarArr.length > 0) {
                i8 = i5;
                int i9 = 0;
                while (true) {
                    C8761w0[] w0VarArr2 = this.f19609e;
                    if (i9 >= w0VarArr2.length) {
                        break;
                    }
                    C8761w0 w0Var = w0VarArr2[i9];
                    i8 = i8;
                    if (w0Var != null) {
                        i8 += C8696o7.m17255b(3, w0Var);
                    }
                    i9++;
                }
            }
        }
        C8565c1[] c1VarArr = this.f19610f;
        int i10 = i8;
        if (c1VarArr != null) {
            i10 = i8;
            if (c1VarArr.length > 0) {
                while (true) {
                    C8565c1[] c1VarArr2 = this.f19610f;
                    i10 = i8;
                    if (i >= c1VarArr2.length) {
                        break;
                    }
                    C8565c1 c1Var = c1VarArr2[i];
                    i8 = i8;
                    if (c1Var != null) {
                        i8 += C8696o7.m17255b(4, c1Var);
                    }
                    i++;
                }
            }
        }
        return i10;
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
                int a = C8799z7.m16920a(n7Var, 8);
                long[] jArr = this.f19607c;
                int length = jArr == null ? 0 : jArr.length;
                long[] jArr2 = new long[a + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.f19607c, 0, jArr2, 0, length);
                    i = length;
                }
                while (i < jArr2.length - 1) {
                    jArr2[i] = n7Var.m17294f();
                    n7Var.m17300c();
                    i++;
                }
                jArr2[i] = n7Var.m17294f();
                this.f19607c = jArr2;
            } else if (c == 10) {
                int c2 = n7Var.m17299c(n7Var.m17296e());
                int a2 = n7Var.m17309a();
                int i2 = 0;
                while (n7Var.m17288k() > 0) {
                    n7Var.m17294f();
                    i2++;
                }
                n7Var.m17293f(a2);
                long[] jArr3 = this.f19607c;
                int length2 = jArr3 == null ? 0 : jArr3.length;
                long[] jArr4 = new long[i2 + length2];
                int i3 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.f19607c, 0, jArr4, 0, length2);
                    i3 = length2;
                }
                while (i3 < jArr4.length) {
                    jArr4[i3] = n7Var.m17294f();
                    i3++;
                }
                this.f19607c = jArr4;
                n7Var.m17297d(c2);
            } else if (c == 16) {
                int a3 = C8799z7.m16920a(n7Var, 16);
                long[] jArr5 = this.f19608d;
                int length3 = jArr5 == null ? 0 : jArr5.length;
                long[] jArr6 = new long[a3 + length3];
                int i4 = length3;
                if (length3 != 0) {
                    System.arraycopy(this.f19608d, 0, jArr6, 0, length3);
                    i4 = length3;
                }
                while (i4 < jArr6.length - 1) {
                    jArr6[i4] = n7Var.m17294f();
                    n7Var.m17300c();
                    i4++;
                }
                jArr6[i4] = n7Var.m17294f();
                this.f19608d = jArr6;
            } else if (c == 18) {
                int c3 = n7Var.m17299c(n7Var.m17296e());
                int a4 = n7Var.m17309a();
                int i5 = 0;
                while (n7Var.m17288k() > 0) {
                    n7Var.m17294f();
                    i5++;
                }
                n7Var.m17293f(a4);
                long[] jArr7 = this.f19608d;
                int length4 = jArr7 == null ? 0 : jArr7.length;
                long[] jArr8 = new long[i5 + length4];
                int i6 = length4;
                if (length4 != 0) {
                    System.arraycopy(this.f19608d, 0, jArr8, 0, length4);
                    i6 = length4;
                }
                while (i6 < jArr8.length) {
                    jArr8[i6] = n7Var.m17294f();
                    i6++;
                }
                this.f19608d = jArr8;
                n7Var.m17297d(c3);
            } else if (c == 26) {
                int a5 = C8799z7.m16920a(n7Var, 26);
                C8761w0[] w0VarArr = this.f19609e;
                int length5 = w0VarArr == null ? 0 : w0VarArr.length;
                C8761w0[] w0VarArr2 = new C8761w0[a5 + length5];
                int i7 = length5;
                if (length5 != 0) {
                    System.arraycopy(this.f19609e, 0, w0VarArr2, 0, length5);
                    i7 = length5;
                }
                while (i7 < w0VarArr2.length - 1) {
                    w0VarArr2[i7] = new C8761w0();
                    n7Var.m17305a(w0VarArr2[i7]);
                    n7Var.m17300c();
                    i7++;
                }
                w0VarArr2[i7] = new C8761w0();
                n7Var.m17305a(w0VarArr2[i7]);
                this.f19609e = w0VarArr2;
            } else if (c == 34) {
                int a6 = C8799z7.m16920a(n7Var, 34);
                C8565c1[] c1VarArr = this.f19610f;
                int length6 = c1VarArr == null ? 0 : c1VarArr.length;
                C8565c1[] c1VarArr2 = new C8565c1[a6 + length6];
                int i8 = length6;
                if (length6 != 0) {
                    System.arraycopy(this.f19610f, 0, c1VarArr2, 0, length6);
                    i8 = length6;
                }
                while (i8 < c1VarArr2.length - 1) {
                    c1VarArr2[i8] = new C8565c1();
                    n7Var.m17305a(c1VarArr2[i8]);
                    n7Var.m17300c();
                    i8++;
                }
                c1VarArr2[i8] = new C8565c1();
                n7Var.m17305a(c1VarArr2[i8]);
                this.f19610f = c1VarArr2;
            } else if (!super.m17236a(n7Var, c)) {
                return this;
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        long[] jArr = this.f19607c;
        int i = 0;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.f19607c;
                if (i2 >= jArr2.length) {
                    break;
                }
                o7Var.m17271a(1, jArr2[i2]);
                i2++;
            }
        }
        long[] jArr3 = this.f19608d;
        if (jArr3 != null && jArr3.length > 0) {
            int i3 = 0;
            while (true) {
                long[] jArr4 = this.f19608d;
                if (i3 >= jArr4.length) {
                    break;
                }
                o7Var.m17271a(2, jArr4[i3]);
                i3++;
            }
        }
        C8761w0[] w0VarArr = this.f19609e;
        if (w0VarArr != null && w0VarArr.length > 0) {
            int i4 = 0;
            while (true) {
                C8761w0[] w0VarArr2 = this.f19609e;
                if (i4 >= w0VarArr2.length) {
                    break;
                }
                C8761w0 w0Var = w0VarArr2[i4];
                if (w0Var != null) {
                    o7Var.m17269a(3, w0Var);
                }
                i4++;
            }
        }
        C8565c1[] c1VarArr = this.f19610f;
        if (c1VarArr != null && c1VarArr.length > 0) {
            while (true) {
                C8565c1[] c1VarArr2 = this.f19610f;
                if (i >= c1VarArr2.length) {
                    break;
                }
                C8565c1 c1Var = c1VarArr2[i];
                if (c1Var != null) {
                    o7Var.m17269a(4, c1Var);
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
        if (!(obj instanceof C8556b1)) {
            return false;
        }
        C8556b1 b1Var = (C8556b1) obj;
        if (!C8750u7.m17111a(this.f19607c, b1Var.f19607c) || !C8750u7.m17111a(this.f19608d, b1Var.f19608d) || !C8750u7.m17109a(this.f19609e, b1Var.f19609e) || !C8750u7.m17109a(this.f19610f, b1Var.f19610f)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(b1Var.f19936b);
        }
        C8732s7 s7Var2 = b1Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8556b1.class.getName().hashCode();
        int a = C8750u7.m17112a(this.f19607c);
        int a2 = C8750u7.m17112a(this.f19608d);
        int a3 = C8750u7.m17110a(this.f19609e);
        int a4 = C8750u7.m17110a(this.f19610f);
        C8732s7 s7Var = this.f19936b;
        return ((((((((((hashCode + 527) * 31) + a) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + ((s7Var == null || s7Var.m17185d()) ? 0 : this.f19936b.hashCode());
    }
}
