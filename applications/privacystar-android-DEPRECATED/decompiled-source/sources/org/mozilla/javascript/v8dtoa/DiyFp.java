package org.mozilla.javascript.v8dtoa;

import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/v8dtoa/DiyFp.class */
class DiyFp {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int kSignificandSize = 64;
    static final long kUint64MSB = Long.MIN_VALUE;

    /* renamed from: e */
    private int f857e;

    /* renamed from: f */
    private long f858f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DiyFp() {
        this.f858f = 0L;
        this.f857e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DiyFp(long j, int i) {
        this.f858f = j;
        this.f857e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DiyFp minus(DiyFp diyFp, DiyFp diyFp2) {
        DiyFp diyFp3 = new DiyFp(diyFp.f858f, diyFp.f857e);
        diyFp3.subtract(diyFp2);
        return diyFp3;
    }

    static DiyFp normalize(DiyFp diyFp) {
        DiyFp diyFp2 = new DiyFp(diyFp.f858f, diyFp.f857e);
        diyFp2.normalize();
        return diyFp2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DiyFp times(DiyFp diyFp, DiyFp diyFp2) {
        DiyFp diyFp3 = new DiyFp(diyFp.f858f, diyFp.f857e);
        diyFp3.multiply(diyFp2);
        return diyFp3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        if ((((r5 < 0) ^ r9) ^ (r7 < 0)) != false) goto L_0x0044;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean uint64_gte(long r5, long r7) {
        /*
            r0 = r5
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            if (r0 <= 0) goto L_0x0018
            r0 = 1
            r9 = r0
            goto L_0x001b
        L_0x0018:
            r0 = 0
            r9 = r0
        L_0x001b:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0027
            r0 = 1
            r11 = r0
            goto L_0x002a
        L_0x0027:
            r0 = 0
            r11 = r0
        L_0x002a:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0036
            r0 = 1
            r12 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 0
            r12 = r0
        L_0x0039:
            r0 = r11
            r1 = r9
            r0 = r0 ^ r1
            r1 = r12
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0047
        L_0x0044:
            r0 = 1
            r10 = r0
        L_0x0047:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.v8dtoa.DiyFp.uint64_gte(long, long):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m205e() {
        return this.f857e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public long m204f() {
        return this.f858f;
    }

    void multiply(DiyFp diyFp) {
        long j = this.f858f >>> 32;
        long j2 = this.f858f & BodyPartID.bodyIdMax;
        long j3 = diyFp.f858f >>> 32;
        long j4 = diyFp.f858f & BodyPartID.bodyIdMax;
        long j5 = j3 * j2;
        long j6 = j * j4;
        this.f857e += diyFp.f857e + 64;
        this.f858f = (j * j3) + (j6 >>> 32) + (j5 >>> 32) + ((((((j2 * j4) >>> 32) + (j6 & BodyPartID.bodyIdMax)) + (BodyPartID.bodyIdMax & j5)) + 2147483648L) >>> 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void normalize() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f858f
            r6 = r0
            r0 = r5
            int r0 = r0.f857e
            r8 = r0
        L_0x000a:
            r0 = r6
            r9 = r0
            r0 = r8
            r11 = r0
            r0 = -18014398509481984(0xffc0000000000000, double:-2.247116418577895E307)
            r1 = r6
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0025
            r0 = r6
            r1 = 10
            long r0 = r0 << r1
            r6 = r0
            int r8 = r8 + (-10)
            goto L_0x000a
        L_0x0025:
            r0 = -9223372036854775808
            r1 = r9
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003c
            r0 = r9
            r1 = 1
            long r0 = r0 << r1
            r9 = r0
            int r11 = r11 + (-1)
            goto L_0x0025
        L_0x003c:
            r0 = r5
            r1 = r9
            r0.f858f = r1
            r0 = r5
            r1 = r11
            r0.f857e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.v8dtoa.DiyFp.normalize():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setE(int i) {
        this.f857e = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setF(long j) {
        this.f858f = j;
    }

    void subtract(DiyFp diyFp) {
        this.f858f -= diyFp.f858f;
    }

    public String toString() {
        return "[DiyFp f:" + this.f858f + ", e:" + this.f857e + "]";
    }
}
