package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/engines/Grainv1Engine.class */
public class Grainv1Engine implements StreamCipher {
    private static final int STATE_SIZE = 5;
    private int index = 2;
    private boolean initialised = false;
    private int[] lfsr;
    private int[] nfsr;
    private byte[] out;
    private int output;
    private byte[] workingIV;
    private byte[] workingKey;

    private byte getKeyStream() {
        if (this.index > 1) {
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
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[0];
        int i6 = iArr[1];
        int i7 = iArr[0];
        int i8 = iArr[1];
        int i9 = iArr[1];
        int i10 = iArr[2];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int[] iArr2 = this.lfsr;
        int i16 = (iArr2[0] >>> 3) | (iArr2[1] << 13);
        int i17 = (iArr2[1] >>> 9) | (iArr2[2] << 7);
        int i18 = (iArr2[3] << 2) | (iArr2[2] >>> 14);
        int i19 = iArr2[4];
        int i20 = i18 & i19;
        int i21 = i16 & i18;
        return (((((((((i15 & i20) ^ (((i21 & i15) ^ ((i19 & i21) ^ (((((i17 ^ i15) ^ (i16 & i19)) ^ i20) ^ (i19 & i15)) ^ ((i16 & i17) & i18)))) ^ ((i17 & i18) & i15))) ^ ((i >>> 1) | (i2 << 15))) ^ ((i3 >>> 2) | (i4 << 14))) ^ ((i5 >>> 4) | (i6 << 12))) ^ ((i7 >>> 10) | (i8 << 6))) ^ ((i9 >>> 15) | (i10 << 1))) ^ ((i11 >>> 11) | (i12 << 5))) ^ ((i13 >>> 8) | (i14 << 8))) & 65535;
    }

    private int getOutputLFSR() {
        int[] iArr = this.lfsr;
        int i = iArr[0];
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[1];
        int i5 = iArr[2];
        int i6 = iArr[2];
        int i7 = iArr[3];
        int i8 = iArr[3];
        int i9 = iArr[4];
        return (((iArr[4] << 2) | (iArr[3] >>> 14)) ^ ((((((i2 >>> 13) | (i3 << 3)) ^ i) ^ ((i4 >>> 7) | (i5 << 9))) ^ ((i6 >>> 6) | (i7 << 10))) ^ ((i8 >>> 3) | (i9 << 13)))) & 65535;
    }

    private int getOutputNFSR() {
        int[] iArr = this.nfsr;
        int i = iArr[0];
        int i2 = (iArr[0] >>> 9) | (iArr[1] << 7);
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = (iArr[0] >>> 15) | (iArr[1] << 1);
        int i6 = (iArr[1] >>> 5) | (iArr[2] << 11);
        int i7 = (iArr[1] >>> 12) | (iArr[2] << 4);
        int i8 = (iArr[2] >>> 1) | (iArr[3] << 15);
        int i9 = (iArr[2] >>> 5) | (iArr[3] << 11);
        int i10 = (iArr[2] >>> 13) | (iArr[3] << 3);
        int i11 = (iArr[3] >>> 4) | (iArr[4] << 12);
        int i12 = (iArr[3] >>> 12) | (iArr[4] << 4);
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = (iArr[4] << 1) | (iArr[3] >>> 15);
        int i16 = i15 & i12;
        int i17 = i12 & i11;
        int i18 = i8 & i7 & i6;
        return (((((((((i15 & i10) & i7) & i2) ^ ((((((i ^ (((((((((((i13 >>> 14) | (i14 << 2)) ^ i12) ^ i11) ^ i10) ^ i9) ^ i8) ^ i7) ^ i6) ^ ((i3 >>> 14) | (i4 << 2))) ^ i2)) ^ i16) ^ (i9 & i8)) ^ (i5 & i2)) ^ (i17 & i10)) ^ i18)) ^ ((i17 & i9) & i8)) ^ ((i16 & i6) & i5)) ^ (((i16 & i11) & i10) & i9)) ^ ((i5 & i18) & i2)) ^ (((((i11 & i10) & i9) & i8) & i7) & i6)) & 65535;
    }

    private void initGrain() {
        for (int i = 0; i < 10; i++) {
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
        this.nfsr = shift(this.nfsr, getOutputNFSR() ^ this.lfsr[0]);
        this.lfsr = shift(this.lfsr, getOutputLFSR());
    }

    private void setKey(byte[] bArr, byte[] bArr2) {
        bArr2[8] = (byte) (-1);
        bArr2[9] = (byte) (-1);
        this.workingKey = bArr;
        this.workingIV = bArr2;
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.nfsr;
            if (i < iArr.length) {
                byte[] bArr3 = this.workingKey;
                int i3 = i2 + 1;
                iArr[i] = ((bArr3[i2] & 255) | (bArr3[i3] << 8)) & 65535;
                int[] iArr2 = this.lfsr;
                byte[] bArr4 = this.workingIV;
                iArr2[i] = ((bArr4[i2] & 255) | (bArr4[i3] << 8)) & 65535;
                i2 += 2;
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
        iArr[3] = iArr[4];
        iArr[4] = i;
        return iArr;
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain v1";
    }

    @Override // org.bouncycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv == null || iv.length != 8) {
                throw new IllegalArgumentException("Grain v1 requires exactly 8 bytes of IV");
            }
            if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
                throw new IllegalArgumentException("Grain v1 Init parameters must include a key");
            }
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            this.workingIV = new byte[keyParameter.getKey().length];
            this.workingKey = new byte[keyParameter.getKey().length];
            this.lfsr = new int[5];
            this.nfsr = new int[5];
            this.out = new byte[2];
            System.arraycopy(iv, 0, this.workingIV, 0, iv.length);
            System.arraycopy(keyParameter.getKey(), 0, this.workingKey, 0, keyParameter.getKey().length);
            setKey(this.workingKey, this.workingIV);
            initGrain();
            return;
        }
        throw new IllegalArgumentException("Grain v1 Init parameters must include an IV");
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
        this.index = 2;
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
