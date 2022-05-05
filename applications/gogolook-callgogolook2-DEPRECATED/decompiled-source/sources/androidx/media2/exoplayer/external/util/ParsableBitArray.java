package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ParsableBitArray.class */
public final class ParsableBitArray {
    public int bitOffset;
    public int byteLimit;
    public int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
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
        if (this.bitOffset != 0) {
            this.bitOffset = 0;
            this.byteOffset++;
            assertValidOffset();
        }
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
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.data[i8] = (byte) (i4 >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.data;
        bArr2[i8] = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = (byte) (((i4 & ((1 << i7) - 1)) << i9) | bArr2[i8]);
        skipBits(i2);
        assertValidOffset();
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.bitOffset += i;
        int i3 = 0;
        while (true) {
            i2 = this.bitOffset;
            if (i2 <= 8) {
                break;
            }
            this.bitOffset = i2 - 8;
            byte[] bArr = this.data;
            int i4 = this.byteOffset;
            this.byteOffset = i4 + 1;
            i3 |= (bArr[i4] & 255) << this.bitOffset;
        }
        byte[] bArr2 = this.data;
        int i5 = this.byteOffset;
        byte b = bArr2[i5];
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i5 + 1;
        }
        assertValidOffset();
        return ((-1) >>> (32 - i)) & (i3 | ((b & 255) >> (8 - i2)));
    }

    public void readBits(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = (i2 >> 3) + i;
        while (i < i4) {
            byte[] bArr2 = this.data;
            int i5 = this.byteOffset;
            this.byteOffset = i5 + 1;
            byte b = bArr2[i5];
            int i6 = this.bitOffset;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[this.byteOffset]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 != 0) {
            bArr[i4] = (byte) (bArr[i4] & (255 >> i7));
            int i8 = this.bitOffset;
            if (i8 + i7 > 8) {
                byte b2 = bArr[i4];
                byte[] bArr3 = this.data;
                this.byteOffset = this.byteOffset + 1;
                bArr[i4] = (byte) (b2 | ((bArr3[i3] & 255) << i8));
                this.bitOffset = i8 - 8;
            }
            this.bitOffset += i7;
            byte[] bArr4 = this.data;
            int i9 = this.byteOffset;
            byte b3 = bArr4[i9];
            int i10 = this.bitOffset;
            bArr[i4] = (byte) (((byte) (((b3 & 255) >> (8 - i10)) << (8 - i7))) | bArr[i4]);
            if (i10 == 8) {
                this.bitOffset = 0;
                this.byteOffset = i9 + 1;
            }
            assertValidOffset();
        }
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
        this.byteOffset = i / 8;
        this.bitOffset = i - (this.byteOffset * 8);
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
        this.byteOffset += i2;
        this.bitOffset += i - (i2 * 8);
        int i3 = this.bitOffset;
        if (i3 > 7) {
            this.byteOffset++;
            this.bitOffset = i3 - 8;
        }
        assertValidOffset();
    }

    public void skipBytes(int i) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i;
        assertValidOffset();
    }
}
