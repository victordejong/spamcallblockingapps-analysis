package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.StreamCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/Grain128Engine.class */
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
        int i = this.nfsr[0];
        int i2 = this.nfsr[1];
        int i3 = (this.nfsr[0] >>> 12) | (this.nfsr[1] << 20);
        int i4 = this.nfsr[0];
        int i5 = this.nfsr[1];
        int i6 = this.nfsr[1];
        int i7 = this.nfsr[2];
        int i8 = this.nfsr[1];
        int i9 = this.nfsr[2];
        int i10 = this.nfsr[2];
        int i11 = this.nfsr[2];
        int i12 = this.nfsr[3];
        int i13 = this.nfsr[2];
        int i14 = this.nfsr[3];
        int i15 = (this.nfsr[2] >>> 31) | (this.nfsr[3] << 1);
        int i16 = this.lfsr[0];
        int i17 = this.lfsr[1];
        int i18 = this.lfsr[0];
        int i19 = this.lfsr[1];
        int i20 = this.lfsr[0];
        int i21 = this.lfsr[1];
        int i22 = this.lfsr[1];
        int i23 = this.lfsr[2];
        int i24 = this.lfsr[1];
        int i25 = this.lfsr[2];
        int i26 = this.lfsr[2];
        int i27 = this.lfsr[3];
        int i28 = this.lfsr[2];
        int i29 = this.lfsr[3];
        return ((((((((i >>> 2) | (i2 << 30)) ^ ((((((((i20 >>> 20) | (i21 << 12)) & ((i19 << 19) | (i18 >>> 13))) ^ (((i16 >>> 8) | (i17 << 24)) & i3)) ^ (((i23 << 22) | (i22 >>> 10)) & i15)) ^ (((i27 << 17) | (i26 >>> 15)) & ((i25 << 4) | (i24 >>> 28)))) ^ ((i3 & i15) & ((this.lfsr[3] << 1) | (this.lfsr[2] >>> 31)))) ^ ((i29 << 3) | (i28 >>> 29)))) ^ ((i4 >>> 15) | (i5 << 17))) ^ ((i6 >>> 4) | (i7 << 28))) ^ ((i8 >>> 13) | (i9 << 19))) ^ i10) ^ ((i11 >>> 9) | (i12 << 23))) ^ ((i13 >>> 25) | (i14 << 7));
    }

    private int getOutputLFSR() {
        return ((((this.lfsr[0] ^ ((this.lfsr[0] >>> 7) | (this.lfsr[1] << 25))) ^ ((this.lfsr[1] >>> 6) | (this.lfsr[2] << 26))) ^ ((this.lfsr[2] >>> 6) | (this.lfsr[3] << 26))) ^ ((this.lfsr[2] >>> 17) | (this.lfsr[3] << 15))) ^ this.lfsr[3];
    }

    private int getOutputNFSR() {
        int i = this.nfsr[0];
        int i2 = this.nfsr[0];
        int i3 = this.nfsr[1];
        int i4 = this.nfsr[0];
        int i5 = this.nfsr[1];
        int i6 = this.nfsr[0];
        int i7 = this.nfsr[1];
        int i8 = this.nfsr[0];
        int i9 = this.nfsr[1];
        int i10 = this.nfsr[0];
        int i11 = this.nfsr[1];
        int i12 = this.nfsr[0];
        int i13 = this.nfsr[1];
        int i14 = this.nfsr[0];
        int i15 = this.nfsr[1];
        int i16 = this.nfsr[1];
        int i17 = this.nfsr[2];
        int i18 = this.nfsr[1];
        int i19 = this.nfsr[2];
        int i20 = this.nfsr[1];
        int i21 = this.nfsr[2];
        int i22 = this.nfsr[1];
        int i23 = this.nfsr[2];
        int i24 = this.nfsr[1];
        int i25 = this.nfsr[2];
        int i26 = this.nfsr[2];
        int i27 = this.nfsr[3];
        int i28 = this.nfsr[2];
        int i29 = this.nfsr[3];
        int i30 = this.nfsr[2];
        int i31 = this.nfsr[3];
        int i32 = this.nfsr[2];
        int i33 = this.nfsr[3];
        return ((((((((((i ^ ((i12 >>> 26) | (i13 << 6))) ^ ((i20 >>> 24) | (i21 << 8))) ^ ((this.nfsr[3] << 5) | (this.nfsr[2] >>> 27))) ^ this.nfsr[3]) ^ (((i2 >>> 3) | (i3 << 29)) & ((i29 << 29) | (i28 >>> 3)))) ^ (((i4 >>> 11) | (i5 << 21)) & ((i6 >>> 13) | (i7 << 19)))) ^ (((i8 >>> 17) | (i9 << 15)) & ((i10 >>> 18) | (i11 << 14)))) ^ (((i14 >>> 27) | (i15 << 5)) & ((i23 << 5) | (i22 >>> 27)))) ^ (((i16 >>> 8) | (i17 << 24)) & ((i18 >>> 16) | (i19 << 16)))) ^ (((i25 << 3) | (i24 >>> 29)) & ((i27 << 31) | (i26 >>> 1)))) ^ (((i31 << 28) | (i30 >>> 4)) & ((i33 << 12) | (i32 >>> 20)));
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
        this.output = getOutput();
        this.out[0] = (byte) this.output;
        this.out[1] = (byte) (this.output >> 8);
        this.out[2] = (byte) (this.output >> 16);
        this.out[3] = (byte) (this.output >> 24);
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
        for (int i2 = 0; i2 < this.nfsr.length; i2++) {
            int[] iArr = this.nfsr;
            int i3 = i + 3;
            byte b = this.workingKey[i3];
            int i4 = i + 2;
            byte b2 = this.workingKey[i4];
            int i5 = i + 1;
            iArr[i2] = (b << 24) | ((b2 << 16) & 16711680) | ((this.workingKey[i5] << 8) & 65280) | (this.workingKey[i] & 255);
            this.lfsr[i2] = (this.workingIV[i3] << 24) | ((this.workingIV[i4] << 16) & 16711680) | ((this.workingIV[i5] << 8) & 65280) | (this.workingIV[i] & 255);
            i += 4;
        }
    }

    private int[] shift(int[] iArr, int i) {
        iArr[0] = iArr[1];
        iArr[1] = iArr[2];
        iArr[2] = iArr[3];
        iArr[3] = i;
        return iArr;
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public String getAlgorithmName() {
        return "Grain-128";
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        byte[] iv = parametersWithIV.getIV();
        if (iv == null || iv.length != 12) {
            throw new IllegalArgumentException("Grain-128  requires exactly 12 bytes of IV");
        } else if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("Grain-128 Init parameters must include a key");
        } else {
            KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
            this.workingIV = new byte[keyParameter.getKey().length];
            this.workingKey = new byte[keyParameter.getKey().length];
            this.lfsr = new int[4];
            this.nfsr = new int[4];
            this.out = new byte[4];
            System.arraycopy(iv, 0, this.workingIV, 0, iv.length);
            System.arraycopy(keyParameter.getKey(), 0, this.workingKey, 0, keyParameter.getKey().length);
            reset();
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
        if (!this.initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        } else if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i3 + i2 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2[i3 + i4] = (byte) (bArr[i + i4] ^ getKeyStream());
            }
            return i2;
        }
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public void reset() {
        this.index = 4;
        setKey(this.workingKey, this.workingIV);
        initGrain();
    }

    @Override // org.spongycastle.crypto.StreamCipher
    public byte returnByte(byte b) {
        if (this.initialised) {
            return (byte) (b ^ getKeyStream());
        }
        throw new IllegalStateException(getAlgorithmName() + " not initialised");
    }
}
