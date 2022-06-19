package com.google.android.exoplayer2.util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/ParsableBitArray.class */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i) {
        this.data = bArr;
        this.byteLimit = i;
    }

    private void assertValidOffset() {
        int i;
        int i2 = this.byteOffset;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.byteLimit) || (i2 == i && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public void byteAlign() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        assertValidOffset();
    }

    public int getBytePosition() {
        Assertions.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void putInt(int i, int i2) {
        int i3;
        int i4 = i;
        if (i2 < 32) {
            i4 = i & ((1 << i2) - 1);
        }
        int min = Math.min(8 - this.bitOffset, i2);
        int i5 = (8 - this.bitOffset) - min;
        byte[] bArr = this.data;
        int i6 = this.byteOffset;
        bArr[i6] = (byte) (((65280 >> i3) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i2 - min;
        bArr[i6] = (byte) (((i4 >>> i7) << i5) | bArr[i6]);
        while (true) {
            i6++;
            if (i7 <= 8) {
                int i8 = 8 - i7;
                byte[] bArr2 = this.data;
                bArr2[i6] = (byte) (bArr2[i6] & ((1 << i8) - 1));
                bArr2[i6] = (byte) (((i4 & ((1 << i7) - 1)) << i8) | bArr2[i6]);
                skipBits(i2);
                assertValidOffset();
                return;
            }
            this.data[i6] = (byte) (i4 >>> (i7 - 8));
            i7 -= 8;
        }
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        this.bitOffset += i;
        int i4 = 0;
        while (true) {
            i2 = i4;
            i3 = this.bitOffset;
            if (i3 <= 8) {
                break;
            }
            int i5 = i3 - 8;
            this.bitOffset = i5;
            byte[] bArr = this.data;
            int i6 = this.byteOffset;
            this.byteOffset = i6 + 1;
            i4 = i2 | ((bArr[i6] & 255) << i5);
        }
        byte[] bArr2 = this.data;
        int i7 = this.byteOffset;
        byte b = bArr2[i7];
        if (i3 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i7 + 1;
        }
        assertValidOffset();
        return ((-1) >>> (32 - i)) & (i2 | ((b & 255) >> (8 - i3)));
    }

    public void readBits(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.data;
            int i4 = this.byteOffset;
            int i5 = i4 + 1;
            this.byteOffset = i5;
            byte b = bArr2[i4];
            int i6 = this.bitOffset;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
        int i8 = this.bitOffset;
        if (i8 + i7 > 8) {
            byte b2 = bArr[i3];
            byte[] bArr3 = this.data;
            int i9 = this.byteOffset;
            this.byteOffset = i9 + 1;
            bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
            this.bitOffset = i8 - 8;
        }
        int i10 = this.bitOffset + i7;
        this.bitOffset = i10;
        byte[] bArr4 = this.data;
        int i11 = this.byteOffset;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i11 + 1;
        }
        assertValidOffset();
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        Assertions.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i, i2);
        this.byteOffset += i2;
        assertValidOffset();
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.data, parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i;
    }

    public void setPosition(int i) {
        int i2 = i / 8;
        this.byteOffset = i2;
        this.bitOffset = i - (i2 * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i = this.bitOffset + 1;
        this.bitOffset = i;
        if (i == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        assertValidOffset();
    }

    public void skipBits(int i) {
        int i2 = i / 8;
        int i3 = this.byteOffset + i2;
        this.byteOffset = i3;
        int i4 = this.bitOffset + (i - (i2 * 8));
        this.bitOffset = i4;
        if (i4 > 7) {
            this.byteOffset = i3 + 1;
            this.bitOffset = i4 - 8;
        }
        assertValidOffset();
    }

    public void skipBytes(int i) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i;
        assertValidOffset();
    }
}
