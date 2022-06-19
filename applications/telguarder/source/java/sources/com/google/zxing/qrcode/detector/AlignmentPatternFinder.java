package com.google.zxing.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/qrcode/detector/AlignmentPatternFinder.class */
final class AlignmentPatternFinder {
    private final int height;
    private final BitMatrix image;
    private final float moduleSize;
    private final ResultPointCallback resultPointCallback;
    private final int startX;
    private final int startY;
    private final int width;
    private final List<AlignmentPattern> possibleCenters = new ArrayList(5);
    private final int[] crossCheckStateCount = new int[3];

    public AlignmentPatternFinder(BitMatrix bitMatrix, int i, int i2, int i3, int i4, float f, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.startX = i;
        this.startY = i2;
        this.width = i3;
        this.height = i4;
        this.moduleSize = f;
        this.resultPointCallback = resultPointCallback;
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return (i - iArr[2]) - (iArr[1] / 2.0f);
    }

    private float crossCheckVertical(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] iArr = this.crossCheckStateCount;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i2, i5) && iArr[1] <= i3) {
            iArr[1] = iArr[1] + 1;
            i5--;
        }
        if (i5 < 0 || iArr[1] > i3) {
            return Float.NaN;
        }
        while (i5 >= 0 && !bitMatrix.get(i2, i5) && iArr[0] <= i3) {
            iArr[0] = iArr[0] + 1;
            i5--;
        }
        if (iArr[0] > i3) {
            return Float.NaN;
        }
        while (true) {
            i++;
            if (i >= height || !bitMatrix.get(i2, i) || iArr[1] > i3) {
                break;
            }
            iArr[1] = iArr[1] + 1;
        }
        if (i == height || iArr[1] > i3) {
            return Float.NaN;
        }
        while (i < height && !bitMatrix.get(i2, i) && iArr[2] <= i3) {
            iArr[2] = iArr[2] + 1;
            i++;
        }
        if (iArr[2] > i3 || Math.abs(((iArr[0] + iArr[1]) + iArr[2]) - i4) * 5 >= i4 * 2 || !foundPatternCross(iArr)) {
            return Float.NaN;
        }
        return centerFromEnd(iArr, i);
    }

    private boolean foundPatternCross(int[] iArr) {
        float f = this.moduleSize;
        float f2 = f / 2.0f;
        for (int i = 0; i < 3; i++) {
            if (Math.abs(f - iArr[i]) >= f2) {
                return false;
            }
        }
        return true;
    }

    private AlignmentPattern handlePossibleCenter(int[] iArr, int i, int i2) {
        int i3 = iArr[0];
        int i4 = iArr[1];
        int i5 = iArr[2];
        float centerFromEnd = centerFromEnd(iArr, i2);
        float crossCheckVertical = crossCheckVertical(i, (int) centerFromEnd, iArr[1] * 2, i3 + i4 + i5);
        if (!Float.isNaN(crossCheckVertical)) {
            float f = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
            for (AlignmentPattern alignmentPattern : this.possibleCenters) {
                if (alignmentPattern.aboutEquals(f, crossCheckVertical, centerFromEnd)) {
                    return alignmentPattern.combineEstimate(crossCheckVertical, centerFromEnd, f);
                }
            }
            AlignmentPattern alignmentPattern2 = new AlignmentPattern(centerFromEnd, crossCheckVertical, f);
            this.possibleCenters.add(alignmentPattern2);
            ResultPointCallback resultPointCallback = this.resultPointCallback;
            if (resultPointCallback == null) {
                return null;
            }
            resultPointCallback.foundPossibleResultPoint(alignmentPattern2);
            return null;
        }
        return null;
    }

    public AlignmentPattern find() throws NotFoundException {
        AlignmentPattern handlePossibleCenter;
        AlignmentPattern handlePossibleCenter2;
        int i = this.startX;
        int i2 = this.height;
        int i3 = this.width + i;
        int i4 = this.startY;
        int i5 = i2 / 2;
        int[] iArr = new int[3];
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = ((i6 & 1) == 0 ? (i6 + 1) / 2 : -((i6 + 1) / 2)) + i4 + i5;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i8 = i;
            while (i8 < i3 && !this.image.get(i8, i7)) {
                i8++;
            }
            int i9 = 0;
            for (int i10 = i8; i10 < i3; i10++) {
                if (!this.image.get(i10, i7)) {
                    int i11 = i9;
                    if (i9 == 1) {
                        i11 = i9 + 1;
                    }
                    iArr[i11] = iArr[i11] + 1;
                    i9 = i11;
                } else if (i9 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i9 != 2) {
                    i9++;
                    iArr[i9] = iArr[i9] + 1;
                } else if (foundPatternCross(iArr) && (handlePossibleCenter2 = handlePossibleCenter(iArr, i7, i10)) != null) {
                    return handlePossibleCenter2;
                } else {
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i9 = 1;
                }
            }
            if (foundPatternCross(iArr) && (handlePossibleCenter = handlePossibleCenter(iArr, i7, i3)) != null) {
                return handlePossibleCenter;
            }
        }
        if (!this.possibleCenters.isEmpty()) {
            return this.possibleCenters.get(0);
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
