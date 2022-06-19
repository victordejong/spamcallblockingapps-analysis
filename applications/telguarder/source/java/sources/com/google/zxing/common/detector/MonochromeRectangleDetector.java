package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/zxing/common/detector/MonochromeRectangleDetector.class */
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0078 A[EDGE_INSN: B:67:0x0078->B:21:0x0078 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0104 A[EDGE_INSN: B:84:0x0104->B:45:0x0104 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] blackWhiteRange(int r6, int r7, int r8, int r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }

    private ResultPoint findCornerFromCenter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        int[] iArr = null;
        int i10 = i;
        int i11 = i5;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            int[] blackWhiteRange = i2 == 0 ? blackWhiteRange(i11, i9, i3, i4, true) : blackWhiteRange(i10, i9, i7, i8, false);
            if (blackWhiteRange == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    if (iArr[0] >= i) {
                        return new ResultPoint(iArr[1], i12);
                    }
                    if (iArr[1] <= i) {
                        return new ResultPoint(iArr[0], i12);
                    }
                    Object[] objArr = 1;
                    if (i6 > 0) {
                        objArr = null;
                    }
                    return new ResultPoint(iArr[objArr == 1 ? 1 : 0], i12);
                }
                int i13 = i10 - i2;
                if (iArr[0] >= i5) {
                    return new ResultPoint(i13, iArr[1]);
                }
                if (iArr[1] <= i5) {
                    return new ResultPoint(i13, iArr[0]);
                }
                float f = i13;
                Object[] objArr2 = 1;
                if (i2 < 0) {
                    objArr2 = null;
                }
                return new ResultPoint(f, iArr[objArr2 == 1 ? 1 : 0]);
            }
            i11 += i6;
            i10 += i2;
            iArr = blackWhiteRange;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = height / 2;
        int i2 = width / 2;
        int max = Math.max(1, height / 256);
        int max2 = Math.max(1, width / 256);
        int i3 = -max;
        int i4 = i2 / 2;
        int y = ((int) findCornerFromCenter(i2, 0, 0, width, i, i3, 0, height, i4).getY()) - 1;
        int i5 = -max2;
        int i6 = i / 2;
        ResultPoint findCornerFromCenter = findCornerFromCenter(i2, i5, 0, width, i, 0, y, height, i6);
        int x = ((int) findCornerFromCenter.getX()) - 1;
        ResultPoint findCornerFromCenter2 = findCornerFromCenter(i2, max2, x, width, i, 0, y, height, i6);
        int x2 = ((int) findCornerFromCenter2.getX()) + 1;
        ResultPoint findCornerFromCenter3 = findCornerFromCenter(i2, 0, x, x2, i, max, y, height, i4);
        return new ResultPoint[]{findCornerFromCenter(i2, 0, x, x2, i, i3, y, ((int) findCornerFromCenter3.getY()) + 1, i2 / 4), findCornerFromCenter, findCornerFromCenter2, findCornerFromCenter3};
    }
}
