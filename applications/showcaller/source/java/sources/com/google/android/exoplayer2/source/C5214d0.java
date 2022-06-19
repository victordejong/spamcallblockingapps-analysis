package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.source.d0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/d0.class */
public final class C5214d0 extends AbstractC5585y0 {

    /* renamed from: b */
    private static final Object f16369b = new Object();

    /* renamed from: c */
    private final long f16370c;

    /* renamed from: d */
    private final long f16371d;

    /* renamed from: e */
    private final long f16372e;

    /* renamed from: f */
    private final long f16373f;

    /* renamed from: g */
    private final long f16374g;

    /* renamed from: h */
    private final long f16375h;

    /* renamed from: i */
    private final boolean f16376i;

    /* renamed from: j */
    private final boolean f16377j;

    /* renamed from: k */
    private final boolean f16378k;

    /* renamed from: l */
    private final Object f16379l;

    /* renamed from: m */
    private final Object f16380m;

    public C5214d0(long j, long j2, long j3, long j4, long j5, long j6, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this.f16370c = j;
        this.f16371d = j2;
        this.f16372e = j3;
        this.f16373f = j4;
        this.f16374g = j5;
        this.f16375h = j6;
        this.f16376i = z;
        this.f16377j = z2;
        this.f16378k = z3;
        this.f16380m = obj;
        this.f16379l = obj2;
    }

    public C5214d0(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(-9223372036854775807L, -9223372036854775807L, j, j2, j3, j4, z, z2, z3, obj, obj2);
    }

    public C5214d0(long j, boolean z, boolean z2, boolean z3, Object obj, Object obj2) {
        this(j, j, 0L, 0L, z, z2, z3, obj, obj2);
    }

    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: b */
    public int mo18356b(Object obj) {
        return f16369b.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: g */
    public AbstractC5585y0.C5587b mo18355g(int i, AbstractC5585y0.C5587b c5587b, boolean z) {
        C5508e.m18913c(i, 0, 1);
        return c5587b.m18336o(null, z ? f16369b : null, 0, this.f16372e, -this.f16374g);
    }

    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: i */
    public int mo18354i() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: m */
    public Object mo18353m(int i) {
        C5508e.m18913c(i, 0, 1);
        return f16369b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
        if (r0 > r0) goto L8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1 */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r28v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.AbstractC5585y0.C5588c mo18352o(int r21, com.google.android.exoplayer2.AbstractC5585y0.C5588c r22, long r23) {
        /*
            r20 = this;
            r0 = r21
            r1 = 0
            r2 = 1
            int r0 = com.google.android.exoplayer2.util.C5508e.m18913c(r0, r1, r2)
            r0 = r20
            long r0 = r0.f16375h
            r25 = r0
            r0 = r20
            boolean r0 = r0.f16377j
            r27 = r0
            r0 = r25
            r28 = r0
            r0 = r27
            if (r0 == 0) goto L4e
            r0 = r25
            r28 = r0
            r0 = r23
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L4e
            r0 = r20
            long r0 = r0.f16373f
            r30 = r0
            r0 = r30
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3c
        L35:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r23 = r0
            goto L51
        L3c:
            r0 = r25
            r1 = r23
            long r0 = r0 + r1
            r23 = r0
            r0 = r23
            r28 = r0
            r0 = r23
            r1 = r30
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L4e
            goto L35
        L4e:
            r0 = r28
            r23 = r0
        L51:
            r0 = r22
            java.lang.Object r1 = com.google.android.exoplayer2.AbstractC5585y0.C5588c.f18180a
            r2 = r20
            java.lang.Object r2 = r2.f16379l
            r3 = r20
            java.lang.Object r3 = r3.f16380m
            r4 = r20
            long r4 = r4.f16370c
            r5 = r20
            long r5 = r5.f16371d
            r6 = r20
            boolean r6 = r6.f16376i
            r7 = r27
            r8 = r20
            boolean r8 = r8.f16378k
            r9 = r23
            r10 = r20
            long r10 = r10.f16373f
            r11 = 0
            r12 = 0
            r13 = r20
            long r13 = r13.f16374g
            com.google.android.exoplayer2.y0$c r0 = r0.m18330e(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.C5214d0.mo18352o(int, com.google.android.exoplayer2.y0$c, long):com.google.android.exoplayer2.y0$c");
    }

    @Override // com.google.android.exoplayer2.AbstractC5585y0
    /* renamed from: p */
    public int mo18351p() {
        return 1;
    }
}
