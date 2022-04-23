package p131c.p161d.p170b.p188c.p190b1;

import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.b1.b0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/b0.class */
public final class C2697b0 extends AbstractC2965r0 {

    /* renamed from: m */
    public static final Object f9836m = new Object();

    /* renamed from: b */
    public final long f9837b;

    /* renamed from: c */
    public final long f9838c;

    /* renamed from: d */
    public final long f9839d;

    /* renamed from: e */
    public final long f9840e;

    /* renamed from: f */
    public final long f9841f;

    /* renamed from: g */
    public final long f9842g;

    /* renamed from: h */
    public final boolean f9843h;

    /* renamed from: i */
    public final boolean f9844i;

    /* renamed from: j */
    public final boolean f9845j;

    /* renamed from: k */
    public final Object f9846k;

    /* renamed from: l */
    public final Object f9847l;

    public C2697b0(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this.f9837b = j;
        this.f9838c = j2;
        this.f9839d = j3;
        this.f9840e = j4;
        this.f9841f = j5;
        this.f9842g = j6;
        this.f9843h = z;
        this.f9844i = z2;
        this.f9845j = z3;
        this.f9847l = obj;
        this.f9846k = obj2;
    }

    public C2697b0(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, z3, obj, obj2);
    }

    public C2697b0(long j, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, z3, obj, obj2);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: a */
    public int mo28343a() {
        return 1;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: a */
    public int mo28339a(Object obj) {
        return f9836m.equals(obj) ? 0 : -1;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: a */
    public AbstractC2965r0.C2967b mo28341a(int i, AbstractC2965r0.C2967b bVar, boolean z) {
        C2877e.m28738a(i, 0, 1);
        bVar.m28333a(null, z ? f9836m : null, 0, this.f9839d, -this.f9841f);
        return bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0045, code lost:
        if (r0 > r0) goto L_0x0031;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p131c.p161d.p170b.p188c.AbstractC2965r0.C2968c mo28340a(int r21, p131c.p161d.p170b.p188c.AbstractC2965r0.C2968c r22, long r23) {
        /*
            r20 = this;
            r0 = r21
            r1 = 0
            r2 = 1
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2877e.m28738a(r0, r1, r2)
            r0 = r20
            long r0 = r0.f9842g
            r25 = r0
            r0 = r25
            r27 = r0
            r0 = r20
            boolean r0 = r0.f9844i
            if (r0 == 0) goto L_0x004b
            r0 = r25
            r27 = r0
            r0 = r23
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x004b
            r0 = r20
            long r0 = r0.f9840e
            r29 = r0
            r0 = r29
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0039
        L_0x0031:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r27 = r0
            goto L_0x004b
        L_0x0039:
            r0 = r25
            r1 = r23
            long r0 = r0 + r1
            r23 = r0
            r0 = r23
            r27 = r0
            r0 = r23
            r1 = r29
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004b
            goto L_0x0031
        L_0x004b:
            r0 = r22
            java.lang.Object r1 = p131c.p161d.p170b.p188c.AbstractC2965r0.C2968c.f10684k
            r2 = r20
            java.lang.Object r2 = r2.f9846k
            r3 = r20
            java.lang.Object r3 = r3.f9847l
            r4 = r20
            long r4 = r4.f9837b
            r5 = r20
            long r5 = r5.f9838c
            r6 = r20
            boolean r6 = r6.f9843h
            r7 = r20
            boolean r7 = r7.f9844i
            r8 = r20
            boolean r8 = r8.f9845j
            r9 = r27
            r10 = r20
            long r10 = r10.f9840e
            r11 = 0
            r12 = 0
            r13 = r20
            long r13 = r13.f9841f
            c.d.b.c.r0$c r0 = r0.m28320a(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            r0 = r22
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2697b0.mo28340a(int, c.d.b.c.r0$c, long):c.d.b.c.r0$c");
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: a */
    public Object mo28342a(int i) {
        C2877e.m28738a(i, 0, 1);
        return f9836m;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2965r0
    /* renamed from: b */
    public int mo28338b() {
        return 1;
    }
}
