package p012b.p076s.p078b.p079a.p086s0.p094y;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
/* renamed from: b.s.b.a.s0.y.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/y/c.class */
public final class C1497c implements AbstractC1358o {

    /* renamed from: a */
    public final int f6148a;

    /* renamed from: b */
    public final int f6149b;

    /* renamed from: c */
    public final int f6150c;

    /* renamed from: d */
    public final int f6151d;

    /* renamed from: e */
    public final int f6152e;

    /* renamed from: f */
    public final int f6153f;

    /* renamed from: g */
    public long f6154g;

    /* renamed from: h */
    public long f6155h;

    public C1497c(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f6148a = i;
        this.f6149b = i2;
        this.f6150c = i3;
        this.f6151d = i4;
        this.f6152e = i5;
        this.f6153f = i6;
    }

    /* renamed from: a */
    public int m33122a() {
        return this.f6149b * this.f6152e * this.f6148a;
    }

    /* renamed from: a */
    public long m33121a(long j) {
        return (Math.max(0L, j - this.f6154g) * 1000000) / this.f6150c;
    }

    /* renamed from: a */
    public void m33120a(long j, long j2) {
        this.f6154g = j;
        this.f6155h = j2;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        long j2 = (this.f6150c * j) / 1000000;
        int i = this.f6151d;
        long b = C1167d0.m34455b((j2 / i) * i, 0L, this.f6155h - i);
        long j3 = this.f6154g + b;
        long a = m33121a(j3);
        C1361p pVar = new C1361p(a, j3);
        if (a < j) {
            long j4 = this.f6155h;
            int i2 = this.f6151d;
            if (b != j4 - i2) {
                long j5 = j3 + i2;
                return new AbstractC1358o.C1359a(pVar, new C1361p(m33121a(j5), j5));
            }
        }
        return new AbstractC1358o.C1359a(pVar);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return ((this.f6155h / this.f6151d) * 1000000) / this.f6149b;
    }

    /* renamed from: e */
    public int m33116e() {
        return this.f6151d;
    }

    /* renamed from: f */
    public long m33115f() {
        return m33111j() ? this.f6154g + this.f6155h : -1L;
    }

    /* renamed from: g */
    public int m33114g() {
        return this.f6153f;
    }

    /* renamed from: h */
    public int m33113h() {
        return this.f6148a;
    }

    /* renamed from: i */
    public int m33112i() {
        return this.f6149b;
    }

    /* renamed from: j */
    public boolean m33111j() {
        return (this.f6154g == 0 || this.f6155h == 0) ? false : true;
    }
}
