package org.spongycastle.bcpg.sig;

import org.spongycastle.bcpg.SignatureSubpacket;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/RevocationReason.class */
public class RevocationReason extends SignatureSubpacket {
    public RevocationReason(boolean z, byte b, String str) {
        super(29, z, false, createData(b, str));
    }

    public RevocationReason(boolean z, boolean z2, byte[] bArr) {
        super(29, z, z2, bArr);
    }

    private static byte[] createData(byte b, String str) {
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(str);
        byte[] bArr = new byte[uTF8ByteArray.length + 1];
        bArr[0] = b;
        System.arraycopy(uTF8ByteArray, 0, bArr, 1, uTF8ByteArray.length);
        return bArr;
    }

    public String getRevocationDescription() {
        byte[] data = getData();
        if (data.length == 1) {
            return "";
        }
        byte[] bArr = new byte[data.length - 1];
        System.arraycopy(data, 1, bArr, 0, bArr.length);
        return Strings.fromUTF8ByteArray(bArr);
    }

    public byte getRevocationReason() {
        return getData()[0];
    }
}
