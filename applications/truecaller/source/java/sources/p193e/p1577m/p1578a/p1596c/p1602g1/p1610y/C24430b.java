package p193e.p1577m.p1578a.p1596c.p1602g1.p1610y;

import java.io.IOException;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24306b;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24411k;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24787m;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.y.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/y/b.class */
public final class C24430b extends AbstractC24287a {

    /* renamed from: e.m.a.c.g1.y.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/y/b$b.class */
    public static final class C24432b implements AbstractC24287a.AbstractC24293f {

        /* renamed from: a */
        public final C24787m f68160a;

        /* renamed from: b */
        public final int f68161b;

        /* renamed from: c */
        public final C24411k.C24412a f68162c = new C24411k.C24412a();

        public C24432b(C24787m c24787m, int i, C24431a c24431a) {
            this.f68160a = c24787m;
            this.f68161b = i;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a.AbstractC24293f
        /* renamed from: a */
        public /* synthetic */ void mo5135a() {
            C24306b.m5274a(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a.AbstractC24293f
        /* renamed from: b */
        public AbstractC24287a.C24292e mo5134b(C24353e c24353e, long j) throws IOException, InterruptedException {
            long j2 = c24353e.f67726d;
            long m5133c = m5133c(c24353e);
            long m5211d = c24353e.m5211d();
            c24353e.m5214a(Math.max(6, this.f68160a.f69465c), false);
            long m5133c2 = m5133c(c24353e);
            return (m5133c > j || m5133c2 <= j) ? m5133c2 <= j ? AbstractC24287a.C24292e.m5300c(m5133c2, c24353e.m5211d()) : AbstractC24287a.C24292e.m5302a(m5133c, j2) : AbstractC24287a.C24292e.m5301b(m5211d);
        }

        /* renamed from: c */
        public final long m5133c(C24353e c24353e) throws IOException, InterruptedException {
            boolean z;
            while (c24353e.m5211d() < c24353e.f67725c - 6) {
                C24787m c24787m = this.f68160a;
                int i = this.f68161b;
                C24411k.C24412a c24412a = this.f68162c;
                long m5211d = c24353e.m5211d();
                byte[] bArr = new byte[2];
                c24353e.m5210e(bArr, 0, 2, false);
                if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                    c24353e.f67728f = 0;
                    c24353e.m5214a((int) (m5211d - c24353e.f67726d), false);
                    z = false;
                } else {
                    C24798t c24798t = new C24798t(16);
                    System.arraycopy(bArr, 0, c24798t.f69504a, 0, 2);
                    c24798t.m4548B(C26232y.m2482B1(c24353e, c24798t.f69504a, 2, 14));
                    c24353e.f67728f = 0;
                    c24353e.m5214a((int) (m5211d - c24353e.f67726d), false);
                    z = C24411k.m5154b(c24798t, c24787m, i, c24412a);
                }
                if (z) {
                    break;
                }
                c24353e.m5214a(1, false);
            }
            long m5211d2 = c24353e.m5211d();
            long j = c24353e.f67725c;
            if (m5211d2 >= j - 6) {
                c24353e.m5214a((int) (j - c24353e.m5211d()), false);
                return this.f68160a.f69472j;
            }
            return this.f68162c.f68095a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1 */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C24430b(final p193e.p1577m.p1578a.p1596c.p1636q1.C24787m r19, int r20, long r21, long r23) {
        /*
            r18 = this;
            r0 = r19
            java.lang.Class r0 = r0.getClass()
            e.m.a.c.g1.y.a r0 = new e.m.a.c.g1.y.a
            r1 = r0
            r2 = r19
            r1.<init>()
            r25 = r0
            e.m.a.c.g1.y.b$b r0 = new e.m.a.c.g1.y.b$b
            r1 = r0
            r2 = r19
            r3 = r20
            r4 = 0
            r1.<init>(r2, r3, r4)
            r26 = r0
            r0 = r19
            long r0 = r0.m4581d()
            r27 = r0
            r0 = r19
            long r0 = r0.f69472j
            r29 = r0
            r0 = r19
            int r0 = r0.f69466d
            r20 = r0
            r0 = r20
            if (r0 <= 0) goto L44
            r0 = r20
            long r0 = (long) r0
            r1 = r19
            int r1 = r1.f69465c
            long r1 = (long) r1
            long r0 = r0 + r1
            r1 = 2
            long r0 = r0 / r1
            r31 = r0
            r0 = 1
            r33 = r0
            goto L7a
        L44:
            r0 = r19
            int r0 = r0.f69463a
            r20 = r0
            r0 = r20
            r1 = r19
            int r1 = r1.f69464b
            if (r0 != r1) goto L5c
            r0 = r20
            if (r0 <= 0) goto L5c
            r0 = r20
            long r0 = (long) r0
            r33 = r0
            goto L61
        L5c:
            r0 = 4096(0x1000, double:2.0237E-320)
            r33 = r0
        L61:
            r0 = r33
            r1 = r19
            int r1 = r1.f69469g
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = r19
            int r1 = r1.f69470h
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 8
            long r0 = r0 / r1
            r31 = r0
            r0 = 64
            r33 = r0
        L7a:
            r0 = r18
            r1 = r25
            r2 = r26
            r3 = r27
            r4 = 0
            r5 = r29
            r6 = r21
            r7 = r23
            r8 = r31
            r9 = r33
            long r8 = r8 + r9
            r9 = 6
            r10 = r19
            int r10 = r10.f69465c
            int r9 = java.lang.Math.max(r9, r10)
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1602g1.p1610y.C24430b.<init>(e.m.a.c.q1.m, int, long, long):void");
    }
}
