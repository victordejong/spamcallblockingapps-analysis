package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/pdf417/detector/Detector.class */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List<ResultPoint[]> detect = detect(z, blackMatrix);
        BitMatrix bitMatrix = blackMatrix;
        List<ResultPoint[]> list = detect;
        if (detect.isEmpty()) {
            bitMatrix = blackMatrix.clone();
            bitMatrix.rotate180();
            list = detect(z, bitMatrix);
        }
        return new PDF417DetectorResult(bitMatrix, list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r9 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
        if (r0.hasNext() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
        r0 = (com.google.zxing.ResultPoint[]) r0.next();
        r9 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        if (r0[1] == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005c, code lost:
        r9 = (int) java.lang.Math.max(r7, r0[1].getY());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006b, code lost:
        r7 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        if (r0[3] == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0075, code lost:
        r7 = java.lang.Math.max(r9, (int) r0[3].getY());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.google.zxing.ResultPoint[]> detect(boolean r4, com.google.zxing.common.BitMatrix r5) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.detector.Detector.detect(boolean, com.google.zxing.common.BitMatrix):java.util.List");
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        for (int i4 = 0; bitMatrix.get(i, i2) && i > 0 && i4 < 3; i4++) {
            i--;
        }
        int length = iArr.length;
        int i5 = i;
        int i6 = i;
        int i7 = 0;
        while (i6 < i3) {
            if (bitMatrix.get(i6, i2) != z) {
                iArr2[i7] = iArr2[i7] + 1;
            } else {
                if (i7 != length - 1) {
                    i7++;
                } else if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                    return new int[]{i5, i6};
                } else {
                    i5 += iArr2[0] + iArr2[1];
                    int i8 = i7 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i8);
                    iArr2[i8] = 0;
                    iArr2[i7] = 0;
                    i7--;
                }
                iArr2[i7] = 1;
                z = !z;
            }
            i6++;
        }
        if (i7 != length - 1 || patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{i5, i6 - 1};
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003e, code lost:
        if (r0 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        r16 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
        r0 = r11;
        r0[0] = new com.google.zxing.ResultPoint(r16[0], r0);
        r0[1] = new com.google.zxing.ResultPoint(r16[1], r0);
        r12 = r11;
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
        if (r11 <= 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
        r11 = r11 - 1;
        r0 = findGuardPattern(r8, r12, r11, r10, false, r13, r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.zxing.ResultPoint[] findRowsWithPattern(com.google.zxing.common.BitMatrix r8, int r9, int r10, int r11, int r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.detector.Detector.findRowsWithPattern(com.google.zxing.common.BitMatrix, int, int, int, int, int[]):com.google.zxing.ResultPoint[]");
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, START_PATTERN), INDEXES_START_PATTERN);
        if (resultPointArr[4] != null) {
            i2 = (int) resultPointArr[4].getX();
            i = (int) resultPointArr[4].getY();
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = i;
        float f3 = f2 / i2;
        float f4 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            float f5 = iArr2[i4] * f3;
            float f6 = iArr[i4];
            float f7 = f6 > f5 ? f6 - f5 : f5 - f6;
            if (f7 > f * f3) {
                return Float.POSITIVE_INFINITY;
            }
            f4 += f7;
        }
        return f4 / f2;
    }
}
