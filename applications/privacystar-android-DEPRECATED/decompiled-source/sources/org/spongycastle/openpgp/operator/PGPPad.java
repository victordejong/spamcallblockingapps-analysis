package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPPad.class */
public class PGPPad {
    private PGPPad() {
    }

    public static byte[] padSessionData(byte[] bArr) {
        byte[] bArr2 = new byte[40];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        byte length = (byte) (bArr2.length - bArr.length);
        for (int length2 = bArr.length; length2 != bArr2.length; length2++) {
            bArr2[length2] = length;
        }
        return bArr2;
    }

    public static byte[] unpadSessionData(byte[] bArr) throws PGPException {
        byte b = bArr[bArr.length - 1];
        for (int length = bArr.length - b; length != bArr.length; length++) {
            if (bArr[length] != b) {
                throw new PGPException("bad padding found in session data");
            }
        }
        byte[] bArr2 = new byte[bArr.length - b];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }
}
