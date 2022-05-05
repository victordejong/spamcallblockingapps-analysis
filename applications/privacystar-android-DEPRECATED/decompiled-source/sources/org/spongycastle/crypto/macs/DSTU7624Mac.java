package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.engines.DSTU7624Engine;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/DSTU7624Mac.class */
public class DSTU7624Mac implements Mac {
    private static final int BITS_IN_BYTE = 8;
    private int blockSize;
    private byte[] buf;
    private int bufOff;

    /* renamed from: c */
    private byte[] f1310c;
    private byte[] cTemp;
    private DSTU7624Engine engine;
    private byte[] kDelta;
    private int macSize;

    public DSTU7624Mac(int i, int i2) {
        this.engine = new DSTU7624Engine(i);
        this.blockSize = i / 8;
        this.macSize = i2 / 8;
        this.f1310c = new byte[this.blockSize];
        this.kDelta = new byte[this.blockSize];
        this.cTemp = new byte[this.blockSize];
        this.buf = new byte[this.blockSize];
    }

    private void processBlock(byte[] bArr, int i) {
        xor(this.f1310c, 0, bArr, i, this.cTemp);
        this.engine.processBlock(this.cTemp, 0, this.f1310c, 0);
    }

    private void xor(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3) {
        if (bArr.length - i < this.blockSize || bArr2.length - i2 < this.blockSize || bArr3.length < this.blockSize) {
            throw new IllegalArgumentException("some of input buffers too short");
        }
        for (int i3 = 0; i3 < this.blockSize; i3++) {
            bArr3[i3] = (byte) (bArr[i3 + i] ^ bArr2[i3 + i2]);
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        if (this.bufOff % this.buf.length != 0) {
            throw new DataLengthException("input must be a multiple of blocksize");
        }
        xor(this.f1310c, 0, this.buf, 0, this.cTemp);
        xor(this.cTemp, 0, this.kDelta, 0, this.f1310c);
        this.engine.processBlock(this.f1310c, 0, this.f1310c, 0);
        if (this.macSize + i > bArr.length) {
            throw new OutputLengthException("output buffer too short");
        }
        System.arraycopy(this.f1310c, 0, bArr, i, this.macSize);
        return this.macSize;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return "DSTU7624Mac";
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.engine.init(true, cipherParameters);
            this.engine.processBlock(this.kDelta, 0, this.kDelta, 0);
            return;
        }
        throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Mac");
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        Arrays.fill(this.f1310c, (byte) 0);
        Arrays.fill(this.cTemp, (byte) 0);
        Arrays.fill(this.kDelta, (byte) 0);
        Arrays.fill(this.buf, (byte) 0);
        this.engine.reset();
        this.engine.processBlock(this.kDelta, 0, this.kDelta, 0);
        this.bufOff = 0;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) {
        if (this.bufOff == this.buf.length) {
            processBlock(this.buf, 0);
            this.bufOff = 0;
        }
        byte[] bArr = this.buf;
        int i = this.bufOff;
        this.bufOff = i + 1;
        bArr[i] = b;
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("can't have a negative input length!");
        }
        int blockSize = this.engine.getBlockSize();
        int i3 = blockSize - this.bufOff;
        int i4 = i;
        int i5 = i2;
        if (i2 > i3) {
            System.arraycopy(bArr, i, this.buf, this.bufOff, i3);
            processBlock(this.buf, 0);
            this.bufOff = 0;
            int i6 = i2 - i3;
            int i7 = i;
            int i8 = i3;
            while (true) {
                int i9 = i7 + i8;
                i4 = i9;
                i5 = i6;
                if (i6 <= blockSize) {
                    break;
                }
                processBlock(bArr, i9);
                i6 -= blockSize;
                i7 = i9;
                i8 = blockSize;
            }
        }
        System.arraycopy(bArr, i4, this.buf, this.bufOff, i5);
        this.bufOff += i5;
    }
}
