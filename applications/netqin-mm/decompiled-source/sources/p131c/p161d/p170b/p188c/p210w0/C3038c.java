package p131c.p161d.p170b.p188c.p210w0;

import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
/* renamed from: c.d.b.c.w0.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/c.class */
public class C3038c implements AbstractC3050o {

    /* renamed from: a */
    public final long f10948a;

    /* renamed from: b */
    public final long f10949b;

    /* renamed from: c */
    public final int f10950c;

    /* renamed from: d */
    public final long f10951d;

    /* renamed from: e */
    public final int f10952e;

    /* renamed from: f */
    public final long f10953f;

    public C3038c(long j, long j2, int i, int i2) {
        this.f10948a = j;
        this.f10949b = j2;
        this.f10950c = i2 == -1 ? 1 : i2;
        this.f10952e = i;
        if (j == -1) {
            this.f10951d = -1L;
            this.f10953f = -9223372036854775807L;
            return;
        }
        this.f10951d = j - j2;
        this.f10953f = m28068a(j, j2, i);
    }

    /* renamed from: a */
    public static long m28068a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        if (this.f10951d == -1) {
            return new AbstractC3050o.C3051a(new C3053p(0L, this.f10949b));
        }
        long c = m28067c(j);
        long d = m28066d(c);
        C3053p pVar = new C3053p(d, c);
        if (d < j) {
            int i = this.f10950c;
            if (i + c < this.f10948a) {
                long j2 = c + i;
                return new AbstractC3050o.C3051a(pVar, new C3053p(m28066d(j2), j2));
            }
        }
        return new AbstractC3050o.C3051a(pVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return this.f10951d != -1;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f10953f;
    }

    /* renamed from: c */
    public final long m28067c(long j) {
        long j2 = (j * this.f10952e) / 8000000;
        int i = this.f10950c;
        return this.f10949b + C2885h0.m28649b((j2 / i) * i, 0L, this.f10951d - i);
    }

    /* renamed from: d */
    public long m28066d(long j) {
        return m28068a(j, this.f10949b, this.f10952e);
    }
}
