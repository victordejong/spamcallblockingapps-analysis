package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/detector/FinderPatternFinder.class */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    public static final int MAX_MODULES = 97;
    public static final int MIN_SKIP = 3;
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    /* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator.class */
    public static final class CenterComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private CenterComparator(float f) {
            this.average = f;
        }

        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            int compare = Integer.compare(finderPattern2.getCount(), finderPattern.getCount());
            return compare == 0 ? Float.compare(Math.abs(finderPattern.getEstimatedModuleSize() - this.average), Math.abs(finderPattern2.getEstimatedModuleSize() - this.average)) : compare;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator.class */
    public static final class FurthestFromAverageComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private FurthestFromAverageComparator(float f) {
            this.average = f;
        }

        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            return Float.compare(Math.abs(finderPattern2.getEstimatedModuleSize() - this.average), Math.abs(finderPattern.getEstimatedModuleSize() - this.average));
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private boolean crossCheckDiagonal(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i6++;
        }
        if (crossCheckStateCount[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i6++;
        }
        if (crossCheckStateCount[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.image.get(i2 - i6, i - i6)) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i6++;
        }
        if (crossCheckStateCount[0] == 0) {
            return false;
        }
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i7 = 1;
        while (true) {
            int i8 = i + i7;
            i3 = i7;
            if (i8 >= height) {
                break;
            }
            int i9 = i2 + i7;
            i3 = i7;
            if (i9 >= width) {
                break;
            }
            i3 = i7;
            if (!this.image.get(i9, i8)) {
                break;
            }
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i7++;
        }
        while (true) {
            int i10 = i + i3;
            if (i10 >= height || (i5 = i2 + i3) >= width || this.image.get(i5, i10)) {
                break;
            }
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i3++;
        }
        if (crossCheckStateCount[3] == 0) {
            return false;
        }
        while (true) {
            int i11 = i + i3;
            if (i11 >= height || (i4 = i2 + i3) >= width || !this.image.get(i4, i11)) {
                break;
            }
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i3++;
        }
        if (crossCheckStateCount[4] != 0) {
            return foundPatternDiagonal(crossCheckStateCount);
        }
        return false;
    }

    private float crossCheckHorizontal(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.image;
        int width = bitMatrix.getWidth();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i5, i2)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i5--;
        }
        int i6 = i5;
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i6 >= 0 && !bitMatrix.get(i6, i2) && crossCheckStateCount[1] <= i3) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i6--;
        }
        if (i6 < 0 || crossCheckStateCount[1] > i3) {
            return Float.NaN;
        }
        while (i6 >= 0 && bitMatrix.get(i6, i2) && crossCheckStateCount[0] <= i3) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i6--;
        }
        if (crossCheckStateCount[0] > i3) {
            return Float.NaN;
        }
        while (true) {
            i++;
            if (i >= width || !bitMatrix.get(i, i2)) {
                break;
            }
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
        }
        int i7 = i;
        if (i == width) {
            return Float.NaN;
        }
        while (i7 < width && !bitMatrix.get(i7, i2) && crossCheckStateCount[3] < i3) {
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i7++;
        }
        if (i7 == width || crossCheckStateCount[3] >= i3) {
            return Float.NaN;
        }
        while (i7 < width && bitMatrix.get(i7, i2) && crossCheckStateCount[4] < i3) {
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i7++;
        }
        if (crossCheckStateCount[4] >= i3 || Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + crossCheckStateCount[4]) - i4) * 5 >= i4 || !foundPatternCross(crossCheckStateCount)) {
            return Float.NaN;
        }
        return centerFromEnd(crossCheckStateCount, i7);
    }

    private float crossCheckVertical(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i2, i5)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i5--;
        }
        int i6 = i5;
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i6 >= 0 && !bitMatrix.get(i2, i6) && crossCheckStateCount[1] <= i3) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i6--;
        }
        if (i6 < 0 || crossCheckStateCount[1] > i3) {
            return Float.NaN;
        }
        while (i6 >= 0 && bitMatrix.get(i2, i6) && crossCheckStateCount[0] <= i3) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i6--;
        }
        if (crossCheckStateCount[0] > i3) {
            return Float.NaN;
        }
        int i7 = i + 1;
        while (i7 < height && bitMatrix.get(i2, i7)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i7++;
        }
        int i8 = i7;
        if (i7 == height) {
            return Float.NaN;
        }
        while (i8 < height && !bitMatrix.get(i2, i8) && crossCheckStateCount[3] < i3) {
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i8++;
        }
        if (i8 == height || crossCheckStateCount[3] >= i3) {
            return Float.NaN;
        }
        while (i8 < height && bitMatrix.get(i2, i8) && crossCheckStateCount[4] < i3) {
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i8++;
        }
        if (crossCheckStateCount[4] >= i3 || Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + crossCheckStateCount[4]) - i4) * 5 >= i4 * 2 || !foundPatternCross(crossCheckStateCount)) {
            return Float.NaN;
        }
        return centerFromEnd(crossCheckStateCount, i8);
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    public static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    public static boolean foundPatternDiagonal(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 1.333f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    private int[] getCrossCheckStateCount() {
        clearCounts(this.crossCheckStateCount);
        return this.crossCheckStateCount;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int size = this.possibleCenters.size();
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i++;
                f2 += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i < 3) {
            return false;
        }
        float f3 = f2 / size;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            f += Math.abs(finderPattern2.getEstimatedModuleSize() - f3);
        }
        return f <= f2 * 0.05f;
    }

    private FinderPattern[] selectBestPatterns() {
        float f;
        float f2;
        float f3;
        int size = this.possibleCenters.size();
        if (size >= 3) {
            if (size > 3) {
                Iterator<FinderPattern> it = this.possibleCenters.iterator();
                float f4 = 0.0f;
                float f5 = 0.0f;
                while (true) {
                    f2 = f5;
                    if (!it.hasNext()) {
                        break;
                    }
                    float estimatedModuleSize = it.next().getEstimatedModuleSize();
                    f4 += estimatedModuleSize;
                    f5 = f2 + (estimatedModuleSize * estimatedModuleSize);
                }
                float f6 = f4 / size;
                float sqrt = (float) Math.sqrt((f2 / f3) - (f6 * f6));
                Collections.sort(this.possibleCenters, new FurthestFromAverageComparator(f6));
                float max = Math.max(0.2f * f6, sqrt);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this.possibleCenters.size() || this.possibleCenters.size() <= 3) {
                        break;
                    }
                    int i3 = i2;
                    if (Math.abs(this.possibleCenters.get(i2).getEstimatedModuleSize() - f6) > max) {
                        this.possibleCenters.remove(i2);
                        i3 = i2 - 1;
                    }
                    i = i3 + 1;
                }
            }
            if (this.possibleCenters.size() > 3) {
                Iterator<FinderPattern> it2 = this.possibleCenters.iterator();
                float f7 = 0.0f;
                while (true) {
                    f = f7;
                    if (!it2.hasNext()) {
                        break;
                    }
                    f7 = f + it2.next().getEstimatedModuleSize();
                }
                Collections.sort(this.possibleCenters, new CenterComparator(f / this.possibleCenters.size()));
                List<FinderPattern> list = this.possibleCenters;
                list.subList(3, list.size()).clear();
            }
            return new FinderPattern[]{this.possibleCenters.get(0), this.possibleCenters.get(1), this.possibleCenters.get(2)};
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final void clearCounts(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    public final FinderPatternInfo find(Map<DecodeHintType, ?> map) {
        boolean z;
        int i;
        boolean z2 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i2 = (height * 3) / 388;
        if (i2 < 3 || z2) {
            i2 = 3;
        }
        int[] iArr = new int[5];
        int i3 = i2 - 1;
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            if (i3 >= height || z4) {
                break;
            }
            clearCounts(iArr);
            int i4 = 0;
            int i5 = 0;
            while (i4 < width) {
                if (this.image.get(i4, i3)) {
                    int i6 = i5;
                    if ((i5 & 1) == 1) {
                        i6 = i5 + 1;
                    }
                    iArr[i6] = iArr[i6] + 1;
                    i5 = i6;
                } else if ((i5 & 1) != 0) {
                    iArr[i5] = iArr[i5] + 1;
                } else if (i5 != 4) {
                    i5++;
                    iArr[i5] = iArr[i5] + 1;
                } else if (!foundPatternCross(iArr) || !handlePossibleCenter(iArr, i3, i4)) {
                    shiftCounts2(iArr);
                    i5 = 3;
                } else {
                    if (this.hasSkipped) {
                        z = haveMultiplyConfirmedCenters();
                        i = i3;
                    } else {
                        int findRowSkip = findRowSkip();
                        i = i3;
                        z = z4;
                        if (findRowSkip > iArr[2]) {
                            i = i3 + ((findRowSkip - iArr[2]) - 2);
                            i4 = width - 1;
                            z = z4;
                        }
                    }
                    clearCounts(iArr);
                    i2 = 2;
                    i3 = i;
                    z4 = z;
                    i5 = 0;
                }
                i4++;
            }
            int i7 = i2;
            boolean z5 = z4;
            if (foundPatternCross(iArr)) {
                i7 = i2;
                z5 = z4;
                if (handlePossibleCenter(iArr, i3, width)) {
                    int i8 = iArr[0];
                    i7 = i8;
                    z5 = z4;
                    if (this.hasSkipped) {
                        z5 = haveMultiplyConfirmedCenters();
                        i7 = i8;
                    }
                }
            }
            i3 += i7;
            i2 = i7;
            z3 = z5;
        }
        FinderPattern[] selectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(selectBestPatterns);
        return new FinderPatternInfo(selectBestPatterns);
    }

    public final BitMatrix getImage() {
        return this.image;
    }

    public final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    public final boolean handlePossibleCenter(int[] iArr, int i, int i2) {
        boolean z;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int centerFromEnd = (int) centerFromEnd(iArr, i2);
        float crossCheckVertical = crossCheckVertical(i, centerFromEnd, iArr[2], i3);
        if (!Float.isNaN(crossCheckVertical)) {
            int i4 = (int) crossCheckVertical;
            float crossCheckHorizontal = crossCheckHorizontal(centerFromEnd, i4, iArr[2], i3);
            if (Float.isNaN(crossCheckHorizontal) || !crossCheckDiagonal(i4, (int) crossCheckHorizontal)) {
                return false;
            }
            float f = i3 / 7.0f;
            int i5 = 0;
            while (true) {
                z = false;
                if (i5 >= this.possibleCenters.size()) {
                    break;
                }
                FinderPattern finderPattern = this.possibleCenters.get(i5);
                if (finderPattern.aboutEquals(f, crossCheckVertical, crossCheckHorizontal)) {
                    this.possibleCenters.set(i5, finderPattern.combineEstimate(crossCheckVertical, crossCheckHorizontal, f));
                    z = true;
                    break;
                }
                i5++;
            }
            if (z) {
                return true;
            }
            ResultPoint finderPattern2 = new FinderPattern(crossCheckHorizontal, crossCheckVertical, f);
            this.possibleCenters.add(finderPattern2);
            ResultPointCallback resultPointCallback = this.resultPointCallback;
            if (resultPointCallback == null) {
                return true;
            }
            resultPointCallback.foundPossibleResultPoint(finderPattern2);
            return true;
        }
        return false;
    }

    @Deprecated
    public final boolean handlePossibleCenter(int[] iArr, int i, int i2, boolean z) {
        return handlePossibleCenter(iArr, i, i2);
    }

    public final void shiftCounts2(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }
}
