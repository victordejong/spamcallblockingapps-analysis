package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/Grain128Engine.class */
public class Grain128Engine implements StreamCipher {
    private static final int STATE_SIZE = 4;
    private int index = 4;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 3) {
            oneRound();
            this.index = 0;
        }
        byte[] bArr = this.out;
        int i = this.index;
        this.index = i + 1;
        return bArr[i];
    }

    private int getOutput() {
        int[] iArr = this.nfsr;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = (iArr[0] >>> 12) | (iArr[1] << 20);
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[1];
        int i7 = iArr[2];
        int i8 = iArr[1];
        int i9 = iArr[2];
        int i10 = iArr[2];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int i15 = (iArr[3] << 1) | (iArr[2] >>> 31);
        int[] iArr2 = this.lfsr;
        int i16 = iArr2[0];
        int i17 = iArr2[1];
        return ((((((((((i15 & i3) & ((iArr2[2] >>> 31) | (iArr2[3] << 1))) ^ ((((((iArr2[0] >>> 13) | (iArr2[1] << 19)) & ((iArr2[0] >>> 20) | (iArr2[1] << 12))) ^ (i3 & ((i16 >>> 8) | (i17 << 24)))) ^ (i15 & ((iArr2[1] >>> 10) | (iArr2[2] << 22)))) ^ (((iArr2[1] >>> 28) | (iArr2[2] << 4)) & ((iArr2[2] >>> 15) | (iArr2[3] << 17))))) ^ ((iArr2[2] >>> 29) | (iArr2[3] << 3))) ^ ((i >>> 2) | (i2 << 30))) ^ ((i4 >>> 15) | (i5 << 17))) ^ ((i6 >>> 4) | (i7 << 28))) ^ ((i8 >>> 13) | (i9 << 19))) ^ i10) ^ ((i11 >>> 9) | (i12 << 23))) ^ ((i13 >>> 25) | (i14 << 7));
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        return iArr[3] ^ ((((((iArr[0] >>> 7) | (iArr[1] << 25)) ^ iArr[0]) ^ ((iArr[1] >>> 6) | (iArr[2] << 26))) ^ ((iArr[2] >>> 6) | (iArr[3] << 26))) ^ ((iArr[2] >>> 17) | (iArr[3] << 15)));
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i = iArr[0];
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[0];
        int i5 = iArr[1];
        int i6 = iArr[0];
        int i7 = iArr[1];
        int i8 = iArr[0];
        int i9 = iArr[1];
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[0];
        int i13 = iArr[1];
        int i14 = iArr[0];
        int i15 = iArr[1];
        int i16 = iArr[1];
        int i17 = iArr[2];
        int i18 = iArr[1];
        int i19 = iArr[2];
        int i20 = iArr[1];
        int i21 = iArr[2];
        int i22 = iArr[1];
        int i23 = iArr[2];
        int i24 = iArr[1];
        int i25 = iArr[2];
        int i26 = iArr[2];
        int i27 = iArr[3];
        int i28 = iArr[2];
        int i29 = iArr[3];
        int i30 = iArr[2];
        int i31 = iArr[3];
        int i32 = iArr[2];
        int i33 = iArr[3];
        return (((((((iArr[3] ^ (((i ^ ((i12 >>> 26) | (i13 << 6))) ^ ((i20 >>> 24) | (i21 << 8))) ^ ((iArr[2] >>> 27) | (iArr[3] << 5)))) ^ (((i2 >>> 3) | (i3 << 29)) & ((i28 >>> 3) | (i29 << 29)))) ^ (((i4 >>> 11) | (i5 << 21)) & ((i6 >>> 13) | (i7 << 19)))) ^ (((i8 >>> 17) | (i9 << 15)) & ((i10 >>> 18) | (i11 << 14)))) ^ (((i14 >>> 27) | (i15 << 5)) & ((i22 >>> 27) | (i23 << 5)))) ^ (((i16 >>> 8) | (i17 << 24)) & ((i18 >>> 16) | (i19 << 16)))) ^ (((i24 >>> 29) | (i25 << 3)) & ((i26 >>> 1) | (i27 << 31)))) ^ (((i30 >>> 4) | (i31 << 28)) & ((i32 >>> 20) | (i33 << 12)));
    }

    private void initGrain() {
        for (int i = 0; i < 8; i++) {
            this.output = getOutput();
            this.nfsr = shift(this.nfsr, (getOutputNFSR() ^ this.lfsr[0]) ^ this.output);
            this.lfsr = shift(this.lfsr, getOutputLFSR() ^ this.output);
        }
        this.initialised = true;
    }

    private void oneRound() {
        int output = getOutput();
        this.output = output;
        byte[] bArr = this.out;
        bArr[0] = (byte) output;
        bArr[1] = (byte) (output >> 8);
        bArr[2] = (byte) (output >> 16);
        bArr[3] = (byte) (output >> 24);
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[12] = (byte) (-1);
        bArr2[13] = (byte) (-1);
        bArr2[14] = (byte) (-1);
        bArr2[15] = (byte) (-1);
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.nfsr;
            if (i < iArr.length) {
                byte[] bArr3 = this.workingKey;
                int i3 = i2 + 3;
                byte b = bArr3[i3];
                int i4 = i2 + 2;
                byte b2 = bArr3[i4];
                int i5 = i2 + 1;
                iArr[i] = (bArr3[i2] & 255) | (b << 24) | ((b2 << 16) & 16711680) | ((bArr3[i5] << 8) & 65280);
                int[] iArr2 = this.lfsr;
                byte[] bArr4 = this.workingIV;
                iArr2[i] = (bArr4[i2] & 255) | (bArr4[i3] << 24) | ((bArr4[i4] << 16) & 16711680) | ((bArr4[i5] << 8) & 65280);
                i2 += 4;
                i++;
            } else {
                return;
            }
        }
    }

    private int[] shift(int[] iArr, int i) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = i;
        return iArr;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain-128";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv == null || iv.length != 12) {
                throw new IllegalArgumentException("Grain-128  requires exactly 12 bytes of IV");
            }
            if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
                throw new IllegalArgumentException("Grain-128 Init parameters must include a key");
            }
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            this.workingIV = new byte[keyParameter.getKey().length];
            this.workingKey = new byte[keyParameter.getKey().length];
            this.lfsr = new int[4];
            this.nfsr = new int[4];
            this.out = new byte[4];
            System.arraycopy(iv, 0, this.workingIV, 0, iv.length);
            System.arraycopy(keyParameter.getKey(), 0, this.workingKey, 0, keyParameter.getKey().length);
            setKey(this.workingKey, this.workingIV);
            initGrain();
            return;
        }
        throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else {
            if (i3 + i2 > bArr2.length) {
                throw new DataLengthException("output buffer too short");
            }
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getKeyStream());
            }
        }
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void reset() {
        this.index = 4;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (this.initialised) {
            return (byte) (b ^ getKeyStream());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
