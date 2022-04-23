package p012b.p076s.p078b.p079a.p102w0;

import p012b.p076s.p078b.p079a.AbstractC1252n0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.w0.k0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/k0.class */
public final class C1580k0 extends AbstractC1252n0 {

    /* renamed from: k */
    public static final Object f6456k = new Object();

    /* renamed from: b */
    public final long f6457b;

    /* renamed from: c */
    public final long f6458c;

    /* renamed from: d */
    public final long f6459d;

    /* renamed from: e */
    public final long f6460e;

    /* renamed from: f */
    public final long f6461f;

    /* renamed from: g */
    public final long f6462g;

    /* renamed from: h */
    public final boolean f6463h;

    /* renamed from: i */
    public final boolean f6464i;

    /* renamed from: j */
    public final Object f6465j;

    public C1580k0(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, Object obj) {
        this.f6457b = j;
        this.f6458c = j2;
        this.f6459d = j3;
        this.f6460e = j4;
        this.f6461f = j5;
        this.f6462g = j6;
        this.f6463h = z;
        this.f6464i = z2;
        this.f6465j = obj;
    }

    public C1580k0(long j, long j2, long j3, long j4, boolean z, boolean z2, Object obj) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, obj);
    }

    public C1580k0(long j, boolean z, boolean z2, Object obj) {
        this(j, j, 0L, 0L, z, z2, obj);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public int mo32719a() {
        return 1;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public int mo32715a(Object obj) {
        return f6456k.equals(obj) ? 0 : -1;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public AbstractC1252n0.C1254b mo32738a(int i, AbstractC1252n0.C1254b bVar, boolean z) {
        C1160a.m34523a(i, 0, 1);
        bVar.m34035a(null, z ? f6456k : null, 0, this.f6459d, -this.f6461f);
        return bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005a, code lost:
        if (r0 > r0) goto L_0x0042;
     */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p012b.p076s.p078b.p079a.AbstractC1252n0.C1255c mo32716a(int r18, p012b.p076s.p078b.p079a.AbstractC1252n0.C1255c r19, boolean r20, long r21) {
        /*
            r17 = this;
            r0 = r18
            r1 = 0
            r2 = 1
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1160a.m34523a(r0, r1, r2)
            r0 = r20
            if (r0 == 0) goto L_0x0014
            r0 = r17
            java.lang.Object r0 = r0.f6465j
            r23 = r0
            goto L_0x0017
        L_0x0014:
            r0 = 0
            r23 = r0
        L_0x0017:
            r0 = r17
            long r0 = r0.f6462g
            r24 = r0
            r0 = r24
            r26 = r0
            r0 = r17
            boolean r0 = r0.f6464i
            if (r0 == 0) goto L_0x0060
            r0 = r24
            r26 = r0
            r0 = r21
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0060
            r0 = r17
            long r0 = r0.f6460e
            r28 = r0
            r0 = r28
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x004a
        L_0x0042:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r21 = r0
            goto L_0x0064
        L_0x004a:
            r0 = r24
            r1 = r21
            long r0 = r0 + r1
            r21 = r0
            r0 = r21
            r26 = r0
            r0 = r21
            r1 = r28
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0060
            goto L_0x0042
        L_0x0060:
            r0 = r26
            r21 = r0
        L_0x0064:
            r0 = r19
            r1 = r23
            r2 = r17
            long r2 = r2.f6457b
            r3 = r17
            long r3 = r3.f6458c
            r4 = r17
            boolean r4 = r4.f6463h
            r5 = r17
            boolean r5 = r5.f6464i
            r6 = r21
            r7 = r17
            long r7 = r7.f6460e
            r8 = 0
            r9 = 0
            r10 = r17
            long r10 = r10.f6461f
            b.s.b.a.n0$c r0 = r0.m34023a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r0 = r19
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1580k0.mo32716a(int, b.s.b.a.n0$c, boolean, long):b.s.b.a.n0$c");
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: a */
    public Object mo32718a(int i) {
        C1160a.m34523a(i, 0, 1);
        return f6456k;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
    /* renamed from: b */
    public int mo32713b() {
        return 1;
    }
}
