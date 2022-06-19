package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/common/HybridBinarizer.class */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i, int i2, int i3, int i4) {
        int i5 = i4 - 8;
        int i6 = i3 - 8;
        int[][] iArr = new int[i2][i];
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 << 3;
            int i9 = i8;
            if (i8 > i5) {
                i9 = i5;
            }
            for (int i10 = 0; i10 < i; i10++) {
                int i11 = i10 << 3;
                int i12 = i11;
                if (i11 > i6) {
                    i12 = i6;
                }
                int i13 = (i9 * i3) + i12;
                int i14 = 255;
                int i15 = 0;
                int i16 = 0;
                int i17 = 0;
                while (i15 < 8) {
                    int i18 = 0;
                    while (i18 < 8) {
                        int i19 = bArr[i13 + i18] & 255;
                        int i20 = i16 + i19;
                        int i21 = i14;
                        if (i19 < i14) {
                            i21 = i19;
                        }
                        int i22 = i17;
                        if (i19 > i17) {
                            i22 = i19;
                        }
                        i18++;
                        i17 = i22;
                        i14 = i21;
                        i16 = i20;
                    }
                    int i23 = i13;
                    int i24 = i15;
                    int i25 = i16;
                    if (i17 - i14 > 24) {
                        int i26 = i15;
                        int i27 = i13;
                        while (true) {
                            int i28 = i26 + 1;
                            int i29 = i27 + i3;
                            i23 = i29;
                            i24 = i28;
                            i25 = i16;
                            if (i28 < 8) {
                                int i30 = 0;
                                int i31 = i16;
                                while (true) {
                                    i27 = i29;
                                    i26 = i28;
                                    i16 = i31;
                                    if (i30 < 8) {
                                        i31 += bArr[i29 + i30] & 255;
                                        i30++;
                                    }
                                }
                            }
                        }
                    }
                    i15 = i24 + 1;
                    i13 = i23 + i3;
                    i16 = i25;
                }
                int i32 = i16 >> 6;
                if (i17 - i14 <= 24) {
                    int i33 = i14 / 2;
                    i32 = i33;
                    if (i7 > 0) {
                        i32 = i33;
                        if (i10 > 0) {
                            int i34 = i7 - 1;
                            int i35 = iArr[i34][i10];
                            int[] iArr2 = iArr[i7];
                            int i36 = i10 - 1;
                            int i37 = ((i35 + (iArr2[i36] * 2)) + iArr[i34][i36]) / 4;
                            i32 = i33;
                            if (i14 < i37) {
                                i32 = i37;
                            }
                        }
                    }
                }
                iArr[i7][i10] = i32;
            }
        }
        return iArr;
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, BitMatrix bitMatrix) {
        int i5 = i4 - 8;
        int i6 = i3 - 8;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 << 3;
            if (i8 > i5) {
                i8 = i5;
            }
            int cap = cap(i7, 2, i2 - 3);
            for (int i9 = 0; i9 < i; i9++) {
                int i10 = i9 << 3;
                if (i10 > i6) {
                    i10 = i6;
                }
                int cap2 = cap(i9, 2, i - 3);
                int i11 = 0;
                for (int i12 = -2; i12 <= 2; i12++) {
                    int[] iArr2 = iArr[cap + i12];
                    i11 += iArr2[cap2 - 2] + iArr2[cap2 - 1] + iArr2[cap2] + iArr2[cap2 + 1] + iArr2[cap2 + 2];
                }
                thresholdBlock(bArr, i10, i8, i11 / 25, i3, bitMatrix);
            }
        }
    }

    private static int cap(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    private static void thresholdBlock(byte[] bArr, int i, int i2, int i3, int i4, BitMatrix bitMatrix) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    bitMatrix.set(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix = luminanceSource.getMatrix();
            int i = width >> 3;
            int i2 = i;
            if ((width & 7) != 0) {
                i2 = i + 1;
            }
            int i3 = height >> 3;
            int i4 = i3;
            if ((height & 7) != 0) {
                i4 = i3 + 1;
            }
            int[][] calculateBlackPoints = calculateBlackPoints(matrix, i2, i4, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i2, i4, width, height, calculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        }
        return this.matrix;
    }
}
