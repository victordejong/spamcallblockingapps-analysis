package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import java.io.IOException;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24409i;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24417p;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.AbstractC24361c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24797s;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/e.class */
public final class C24368e implements AbstractC24408h {

    /* renamed from: c */
    public final C24798t f67809c;

    /* renamed from: d */
    public final C24797s f67810d;

    /* renamed from: e */
    public AbstractC24409i f67811e;

    /* renamed from: f */
    public long f67812f;

    /* renamed from: i */
    public boolean f67815i;

    /* renamed from: j */
    public boolean f67816j;

    /* renamed from: a */
    public final C24369f f67807a = new C24369f(true, null);

    /* renamed from: b */
    public final C24798t f67808b = new C24798t(2048);

    /* renamed from: h */
    public int f67814h = -1;

    /* renamed from: g */
    public long f67813g = -1;

    public C24368e(int i) {
        C24798t c24798t = new C24798t(10);
        this.f67809c = c24798t;
        this.f67810d = new C24797s(c24798t.f69504a);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: a */
    public void mo5131a(long j, long j2) {
        this.f67815i = false;
        this.f67807a.mo5184a();
        this.f67812f = j2;
    }

    /* renamed from: b */
    public final int m5200b(C24353e c24353e) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            c24353e.m5210e(this.f67809c.f69504a, 0, 10, false);
            this.f67809c.m4547C(0);
            if (this.f67809c.m4527s() != 4801587) {
                break;
            }
            this.f67809c.m4546D(3);
            int m4530p = this.f67809c.m4530p();
            i += m4530p + 10;
            c24353e.m5214a(m4530p, false);
        }
        c24353e.f67728f = 0;
        c24353e.m5214a(i, false);
        if (this.f67813g == -1) {
            this.f67813g = i;
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: d */
    public int mo5128d(C24353e c24353e, C24417p c24417p) throws IOException, InterruptedException {
        long j = c24353e.f67725c;
        int m5209f = c24353e.m5209f(this.f67808b.f69504a, 0, 2048);
        boolean z = m5209f == -1;
        if (!this.f67816j) {
            AbstractC24409i abstractC24409i = this.f67811e;
            Objects.requireNonNull(abstractC24409i);
            abstractC24409i.mo4953s(new AbstractC24418q.C24420b(-9223372036854775807L, 0L));
            this.f67816j = true;
        }
        if (z) {
            return -1;
        }
        this.f67808b.m4547C(0);
        this.f67808b.m4548B(m5209f);
        if (!this.f67815i) {
            this.f67807a.f67836s = this.f67812f;
            this.f67815i = true;
        }
        this.f67807a.mo5181d(this.f67808b);
        return 0;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: h */
    public void mo5127h(AbstractC24409i abstractC24409i) {
        this.f67811e = abstractC24409i;
        this.f67807a.mo5180e(abstractC24409i, new AbstractC24361c0.C24365d(Integer.MIN_VALUE, 0, 1));
        abstractC24409i.mo4962g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
        r7.f67728f = 0;
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r9 - r0) < 8192) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo5126i(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            int r0 = r0.m5200b(r1)
            r8 = r0
            r0 = r8
            r9 = r0
        L8:
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
        Lf:
            r0 = r7
            r1 = r6
            e.m.a.c.q1.t r1 = r1.f67809c
            byte[] r1 = r1.f69504a
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = r0.m5210e(r1, r2, r3, r4)
            r0 = r6
            e.m.a.c.q1.t r0 = r0.f67809c
            r1 = 0
            r0.m4547C(r1)
            r0 = r6
            e.m.a.c.q1.t r0 = r0.f67809c
            int r0 = r0.m4524v()
            boolean r0 = p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24369f.m5198g(r0)
            if (r0 != 0) goto L50
            r0 = r7
            r1 = 0
            r0.f67728f = r1
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L46
            r0 = 0
            return r0
        L46:
            r0 = r7
            r1 = r9
            r2 = 0
            boolean r0 = r0.m5214a(r1, r2)
            goto L8
        L50:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L63
            r0 = r11
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L63
            r0 = 1
            return r0
        L63:
            r0 = r7
            r1 = r6
            e.m.a.c.q1.t r1 = r1.f67809c
            byte[] r1 = r1.f69504a
            r2 = 0
            r3 = 4
            r4 = 0
            boolean r0 = r0.m5210e(r1, r2, r3, r4)
            r0 = r6
            e.m.a.c.q1.s r0 = r0.f67810d
            r1 = 14
            r0.m4552j(r1)
            r0 = r6
            e.m.a.c.q1.s r0 = r0.f67810d
            r1 = 13
            int r0 = r0.m4556f(r1)
            r12 = r0
            r0 = r12
            r1 = 6
            if (r0 > r1) goto L8f
            r0 = 0
            return r0
        L8f:
            r0 = r7
            r1 = r12
            r2 = 6
            int r1 = r1 - r2
            r2 = 0
            boolean r0 = r0.m5214a(r1, r2)
            r0 = r11
            r1 = r12
            int r0 = r0 + r1
            r11 = r0
            goto Lf
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0.C24368e.mo5126i(e.m.a.c.g1.e):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24408h
    public void release() {
    }
}
