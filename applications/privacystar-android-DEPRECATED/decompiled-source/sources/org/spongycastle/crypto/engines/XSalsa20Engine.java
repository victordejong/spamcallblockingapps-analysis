package org.spongycastle.crypto.engines;

import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/XSalsa20Engine.class */
public class XSalsa20Engine extends Salsa20Engine {
    @Override // org.spongycastle.crypto.engines.Salsa20Engine, org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "XSalsa20";
    }

    @Override // org.spongycastle.crypto.engines.Salsa20Engine
    protected int getNonceSize() {
        return 24;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.crypto.engines.Salsa20Engine
    public void setKey(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new IllegalArgumentException(getAlgorithmName() + " doesn't support re-init with null key");
        } else if (bArr.length != 32) {
            throw new IllegalArgumentException(getAlgorithmName() + " requires a 256 bit key");
        } else {
            super.setKey(bArr, bArr2);
            Pack.littleEndianToInt(bArr2, 8, this.engineState, 8, 2);
            int[] iArr = new int[this.engineState.length];
            salsaCore(20, this.engineState, iArr);
            this.engineState[1] = iArr[0] - this.engineState[0];
            this.engineState[2] = iArr[5] - this.engineState[5];
            this.engineState[3] = iArr[10] - this.engineState[10];
            this.engineState[4] = iArr[15] - this.engineState[15];
            this.engineState[11] = iArr[6] - this.engineState[6];
            this.engineState[12] = iArr[7] - this.engineState[7];
            this.engineState[13] = iArr[8] - this.engineState[8];
            this.engineState[14] = iArr[9] - this.engineState[9];
            Pack.littleEndianToInt(bArr2, 16, this.engineState, 6, 2);
        }
    }
}
