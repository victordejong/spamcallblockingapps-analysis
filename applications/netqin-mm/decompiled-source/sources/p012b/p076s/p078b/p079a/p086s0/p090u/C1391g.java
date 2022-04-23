package p012b.p076s.p078b.p079a.p086s0.p090u;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1356m;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
import p012b.p076s.p078b.p079a.p086s0.p090u.C1388e;
/* renamed from: b.s.b.a.s0.u.g */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/u/g.class */
public final class C1391g implements C1388e.AbstractC1389a {

    /* renamed from: a */
    public final long f5566a;

    /* renamed from: b */
    public final int f5567b;

    /* renamed from: c */
    public final long f5568c;

    /* renamed from: d */
    public final long f5569d;

    /* renamed from: e */
    public final long f5570e;

    /* renamed from: f */
    public final long[] f5571f;

    public C1391g(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C1391g(long j, int i, long j2, long j3, long[] jArr) {
        this.f5566a = j;
        this.f5567b = i;
        this.f5568c = j2;
        this.f5571f = jArr;
        this.f5569d = j3;
        long j4 = -1;
        if (j3 != -1) {
            j4 = j + j3;
        }
        this.f5570e = j4;
    }

    /* renamed from: a */
    public static C1391g m33496a(long j, long j2, C1356m mVar, C1184p pVar) {
        int v;
        int i = mVar.f5354g;
        int i2 = mVar.f5351d;
        int f = pVar.m34357f();
        if ((f & 1) != 1 || (v = pVar.m34340v()) == 0) {
            return null;
        }
        long c = C1167d0.m34445c(v, i * 1000000, i2);
        if ((f & 6) != 6) {
            return new C1391g(j2, mVar.f5350c, c);
        }
        long v2 = pVar.m34340v();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = pVar.m34344r();
        }
        if (j != -1) {
            long j3 = j2 + v2;
            if (j != j3) {
                StringBuilder sb = new StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(", ");
                sb.append(j3);
                C1175j.m34414d("XingSeeker", sb.toString());
            }
        }
        return new C1391g(j2, mVar.f5350c, c, v2, jArr);
    }

    /* renamed from: a */
    public final long m33498a(int i) {
        return (this.f5568c * i) / 100;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: a */
    public long mo33497a(long j) {
        double d;
        long j2 = j - this.f5566a;
        if (!mo33119b() || j2 <= this.f5567b) {
            return 0L;
        }
        long[] jArr = this.f5571f;
        C1160a.m34522a(jArr);
        long[] jArr2 = jArr;
        double d2 = j2;
        Double.isNaN(d2);
        double d3 = this.f5569d;
        Double.isNaN(d3);
        double d4 = (d2 * 256.0d) / d3;
        int b = C1167d0.m34449b(jArr2, (long) d4, true, true);
        long a = m33498a(b);
        long j3 = jArr2[b];
        int i = b + 1;
        long a2 = m33498a(i);
        long j4 = b == 99 ? 256L : jArr2[i];
        if (j3 == j4) {
            d = 0.0d;
        } else {
            double d5 = j3;
            Double.isNaN(d5);
            double d6 = j4 - j3;
            Double.isNaN(d6);
            d = (d4 - d5) / d6;
        }
        double d7 = a2 - a;
        Double.isNaN(d7);
        return a + Math.round(d * d7);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        long[] jArr;
        if (!mo33119b()) {
            return new AbstractC1358o.C1359a(new C1361p(0L, this.f5566a + this.f5567b));
        }
        long b = C1167d0.m34455b(j, 0L, this.f5568c);
        double d = b;
        Double.isNaN(d);
        double d2 = this.f5568c;
        Double.isNaN(d2);
        double d3 = (d * 100.0d) / d2;
        double d4 = 0.0d;
        if (d3 > 0.0d) {
            if (d3 >= 100.0d) {
                d4 = 256.0d;
            } else {
                int i = (int) d3;
                long[] jArr2 = this.f5571f;
                C1160a.m34522a(jArr2);
                double d5 = jArr2[i];
                double d6 = i == 99 ? 256.0d : jArr[i + 1];
                double d7 = i;
                Double.isNaN(d7);
                Double.isNaN(d5);
                Double.isNaN(d5);
                d4 = d5 + ((d3 - d7) * (d6 - d5));
            }
        }
        double d8 = this.f5569d;
        Double.isNaN(d8);
        return new AbstractC1358o.C1359a(new C1361p(b, this.f5566a + C1167d0.m34455b(Math.round((d4 / 256.0d) * d8), this.f5567b, this.f5569d - 1)));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return this.f5571f != null;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5568c;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: d */
    public long mo33495d() {
        return this.f5570e;
    }
}
