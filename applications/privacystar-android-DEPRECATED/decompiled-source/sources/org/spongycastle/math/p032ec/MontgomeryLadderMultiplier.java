package org.spongycastle.math.p032ec;
/* renamed from: org.spongycastle.math.ec.MontgomeryLadderMultiplier */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/MontgomeryLadderMultiplier.class */
public class MontgomeryLadderMultiplier extends AbstractECMultiplier {
    /* JADX WARN: Type inference failed for: r0v10, types: [boolean] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // org.spongycastle.math.p032ec.AbstractECMultiplier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected org.spongycastle.math.p032ec.ECPoint multiplyPositive(org.spongycastle.math.p032ec.ECPoint r7, java.math.BigInteger r8) {
        /*
            r6 = this;
            r0 = 2
            org.spongycastle.math.ec.ECPoint[] r0 = new org.spongycastle.math.p032ec.ECPoint[r0]
            r9 = r0
            r0 = r9
            r1 = 0
            r2 = r7
            org.spongycastle.math.ec.ECCurve r2 = r2.getCurve()
            org.spongycastle.math.ec.ECPoint r2 = r2.getInfinity()
            r0[r1] = r2
            r0 = r9
            r1 = 1
            r2 = r7
            r0[r1] = r2
            r0 = r8
            int r0 = r0.bitLength()
            r10 = r0
        L_0x0019:
            int r10 = r10 + (-1)
            r0 = r10
            if (r0 < 0) goto L_0x004c
            r0 = r8
            r1 = r10
            boolean r0 = r0.testBit(r1)
            r11 = r0
            r0 = 1
            r1 = r11
            int r0 = r0 - r1
            r12 = r0
            r0 = r9
            r1 = r12
            r2 = r9
            r3 = r12
            r2 = r2[r3]
            r3 = r9
            r4 = r11
            r3 = r3[r4]
            org.spongycastle.math.ec.ECPoint r2 = r2.add(r3)
            r0[r1] = r2
            r0 = r9
            r1 = r11
            r2 = r9
            r3 = r11
            r2 = r2[r3]
            org.spongycastle.math.ec.ECPoint r2 = r2.twice()
            r0[r1] = r2
            goto L_0x0019
        L_0x004c:
            r0 = r9
            r1 = 0
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.MontgomeryLadderMultiplier.multiplyPositive(org.spongycastle.math.ec.ECPoint, java.math.BigInteger):org.spongycastle.math.ec.ECPoint");
    }
}
