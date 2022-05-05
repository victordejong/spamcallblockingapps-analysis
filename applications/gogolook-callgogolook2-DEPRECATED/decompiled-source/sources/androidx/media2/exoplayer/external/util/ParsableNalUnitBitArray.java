package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/ParsableNalUnitBitArray.class */
public final class ParsableNalUnitBitArray {
    public int bitOffset;
    public int byteLimit;
    public int byteOffset;
    public byte[] data;

    public ParsableNalUnitBitArray(byte[] bArr, int i, int i2) {
        reset(bArr, i, i2);
    }

    private void assertValidOffset() {
        int i;
        int i2 = this.byteOffset;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.byteLimit) || (i2 == i && this.bitOffset == 0)));
    }

    private int readExpGolombCodeNum() {
        int i = 0;
        int i2 = 0;
        while (!readBit()) {
            i2++;
        }
        if (i2 > 0) {
            i = readBits(i2);
        }
        return ((1 << i2) - 1) + i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r0[r5 - 1] == 0) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean shouldSkipByte(int r5) {
        /*
            r4 = this;
            r0 = 1
            r6 = r0
            r0 = 2
            r1 = r5
            if (r0 > r1) goto L_0x002e
            r0 = r5
            r1 = r4
            int r1 = r1.byteLimit
            if (r0 >= r1) goto L_0x002e
            r0 = r4
            byte[] r0 = r0.data
            r7 = r0
            r0 = r7
            r1 = r5
            r0 = r0[r1]
            r1 = 3
            if (r0 != r1) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 2
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            r0 = r7
            r1 = r5
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x002e
            goto L_0x0030
        L_0x002e:
            r0 = 0
            r6 = r0
        L_0x0030:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.ParsableNalUnitBitArray.shouldSkipByte(int):boolean");
    }

    public boolean canReadBits(int i) {
        int i2 = this.byteOffset;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.bitOffset + i) - (i3 * 8);
        int i6 = i4;
        int i7 = i5;
        if (i5 > 7) {
            i6 = i4 + 1;
            i7 = i5 - 8;
        }
        int i8 = i2;
        while (true) {
            int i9 = i8 + 1;
            if (i9 > i6 || i6 >= this.byteLimit) {
                break;
            }
            i8 = i9;
            if (shouldSkipByte(i9)) {
                i6++;
                i8 = i9 + 2;
            }
        }
        int i10 = this.byteLimit;
        boolean z = true;
        if (i6 >= i10) {
            z = i6 == i10 && i7 == 0;
        }
        return z;
    }

    public boolean canReadExpGolombCodedNum() {
        int i = this.byteOffset;
        int i2 = this.bitOffset;
        int i3 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i3++;
        }
        boolean z = this.byteOffset == this.byteLimit;
        this.byteOffset = i;
        this.bitOffset = i2;
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (canReadBits((i3 * 2) + 1)) {
                z2 = true;
            }
        }
        return z2;
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        int i3;
        this.bitOffset += i;
        int i4 = 0;
        while (true) {
            i2 = this.bitOffset;
            i3 = 2;
            if (i2 <= 8) {
                break;
            }
            this.bitOffset = i2 - 8;
            byte[] bArr = this.data;
            int i5 = this.byteOffset;
            i4 |= (bArr[i5] & 255) << this.bitOffset;
            if (!shouldSkipByte(i5 + 1)) {
                i3 = 1;
            }
            this.byteOffset = i5 + i3;
        }
        byte[] bArr2 = this.data;
        int i6 = this.byteOffset;
        byte b = bArr2[i6];
        if (i2 == 8) {
            this.bitOffset = 0;
            if (!shouldSkipByte(i6 + 1)) {
                i3 = 1;
            }
            this.byteOffset = i6 + i3;
        }
        assertValidOffset();
        return ((-1) >>> (32 - i)) & (i4 | ((b & 255) >> (8 - i2)));
    }

    public int readSignedExpGolombCodedInt() {
        int readExpGolombCodeNum = readExpGolombCodeNum();
        return (readExpGolombCodeNum % 2 == 0 ? -1 : 1) * ((readExpGolombCodeNum + 1) / 2);
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public void reset(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.byteOffset = i;
        this.byteLimit = i2;
        this.bitOffset = 0;
        assertValidOffset();
    }

    public void skipBit() {
        int i = 1;
        int i2 = this.bitOffset + 1;
        this.bitOffset = i2;
        if (i2 == 8) {
            this.bitOffset = 0;
            int i3 = this.byteOffset;
            if (shouldSkipByte(i3 + 1)) {
                i = 2;
            }
            this.byteOffset = i3 + i;
        }
        assertValidOffset();
    }

    public void skipBits(int i) {
        int i2 = this.byteOffset;
        int i3 = i / 8;
        this.byteOffset = i2 + i3;
        this.bitOffset += i - (i3 * 8);
        int i4 = this.bitOffset;
        int i5 = i2;
        if (i4 > 7) {
            this.byteOffset++;
            this.bitOffset = i4 - 8;
            i5 = i2;
        }
        while (true) {
            int i6 = i5 + 1;
            if (i6 <= this.byteOffset) {
                i5 = i6;
                if (shouldSkipByte(i6)) {
                    this.byteOffset++;
                    i5 = i6 + 2;
                }
            } else {
                assertValidOffset();
                return;
            }
        }
    }
}
