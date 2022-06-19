package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.ExtendedDigest;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/crypto/digests/GeneralDigest.class */
public abstract class GeneralDigest implements ExtendedDigest {
    private static final int BYTE_LENGTH = 64;
    private long byteCount;
    private byte[] xBuf;
    private int xBufOff;

    public GeneralDigest() {
        this.xBuf = new byte[4];
        this.xBufOff = 0;
    }

    public GeneralDigest(GeneralDigest generalDigest) {
        byte[] bArr = new byte[generalDigest.xBuf.length];
        this.xBuf = bArr;
        byte[] bArr2 = generalDigest.xBuf;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        this.xBufOff = generalDigest.xBufOff;
        this.byteCount = generalDigest.byteCount;
    }

    public void finish() {
        long j = this.byteCount;
        byte b = Byte.MIN_VALUE;
        while (true) {
            update(b);
            if (this.xBufOff == 0) {
                processLength(j << 3);
                processBlock();
                return;
            }
            b = 0;
        }
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return 64;
    }

    public abstract void processBlock();

    public abstract void processLength(long j);

    public abstract void processWord(byte[] bArr, int i);

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.byteCount = 0L;
        this.xBufOff = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.xBuf;
            if (i < bArr.length) {
                bArr[i] = (byte) 0;
                i++;
            } else {
                return;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        byte[] bArr = this.xBuf;
        int i = this.xBufOff;
        int i2 = i + 1;
        this.xBufOff = i2;
        bArr[i] = b;
        if (i2 == bArr.length) {
            processWord(bArr, 0);
            this.xBufOff = 0;
        }
        this.byteCount++;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = i2;
        int i8 = i;
        while (true) {
            i3 = i8;
            i4 = i7;
            if (this.xBufOff == 0) {
                break;
            }
            i3 = i8;
            i4 = i7;
            if (i7 <= 0) {
                break;
            }
            update(bArr[i8]);
            i8++;
            i7--;
        }
        while (true) {
            i5 = i3;
            if (i4 > this.xBuf.length) {
                processWord(bArr, i3);
                byte[] bArr2 = this.xBuf;
                i3 += bArr2.length;
                i4 -= bArr2.length;
                this.byteCount += bArr2.length;
            }
        }
        for (i6 = i4; i6 > 0; i6--) {
            update(bArr[i5]);
            i5++;
        }
    }
}
