package org.bouncycastle.crypto.params;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/params/DESedeParameters.class */
public class DESedeParameters extends DESParameters {
    public static final int DES_EDE_KEY_LENGTH = 24;

    public DESedeParameters(byte[] bArr) {
        super(bArr);
        if (!isWeakKey(bArr, 0, bArr.length)) {
            return;
        }
        throw new IllegalArgumentException("attempt to create weak DESede key");
    }

    public static boolean isWeakKey(byte[] bArr, int i) {
        return isWeakKey(bArr, i, bArr.length - i);
    }

    public static boolean isWeakKey(byte[] bArr, int i, int i2) {
        while (i < i2) {
            if (DESParameters.isWeakKey(bArr, i)) {
                return true;
            }
            i += 8;
        }
        return false;
    }
}
