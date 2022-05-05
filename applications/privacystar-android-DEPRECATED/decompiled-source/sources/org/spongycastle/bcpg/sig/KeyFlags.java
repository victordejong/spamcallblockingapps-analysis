package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/KeyFlags.class */
public class KeyFlags extends SignatureSubpacket {
    public static final int AUTHENTICATION = 32;
    public static final int CERTIFY_OTHER = 1;
    public static final int ENCRYPT_COMMS = 4;
    public static final int ENCRYPT_STORAGE = 8;
    public static final int SHARED = 128;
    public static final int SIGN_DATA = 2;
    public static final int SPLIT = 16;

    public KeyFlags(boolean z, int i) {
        super(27, z, false, intToByteArray(i));
    }

    public KeyFlags(boolean z, boolean z2, byte[] bArr) {
        super(27, z, z2, bArr);
    }

    private static byte[] intToByteArray(int i) {
        byte[] bArr = new byte[4];
        int i2 = 0;
        for (int i3 = 0; i3 != 4; i3++) {
            bArr[i3] = (byte) (i >> (i3 * 8));
            if (bArr[i3] != 0) {
                i2 = i3;
            }
        }
        byte[] bArr2 = new byte[i2 + 1];
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        return bArr2;
    }

    public int getFlags() {
        int i = 0;
        for (int i2 = 0; i2 != this.data.length; i2++) {
            i |= (this.data[i2] & 255) << (i2 * 8);
        }
        return i;
    }
}
