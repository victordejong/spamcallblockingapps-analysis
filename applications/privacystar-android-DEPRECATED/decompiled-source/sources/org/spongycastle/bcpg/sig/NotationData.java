package org.spongycastle.bcpg.sig;

import java.io.ByteArrayOutputStream;
import org.spongycastle.bcpg.SignatureSubpacket;
import org.spongycastle.util.Strings;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/sig/NotationData.class */
public class NotationData extends SignatureSubpacket {
    public static final int HEADER_FLAG_LENGTH = 4;
    public static final int HEADER_NAME_LENGTH = 2;
    public static final int HEADER_VALUE_LENGTH = 2;

    public NotationData(boolean z, boolean z2, String str, String str2) {
        super(20, z, false, createData(z2, str, str2));
    }

    public NotationData(boolean z, boolean z2, byte[] bArr) {
        super(20, z, z2, bArr);
    }

    private static byte[] createData(boolean z, String str, String str2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(z ? 128 : 0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byteArrayOutputStream.write(0);
        byte[] uTF8ByteArray = Strings.toUTF8ByteArray(str);
        int min = Math.min(uTF8ByteArray.length, 65535);
        if (min != uTF8ByteArray.length) {
            throw new IllegalArgumentException("notationName exceeds maximum length.");
        }
        byte[] uTF8ByteArray2 = Strings.toUTF8ByteArray(str2);
        int min2 = Math.min(uTF8ByteArray2.length, 65535);
        if (min2 != uTF8ByteArray2.length) {
            throw new IllegalArgumentException("notationValue exceeds maximum length.");
        }
        byteArrayOutputStream.write((min >>> 8) & 255);
        byteArrayOutputStream.write((min >>> 0) & 255);
        byteArrayOutputStream.write((min2 >>> 8) & 255);
        byteArrayOutputStream.write((min2 >>> 0) & 255);
        byteArrayOutputStream.write(uTF8ByteArray, 0, min);
        byteArrayOutputStream.write(uTF8ByteArray2, 0, min2);
        return byteArrayOutputStream.toByteArray();
    }

    public String getNotationName() {
        int i = ((this.data[4] & 255) << 8) + (this.data[5] & 255);
        byte[] bArr = new byte[i];
        System.arraycopy(this.data, 8, bArr, 0, i);
        return Strings.fromUTF8ByteArray(bArr);
    }

    public String getNotationValue() {
        return Strings.fromUTF8ByteArray(getNotationValueBytes());
    }

    public byte[] getNotationValueBytes() {
        byte b = this.data[4];
        byte b2 = this.data[5];
        int i = ((this.data[6] & 255) << 8) + (this.data[7] & 255);
        byte[] bArr = new byte[i];
        System.arraycopy(this.data, ((b & 255) << 8) + (b2 & 255) + 8, bArr, 0, i);
        return bArr;
    }

    public boolean isHumanReadable() {
        boolean z = false;
        if (this.data[0] == Byte.MIN_VALUE) {
            z = true;
        }
        return z;
    }
}
