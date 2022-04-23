package p131c.p161d.p170b.p188c.p210w0.p218y;

import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
/* renamed from: c.d.b.c.w0.y.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/y/c.class */
public final class C3190c implements AbstractC3050o {

    /* renamed from: a */
    public final int f11785a;

    /* renamed from: b */
    public final int f11786b;

    /* renamed from: c */
    public final int f11787c;

    /* renamed from: d */
    public final int f11788d;

    /* renamed from: e */
    public final int f11789e;

    /* renamed from: f */
    public final int f11790f;

    /* renamed from: g */
    public int f11791g = -1;

    /* renamed from: h */
    public long f11792h = -1;

    public C3190c(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f11785a = i;
        this.f11786b = i2;
        this.f11787c = i3;
        this.f11788d = i4;
        this.f11789e = i5;
        this.f11790f = i6;
    }

    /* renamed from: a */
    public int m27548a() {
        return this.f11786b * this.f11789e * this.f11785a;
    }

    /* renamed from: a */
    public long m27546a(long j) {
        return (Math.max(0L, j - this.f11791g) * 1000000) / this.f11787c;
    }

    /* renamed from: a */
    public void m27547a(int i, long j) {
        this.f11791g = i;
        this.f11792h = j;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        long j2 = this.f11792h - this.f11791g;
        long j3 = (this.f11787c * j) / 1000000;
        int i = this.f11788d;
        long b = C2885h0.m28649b((j3 / i) * i, 0L, j2 - i);
        long j4 = this.f11791g + b;
        long a = m27546a(j4);
        C3053p pVar = new C3053p(a, j4);
        if (a < j) {
            int i2 = this.f11788d;
            if (b != j2 - i2) {
                long j5 = j4 + i2;
                return new AbstractC3050o.C3051a(pVar, new C3053p(m27546a(j5), j5));
            }
        }
        return new AbstractC3050o.C3051a(pVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return (((this.f11792h - this.f11791g) / this.f11788d) * 1000000) / this.f11786b;
    }

    /* renamed from: d */
    public long m27542d() {
        return this.f11792h;
    }

    /* renamed from: e */
    public int m27541e() {
        return this.f11788d;
    }

    /* renamed from: f */
    public int m27540f() {
        return this.f11791g;
    }

    /* renamed from: g */
    public int m27539g() {
        return this.f11790f;
    }

    /* renamed from: h */
    public int m27538h() {
        return this.f11785a;
    }

    /* renamed from: i */
    public int m27537i() {
        return this.f11786b;
    }

    /* renamed from: j */
    public boolean m27536j() {
        return this.f11791g != -1;
    }
}
