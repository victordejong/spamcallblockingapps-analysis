package org.bouncycastle.crypto.modes.gcm;

import org.bouncycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator.class */
public class BasicGCMExponentiator implements GCMExponentiator {

    /* renamed from: x */
    private byte[] f7553x;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j, byte[] bArr) {
        ?? r0;
        byte[] oneAsBytes = GCMUtil.oneAsBytes();
        if (j <= 0) {
            System.arraycopy(oneAsBytes, 0, bArr, 0, 16);
        }
        byte[] clone = Arrays.clone(this.f7553x);
        ?? r7 = j;
        do {
            if ((1 & r7) != 0) {
                GCMUtil.multiply(oneAsBytes, clone);
            }
            GCMUtil.multiply(clone, clone);
            r0 = r7 >>> 1;
            r7 = r0;
        } while (r0 > 0);
        System.arraycopy(oneAsBytes, 0, bArr, 0, 16);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        this.f7553x = Arrays.clone(bArr);
    }
}
