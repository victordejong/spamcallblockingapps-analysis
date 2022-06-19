package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/NullEngine.class */
public class NullEngine implements BlockCipher {
    public static final int BLOCK_SIZE = 1;
    private boolean initialised;

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Null";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 1;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.initialised = true;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.initialised) {
            if (i + 1 > bArr.length) {
                throw new DataLengthException("input buffer too short");
            }
            if (i2 + 1 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            for (int i3 = 0; i3 < 1; i3++) {
                bArr2[i2 + i3] = bArr[i + i3];
            }
            return 1;
        }
        throw new IllegalStateException("Null engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
