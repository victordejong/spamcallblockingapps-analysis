package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator.class */
public class Tables1kGCMExponentiator implements GCMExponentiator {
    public byte[][] lookupPowX2 = new byte[64];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j, byte[] bArr) {
        byte[] oneAsBytes = GCMUtil.oneAsBytes();
        int i = 1;
        for (?? r7 = j; r7 > 0; r7 >>>= 1) {
            if ((1 & r7) != 0) {
                GCMUtil.multiply(oneAsBytes, this.lookupPowX2[i]);
            }
            i++;
        }
        System.arraycopy(oneAsBytes, 0, bArr, 0, 16);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        byte[][] bArr2 = this.lookupPowX2;
        bArr2[0] = new byte[16];
        bArr2[0][0] = (byte) (-128);
        bArr2[1] = Arrays.clone(bArr);
        for (int i = 2; i != 64; i++) {
            byte[] clone = Arrays.clone(this.lookupPowX2[i - 1]);
            GCMUtil.multiply(clone, clone);
            this.lookupPowX2[i] = clone;
        }
    }
}
