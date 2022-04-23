package p131c.p161d.p170b.p188c.p210w0.p214u;

import android.util.Pair;
import p131c.p161d.p170b.p188c.C2964r;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
/* renamed from: c.d.b.c.w0.u.d */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/u/d.class */
public final class C3079d implements AbstractC3081f {

    /* renamed from: a */
    public final long[] f11181a;

    /* renamed from: b */
    public final long[] f11182b;

    /* renamed from: c */
    public final long f11183c;

    public C3079d(long[] jArr, long[] jArr2) {
        this.f11181a = jArr;
        this.f11182b = jArr2;
        this.f11183c = C2964r.m28357a(jArr2[jArr2.length - 1]);
    }

    /* renamed from: a */
    public static Pair<Long, Long> m27938a(long j, long[] jArr, long[] jArr2) {
        double d;
        int b = C2885h0.m28643b(jArr, j, true, true);
        long j2 = jArr[b];
        long j3 = jArr2[b];
        int i = b + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            double d2 = j;
            double d3 = j2;
            Double.isNaN(d2);
            Double.isNaN(d3);
            double d4 = j4 - j2;
            Double.isNaN(d4);
            d = (d2 - d3) / d4;
        }
        double d5 = j5 - j3;
        Double.isNaN(d5);
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) (d * d5)) + j3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p170b.p188c.p210w0.p214u.C3079d m27939a(long r6, com.google.android.exoplayer2.metadata.id3.MlltFrame r8) {
        /*
            r0 = r8
            int[] r0 = r0.f22190e
            int r0 = r0.length
            r9 = r0
            r0 = r9
            r1 = 1
            int r0 = r0 + r1
            r10 = r0
            r0 = r10
            long[] r0 = new long[r0]
            r11 = r0
            r0 = r10
            long[] r0 = new long[r0]
            r12 = r0
            r0 = r11
            r1 = 0
            r2 = r6
            r0[r1] = r2
            r0 = 0
            r13 = r0
            r0 = r12
            r1 = 0
            r2 = 0
            r0[r1] = r2
            r0 = 1
            r10 = r0
            r0 = r6
            r15 = r0
            r0 = r13
            r6 = r0
        L_0x002d:
            r0 = r10
            r1 = r9
            if (r0 > r1) goto L_0x0076
            r0 = r8
            int r0 = r0.f22188c
            r17 = r0
            r0 = r8
            int[] r0 = r0.f22190e
            r18 = r0
            r0 = r10
            r1 = 1
            int r0 = r0 - r1
            r19 = r0
            r0 = r15
            r1 = r17
            r2 = r18
            r3 = r19
            r2 = r2[r3]
            int r1 = r1 + r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r6
            r1 = r8
            int r1 = r1.f22189d
            r2 = r8
            int[] r2 = r2.f22191f
            r3 = r19
            r2 = r2[r3]
            int r1 = r1 + r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r6 = r0
            r0 = r11
            r1 = r10
            r2 = r15
            r0[r1] = r2
            r0 = r12
            r1 = r10
            r2 = r6
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x002d
        L_0x0076:
            c.d.b.c.w0.u.d r0 = new c.d.b.c.w0.u.d
            r1 = r0
            r2 = r11
            r3 = r12
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p214u.C3079d.m27939a(long, com.google.android.exoplayer2.metadata.id3.MlltFrame):c.d.b.c.w0.u.d");
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: a */
    public long mo27924a(long j) {
        return C2964r.m28357a(((Long) m27938a(j, this.f11181a, this.f11182b).second).longValue());
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        Pair<Long, Long> a = m27938a(C2964r.m28356b(C2885h0.m28649b(j, 0L, this.f11183c)), this.f11182b, this.f11181a);
        return new AbstractC3050o.C3051a(new C3053p(C2964r.m28357a(((Long) a.first).longValue()), ((Long) a.second).longValue()));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return true;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f11183c;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f
    /* renamed from: d */
    public long mo27922d() {
        return -1L;
    }
}
