package org.bouncycastle.crypto.paddings;

import java.security.SecureRandom;
import org.bouncycastle.crypto.InvalidCipherTextException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/paddings/PKCS7Padding.class */
public class PKCS7Padding implements BlockCipherPadding {
    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int addPadding(byte[] bArr, int i) {
        byte length = (byte) (bArr.length - i);
        while (i < bArr.length) {
            bArr[i] = length;
            i++;
        }
        return length;
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public String getPaddingName() {
        return "PKCS7";
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public void init(SecureRandom secureRandom) {
    }

    @Override // org.bouncycastle.crypto.paddings.BlockCipherPadding
    public int padCount(byte[] bArr) {
        int i = bArr[bArr.length - 1] & 255;
        if (i > bArr.length || i == 0) {
            throw new InvalidCipherTextException("pad block corrupted");
        }
        for (int i2 = 1; i2 <= i; i2++) {
            if (bArr[bArr.length - i2] != i) {
                throw new InvalidCipherTextException("pad block corrupted");
            }
        }
        return i;
    }
}
