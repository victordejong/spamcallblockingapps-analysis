package p193e.p1577m.p1578a.p1596c.p1620l1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24286g0;
import p193e.p1577m.p1578a.p1596c.C24859x0;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.l1.l */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/l.class */
public final class C24524l implements AbstractC24529o, AbstractC24529o.AbstractC24530a {

    /* renamed from: a */
    public final AbstractC24529o f68493a;

    /* renamed from: b */
    public AbstractC24529o.AbstractC24530a f68494b;

    /* renamed from: c */
    public C24525a[] f68495c = new C24525a[0];

    /* renamed from: d */
    public long f68496d;

    /* renamed from: e */
    public long f68497e;

    /* renamed from: f */
    public long f68498f;

    /* renamed from: e.m.a.c.l1.l$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/l1/l$a.class */
    public final class C24525a implements AbstractC24554w {

        /* renamed from: a */
        public final AbstractC24554w f68499a;

        /* renamed from: b */
        public boolean f68500b;

        public C24525a(AbstractC24554w abstractC24554w) {
            C24524l.this = r4;
            this.f68499a = abstractC24554w;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: a */
        public void mo4912a() throws IOException {
            this.f68499a.mo4912a();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: b */
        public boolean mo4911b() {
            return !C24524l.this.m4980m() && this.f68499a.mo4911b();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: c */
        public int mo4910c(long j) {
            if (C24524l.this.m4980m()) {
                return -3;
            }
            return this.f68499a.mo4910c(j);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w
        /* renamed from: d */
        public int mo4909d(C24286g0 c24286g0, C24265e c24265e, boolean z) {
            if (C24524l.this.m4980m()) {
                return -3;
            }
            if (this.f68500b) {
                c24265e.setFlags(4);
                return -4;
            }
            int mo4909d = this.f68499a.mo4909d(c24286g0, c24265e, z);
            if (mo4909d != -5) {
                C24524l c24524l = C24524l.this;
                long j = c24524l.f68498f;
                if (j == Long.MIN_VALUE || ((mo4909d != -4 || c24265e.f67303d < j) && !(mo4909d == -3 && c24524l.mo4967b() == Long.MIN_VALUE && !c24265e.f67302c))) {
                    return mo4909d;
                }
                c24265e.clear();
                c24265e.setFlags(4);
                this.f68500b = true;
                return -4;
            }
            Format format = c24286g0.f67334c;
            Objects.requireNonNull(format);
            int i = format.f4863y;
            if (i == 0 && format.f4864z == 0) {
                return -5;
            }
            C24524l c24524l2 = C24524l.this;
            int i2 = 0;
            if (c24524l2.f68497e != 0) {
                i = 0;
            }
            if (c24524l2.f68498f == Long.MIN_VALUE) {
                i2 = format.f4864z;
            }
            c24286g0.f67334c = format.m39257c(i, i2);
            return -5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C24524l(AbstractC24529o abstractC24529o, boolean z, long j, long j2) {
        this.f68493a = abstractC24529o;
        this.f68496d = z ? j : (char) 1;
        this.f68497e = j;
        this.f68498f = j2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: a */
    public boolean mo4968a(long j) {
        return this.f68493a.mo4968a(j);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: b */
    public long mo4967b() {
        long mo4967b = this.f68493a.mo4967b();
        if (mo4967b != Long.MIN_VALUE) {
            long j = this.f68498f;
            if (j != Long.MIN_VALUE && mo4967b >= j) {
                return Long.MIN_VALUE;
            }
            return mo4967b;
        }
        return Long.MIN_VALUE;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: c */
    public void mo4966c(long j) {
        this.f68493a.mo4966c(j);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: d */
    public long mo4965d() {
        long mo4965d = this.f68493a.mo4965d();
        if (mo4965d != Long.MIN_VALUE) {
            long j = this.f68498f;
            if (j != Long.MIN_VALUE && mo4965d >= j) {
                return Long.MIN_VALUE;
            }
            return mo4965d;
        }
        return Long.MIN_VALUE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if (r0 <= r0) goto L17;
     */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo4964e(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f68496d = r1
            r0 = r5
            e.m.a.c.l1.l$a[] r0 = r0.f68495c
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L16:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L34
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L2e
            r0 = r12
            r1 = 0
            r0.f68500b = r1
        L2e:
            int r11 = r11 + 1
            goto L16
        L34:
            r0 = r5
            e.m.a.c.l1.o r0 = r0.f68493a
            r1 = r6
            long r0 = r0.mo4964e(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f68497e
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L70
            r0 = r5
            long r0 = r0.f68498f
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L6d
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L70
        L6d:
            r0 = 1
            r15 = r0
        L70:
            r0 = r15
            p1727n3.p1789g0.C26232y.m2286x(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24524l.mo4964e(long):long");
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: f */
    public long mo4963f() {
        if (m4980m()) {
            char c = this.f68496d;
            this.f68496d = -9223372036854775807L;
            ?? mo4963f = mo4963f();
            if (mo4963f != -9223372036854775807L) {
                c = mo4963f;
            }
            return c;
        }
        long mo4963f2 = this.f68493a.mo4963f();
        if (mo4963f2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        C26232y.m2286x(mo4963f2 >= this.f68497e);
        long j = this.f68498f;
        boolean z = true;
        if (j != Long.MIN_VALUE) {
            z = mo4963f2 <= j;
        }
        C26232y.m2286x(z);
        return mo4963f2;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24555x.AbstractC24556a
    /* renamed from: g */
    public void mo4908g(AbstractC24529o abstractC24529o) {
        AbstractC24529o.AbstractC24530a abstractC24530a = this.f68494b;
        Objects.requireNonNull(abstractC24530a);
        abstractC24530a.mo4908g(this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: h */
    public TrackGroupArray mo4961h() {
        return this.f68493a.mo4961h();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o.AbstractC24530a
    /* renamed from: i */
    public void mo4979i(AbstractC24529o abstractC24529o) {
        AbstractC24529o.AbstractC24530a abstractC24530a = this.f68494b;
        Objects.requireNonNull(abstractC24530a);
        abstractC24530a.mo4979i(this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: j */
    public void mo4959j() throws IOException {
        this.f68493a.mo4959j();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: k */
    public void mo4958k(long j, boolean z) {
        this.f68493a.mo4958k(j, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0122  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo4957l(p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f[] r9, boolean[] r10, p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24554w[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1620l1.C24524l.mo4957l(e.m.a.c.n1.f[], boolean[], e.m.a.c.l1.w[], boolean[], long):long");
    }

    /* renamed from: m */
    public boolean m4980m() {
        return this.f68496d != -9223372036854775807L;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: o */
    public boolean mo4956o() {
        return this.f68493a.mo4956o();
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: p */
    public long mo4955p(long j, C24859x0 c24859x0) {
        long j2 = this.f68497e;
        if (j == j2) {
            return j2;
        }
        long m4617g = C24773d0.m4617g(c24859x0.f69710a, 0L, j - j2);
        long j3 = c24859x0.f69711b;
        long j4 = this.f68498f;
        long m4617g2 = C24773d0.m4617g(j3, 0L, j4 == Long.MIN_VALUE ? (char) 65535 : j4 - j);
        if (m4617g != c24859x0.f69710a || m4617g2 != c24859x0.f69711b) {
            c24859x0 = new C24859x0(m4617g, m4617g2);
        }
        return this.f68493a.mo4955p(j, c24859x0);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24529o
    /* renamed from: q */
    public void mo4954q(AbstractC24529o.AbstractC24530a abstractC24530a, long j) {
        this.f68494b = abstractC24530a;
        this.f68493a.mo4954q(this, j);
    }
}
