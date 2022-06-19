package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import java.io.IOException;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.d0.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/a.class */
public final class C24337a implements AbstractC24345f {

    /* renamed from: a */
    public final C24344e f67663a = new C24344e();

    /* renamed from: b */
    public final long f67664b;

    /* renamed from: c */
    public final long f67665c;

    /* renamed from: d */
    public final AbstractC24347h f67666d;

    /* renamed from: e */
    public int f67667e;

    /* renamed from: f */
    public long f67668f;

    /* renamed from: g */
    public long f67669g;

    /* renamed from: h */
    public long f67670h;

    /* renamed from: i */
    public long f67671i;

    /* renamed from: j */
    public long f67672j;

    /* renamed from: k */
    public long f67673k;

    /* renamed from: l */
    public long f67674l;

    /* renamed from: e.m.a.c.g1.d0.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/a$b.class */
    public final class C24339b implements AbstractC24418q {
        public C24339b(C24338a c24338a) {
            C24337a.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: b */
        public AbstractC24418q.C24419a mo5144b(long j) {
            C24337a c24337a = C24337a.this;
            long j2 = (c24337a.f67666d.f67707i * j) / 1000000;
            long j3 = c24337a.f67664b;
            long j4 = c24337a.f67665c;
            return new AbstractC24418q.C24419a(new C24421r(j, C24773d0.m4617g(((((j4 - j3) * j2) / c24337a.f67668f) + j3) - 30000, j3, j4 - 1)));
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: c */
        public boolean mo5143c() {
            return true;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: g */
        public long mo5142g() {
            C24337a c24337a = C24337a.this;
            return (c24337a.f67668f * 1000000) / c24337a.f67666d.f67707i;
        }
    }

    public C24337a(AbstractC24347h abstractC24347h, long j, long j2, long j3, long j4, boolean z) {
        C26232y.m2310r(j >= 0 && j2 > j);
        this.f67666d = abstractC24347h;
        this.f67664b = j;
        this.f67665c = j2;
        if (j3 != j2 - j && !z) {
            this.f67667e = 0;
            return;
        }
        this.f67668f = j4;
        this.f67667e = 4;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
    /* renamed from: a */
    public AbstractC24418q mo5221a() {
        C24339b c24339b = null;
        if (this.f67668f != 0) {
            c24339b = new C24339b(null);
        }
        return c24339b;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0147  */
    /* JADX WARN: Type inference failed for: r0v107, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo5220b(p193e.p1577m.p1578a.p1596c.p1602g1.C24353e r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.C24337a.mo5220b(e.m.a.c.g1.e):long");
    }

    /* renamed from: c */
    public final boolean m5229c(C24353e c24353e, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f67665c);
        int i2 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            long j2 = c24353e.f67726d;
            int i3 = 0;
            if (i2 + j2 > min) {
                int i4 = (int) (min - j2);
                i2 = i4;
                if (i4 < 4) {
                    return false;
                }
            }
            c24353e.m5210e(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        c24353e.m5206i(i3);
                        return true;
                    }
                    i3++;
                }
            }
            c24353e.m5206i(i);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24345f
    /* renamed from: d */
    public void mo5219d(long j) {
        this.f67670h = C24773d0.m4617g(j, 0L, this.f67668f - 1);
        this.f67667e = 2;
        this.f67671i = this.f67664b;
        this.f67672j = this.f67665c;
        this.f67673k = 0L;
        this.f67674l = this.f67668f;
    }
}
