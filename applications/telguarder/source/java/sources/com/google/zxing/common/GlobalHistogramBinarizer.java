package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/common/GlobalHistogramBinarizer.class */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final byte[] EMPTY = new byte[0];
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private byte[] luminances = EMPTY;
    private final int[] buckets = new int[32];

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int i;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < length) {
            int i6 = i3;
            if (iArr[i2] > i3) {
                i6 = iArr[i2];
                i5 = i2;
            }
            int i7 = i4;
            if (iArr[i2] > i4) {
                i7 = iArr[i2];
            }
            i2++;
            i3 = i6;
            i4 = i7;
        }
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i10 < length) {
            int i11 = i10 - i5;
            int i12 = iArr[i10] * i11 * i11;
            int i13 = i9;
            if (i12 > i9) {
                i8 = i10;
                i13 = i12;
            }
            i10++;
            i9 = i13;
        }
        if (i5 > i8) {
            i = i8;
            i8 = i5;
        } else {
            i = i5;
        }
        if (i8 - i > length / 16) {
            int i14 = i8 - 1;
            int i15 = i14;
            int i16 = -1;
            while (true) {
                int i17 = i16;
                if (i14 <= i) {
                    return i15 << 3;
                }
                int i18 = i14 - i;
                int i19 = i18 * i18 * (i8 - i14) * (i4 - iArr[i14]);
                int i20 = i17;
                if (i19 > i17) {
                    i15 = i14;
                    i20 = i19;
                }
                i14--;
                i16 = i20;
            }
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private void initArrays(int i) {
        if (this.luminances.length < i) {
            this.luminances = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.buckets[i2] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        for (int i = 1; i < 5; i++) {
            byte[] row = luminanceSource.getRow((height * i) / 5, this.luminances);
            int i2 = (width << 2) / 5;
            for (int i3 = width / 5; i3 < i2; i3++) {
                int i4 = (row[i3] & 255) >> 3;
                iArr[i4] = iArr[i4] + 1;
            }
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                if ((matrix[(i5 * width) + i6] & 255) < estimateBlackPoint) {
                    bitMatrix.set(i6, i5);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i, this.luminances);
        int[] iArr = this.buckets;
        for (int i2 = 0; i2 < width; i2++) {
            int i3 = (row[i2] & 255) >> 3;
            iArr[i3] = iArr[i3] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        if (width >= 3) {
            int i4 = 1;
            int i5 = row[0] & 255;
            int i6 = row[1] & 255;
            while (true) {
                int i7 = i6;
                if (i4 >= width - 1) {
                    break;
                }
                int i8 = i4 + 1;
                int i9 = row[i8] & 255;
                if ((((i7 << 2) - i5) - i9) / 2 < estimateBlackPoint) {
                    bitArray.set(i4);
                }
                i5 = i7;
                i4 = i8;
                i6 = i9;
            }
        } else {
            for (int i10 = 0; i10 < width; i10++) {
                if ((row[i10] & 255) < estimateBlackPoint) {
                    bitArray.set(i10);
                }
            }
        }
        return bitArray;
    }
}
