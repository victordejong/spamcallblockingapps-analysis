package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/Revocable.class */
public class Revocable extends SignatureSubpacket {
    public Revocable(boolean z, boolean z2) {
        super(7, z, false, booleanToByteArray(z2));
    }

    public Revocable(boolean z, boolean z2, byte[] bArr) {
        super(7, z, z2, bArr);
    }

    private static byte[] booleanToByteArray(boolean z) {
        byte[] bArr = new byte[1];
        if (!z) {
            return bArr;
        }
        bArr[0] = (byte) 1;
        return bArr;
    }

    public boolean isRevocable() {
        boolean z = false;
        if (this.data[0] != 0) {
            z = true;
        }
        return z;
    }
}
