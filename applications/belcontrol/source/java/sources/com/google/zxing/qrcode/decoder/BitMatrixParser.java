package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/decoder/BitMatrixParser.class */
public final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    public BitMatrixParser(BitMatrix bitMatrix) {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix;
    }

    private int copyBit(int i, int i2, int i3) {
        return this.mirror ? this.bitMatrix.get(i2, i) : this.bitMatrix.get(i, i2) ? (i3 << 1) | 1 : i3 << 1;
    }

    public void mirror() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.bitMatrix.getWidth()) {
                int i3 = i2 + 1;
                for (int i4 = i3; i4 < this.bitMatrix.getHeight(); i4++) {
                    if (this.bitMatrix.get(i2, i4) != this.bitMatrix.get(i4, i2)) {
                        this.bitMatrix.flip(i4, i2);
                        this.bitMatrix.flip(i2, i4);
                    }
                }
                i = i3;
            } else {
                return;
            }
        }
    }

    public byte[] readCodewords() {
        FormatInformation readFormatInformation = readFormatInformation();
        Version readVersion = readVersion();
        DataMask dataMask = DataMask.values()[readFormatInformation.getDataMask()];
        int height = this.bitMatrix.getHeight();
        dataMask.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix buildFunctionPattern = readVersion.buildFunctionPattern();
        byte[] bArr = new byte[readVersion.getTotalCodewords()];
        int i = height - 1;
        boolean z = true;
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 > 0) {
            int i6 = i2;
            if (i2 == 6) {
                i6 = i2 - 1;
            }
            int i7 = 0;
            while (i7 < height) {
                int i8 = z ? i - i7 : i7;
                int i9 = 0;
                int i10 = i5;
                int i11 = i4;
                while (i9 < 2) {
                    int i12 = i6 - i9;
                    int i13 = i3;
                    int i14 = i11;
                    int i15 = i10;
                    if (!buildFunctionPattern.get(i12, i8)) {
                        int i16 = i11 + 1;
                        int i17 = i10 << 1;
                        int i18 = i17;
                        if (this.bitMatrix.get(i12, i8)) {
                            i18 = i17 | 1;
                        }
                        i13 = i3;
                        i14 = i16;
                        i15 = i18;
                        if (i16 == 8) {
                            bArr[i3] = (byte) i18;
                            i13 = i3 + 1;
                            i14 = 0;
                            i15 = 0;
                        }
                    }
                    i9++;
                    i3 = i13;
                    i11 = i14;
                    i10 = i15;
                }
                i7++;
                i4 = i11;
                i5 = i10;
            }
            z = !z;
            i2 = i6 - 2;
        }
        if (i3 == readVersion.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    public FormatInformation readFormatInformation() {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i = copyBit(i2, 8, i);
        }
        int copyBit = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i)));
        for (int i3 = 5; i3 >= 0; i3--) {
            copyBit = copyBit(8, i3, copyBit);
        }
        int height = this.bitMatrix.getHeight();
        int i4 = 0;
        for (int i5 = height - 1; i5 >= height - 7; i5--) {
            i4 = copyBit(8, i5, i4);
        }
        for (int i6 = height - 8; i6 < height; i6++) {
            i4 = copyBit(i6, 8, i4);
        }
        FormatInformation decodeFormatInformation = FormatInformation.decodeFormatInformation(copyBit, i4);
        this.parsedFormatInfo = decodeFormatInformation;
        if (decodeFormatInformation == null) {
            throw FormatException.getFormatInstance();
        }
        return decodeFormatInformation;
    }

    public Version readVersion() {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i = (height - 17) / 4;
        if (i <= 6) {
            return Version.getVersionForNumber(i);
        }
        int i2 = height - 11;
        int i3 = 0;
        for (int i4 = 5; i4 >= 0; i4--) {
            for (int i5 = height - 9; i5 >= i2; i5--) {
                i3 = copyBit(i5, i4, i3);
            }
        }
        Version decodeVersionInformation = Version.decodeVersionInformation(i3);
        int i6 = 5;
        int i7 = 0;
        if (decodeVersionInformation != null) {
            i6 = 5;
            i7 = 0;
            if (decodeVersionInformation.getDimensionForVersion() == height) {
                this.parsedVersion = decodeVersionInformation;
                return decodeVersionInformation;
            }
        }
        while (i6 >= 0) {
            for (int i8 = height - 9; i8 >= i2; i8--) {
                i7 = copyBit(i6, i8, i7);
            }
            i6--;
        }
        Version decodeVersionInformation2 = Version.decodeVersionInformation(i7);
        if (decodeVersionInformation2 == null || decodeVersionInformation2.getDimensionForVersion() != height) {
            throw FormatException.getFormatInstance();
        }
        this.parsedVersion = decodeVersionInformation2;
        return decodeVersionInformation2;
    }

    public void remask() {
        if (this.parsedFormatInfo == null) {
            return;
        }
        DataMask.values()[this.parsedFormatInfo.getDataMask()].unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
    }

    public void setMirror(boolean z) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z;
    }
}
