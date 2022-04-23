package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/paddings/TBCPadding.class */
public class TBCPadding implements BlockCipherPadding {
    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i) {
        int i2;
        byte b;
        int length = bArr.length;
        int i3 = 0;
        int i4 = 0;
        if (i > 0) {
            if ((bArr[i - 1] & 1) == 0) {
                i4 = 255;
            }
            b = (byte) i4;
            i2 = i;
        } else {
            if ((bArr[bArr.length - 1] & 1) == 0) {
                i3 = 255;
            }
            b = (byte) i3;
            i2 = i;
        }
        while (i2 < bArr.length) {
            bArr[i2] = b;
            i2++;
        }
        return length - i;
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "TBC";
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    @Override // org.spongycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) throws InvalidCipherTextException {
        byte b = bArr[bArr.length - 1];
        int length = bArr.length - 1;
        while (length > 0 && bArr[length - 1] == b) {
            length--;
        }
        return bArr.length - length;
    }
}
