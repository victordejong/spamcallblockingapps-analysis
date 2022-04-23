package org.spongycastle.crypto.modes.gcm;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/modes/gcm/BasicGCMExponentiator.class */
public class BasicGCMExponentiator implements GCMExponentiator {

    /* renamed from: x */
    private int[] f1373x;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // org.spongycastle.crypto.modes.gcm.GCMExponentiator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void exponentiateX(long r6, byte[] r8) {
        /*
            r5 = this;
            int[] r0 = org.spongycastle.crypto.modes.gcm.GCMUtil.oneAsInts()
            r9 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0039
            r0 = r5
            int[] r0 = r0.f1373x
            int[] r0 = org.spongycastle.util.Arrays.clone(r0)
            r10 = r0
        L_0x0014:
            r0 = 1
            r1 = r6
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0023
            r0 = r9
            r1 = r10
            org.spongycastle.crypto.modes.gcm.GCMUtil.multiply(r0, r1)
        L_0x0023:
            r0 = r10
            r1 = r10
            org.spongycastle.crypto.modes.gcm.GCMUtil.multiply(r0, r1)
            r0 = r6
            r1 = 1
            long r0 = r0 >>> r1
            r11 = r0
            r0 = r11
            r6 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0014
        L_0x0039:
            r0 = r9
            r1 = r8
            org.spongycastle.crypto.modes.gcm.GCMUtil.asBytes(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.modes.gcm.BasicGCMExponentiator.exponentiateX(long, byte[]):void");
    }

    @Override // org.spongycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        this.f1373x = GCMUtil.asInts(bArr);
    }
}
