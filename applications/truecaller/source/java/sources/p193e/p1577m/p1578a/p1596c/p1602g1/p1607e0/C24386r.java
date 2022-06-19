package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/r.class */
public final class C24386r implements AbstractC24361c0 {

    /* renamed from: a */
    public final AbstractC24373j f67999a;

    /* renamed from: b */
    public final C24797s f68000b = new C24797s(new byte[10]);

    /* renamed from: c */
    public int f68001c = 0;

    /* renamed from: d */
    public int f68002d;

    /* renamed from: e */
    public C24771c0 f68003e;

    /* renamed from: f */
    public boolean f68004f;

    /* renamed from: g */
    public boolean f68005g;

    /* renamed from: h */
    public boolean f68006h;

    /* renamed from: i */
    public int f68007i;

    /* renamed from: j */
    public int f68008j;

    /* renamed from: k */
    public boolean f68009k;

    /* renamed from: l */
    public long f68010l;

    public C24386r(AbstractC24373j abstractC24373j) {
        this.f67999a = abstractC24373j;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: a */
    public final void mo5169a() {
        this.f68001c = 0;
        this.f68002d = 0;
        this.f68006h = false;
        this.f67999a.mo5184a();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: b */
    public void mo5168b(C24771c0 c24771c0, AbstractC24409i abstractC24409i, AbstractC24361c0.C24365d c24365d) {
        this.f68003e = c24771c0;
        this.f67999a.mo5180e(abstractC24409i, c24365d);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0
    /* renamed from: c */
    public final void mo5167c(C24798t c24798t, int i) throws C24560m0 {
        boolean z;
        if ((i & 1) != 0) {
            int i2 = this.f68001c;
            if (i2 != 0 && i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    throw new IllegalStateException();
                }
                int i3 = this.f68008j;
                this.f67999a.mo5183b();
            }
            m5174e(1);
        }
        while (c24798t.m4545a() > 0) {
            int i4 = this.f68001c;
            if (i4 != 0) {
                int i5 = 0;
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (m5175d(c24798t, this.f68000b.f69500a, Math.min(10, this.f68007i)) && m5175d(c24798t, null, this.f68007i)) {
                            this.f68000b.m4552j(0);
                            this.f68010l = -9223372036854775807L;
                            if (this.f68004f) {
                                this.f68000b.m4550l(4);
                                long m4556f = this.f68000b.m4556f(3);
                                this.f68000b.m4550l(1);
                                long m4556f2 = this.f68000b.m4556f(15) << 15;
                                this.f68000b.m4550l(1);
                                long m4556f3 = this.f68000b.m4556f(15);
                                this.f68000b.m4550l(1);
                                if (!this.f68006h && this.f68005g) {
                                    this.f68000b.m4550l(4);
                                    long m4556f4 = this.f68000b.m4556f(3);
                                    this.f68000b.m4550l(1);
                                    long m4556f5 = this.f68000b.m4556f(15) << 15;
                                    this.f68000b.m4550l(1);
                                    long m4556f6 = this.f68000b.m4556f(15);
                                    this.f68000b.m4550l(1);
                                    this.f68003e.m4632b((m4556f4 << 30) | m4556f5 | m4556f6);
                                    this.f68006h = true;
                                }
                                this.f68010l = this.f68003e.m4632b((m4556f << 30) | m4556f2 | m4556f3);
                            }
                            i |= this.f68009k ? 4 : 0;
                            this.f67999a.mo5182c(this.f68010l, i);
                            m5174e(3);
                        }
                    } else if (i4 != 3) {
                        throw new IllegalStateException();
                    } else {
                        int m4545a = c24798t.m4545a();
                        int i6 = this.f68008j;
                        if (i6 != -1) {
                            i5 = m4545a - i6;
                        }
                        int i7 = m4545a;
                        if (i5 > 0) {
                            i7 = m4545a - i5;
                            c24798t.m4548B(c24798t.f69505b + i7);
                        }
                        this.f67999a.mo5181d(c24798t);
                        int i8 = this.f68008j;
                        if (i8 != -1) {
                            int i9 = i8 - i7;
                            this.f68008j = i9;
                            if (i9 == 0) {
                                this.f67999a.mo5183b();
                                m5174e(1);
                            }
                        }
                    }
                } else if (m5175d(c24798t, this.f68000b.f69500a, 9)) {
                    int i10 = 0;
                    this.f68000b.m4552j(0);
                    if (this.f68000b.m4556f(24) != 1) {
                        this.f68008j = -1;
                        z = false;
                    } else {
                        this.f68000b.m4550l(8);
                        int m4556f7 = this.f68000b.m4556f(16);
                        this.f68000b.m4550l(5);
                        this.f68009k = this.f68000b.m4557e();
                        this.f68000b.m4550l(2);
                        this.f68004f = this.f68000b.m4557e();
                        this.f68005g = this.f68000b.m4557e();
                        this.f68000b.m4550l(6);
                        int m4556f8 = this.f68000b.m4556f(8);
                        this.f68007i = m4556f8;
                        if (m4556f7 == 0) {
                            this.f68008j = -1;
                        } else {
                            this.f68008j = ((m4556f7 + 6) - 9) - m4556f8;
                        }
                        z = true;
                    }
                    if (z) {
                        i10 = 2;
                    }
                    m5174e(i10);
                }
            } else {
                c24798t.m4546D(c24798t.m4545a());
            }
        }
    }

    /* renamed from: d */
    public final boolean m5175d(C24798t c24798t, byte[] bArr, int i) {
        int min = Math.min(c24798t.m4545a(), i - this.f68002d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c24798t.m4546D(min);
        } else {
            System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, this.f68002d, min);
            c24798t.f69505b += min;
        }
        int i2 = this.f68002d + min;
        this.f68002d = i2;
        if (i2 != i) {
            z = false;
        }
        return z;
    }

    /* renamed from: e */
    public final void m5174e(int i) {
        this.f68001c = i;
        this.f68002d = 0;
    }
}
