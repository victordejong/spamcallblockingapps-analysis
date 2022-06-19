package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/rss/AbstractRSSReader.class */
public abstract class AbstractRSSReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.2f;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.45f;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters;
    private final int[] evenCounts;
    private final int[] oddCounts;
    private final int[] decodeFinderCounters = new int[4];
    private final float[] oddRoundingErrors = new float[4];
    private final float[] evenRoundingErrors = new float[4];

    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.dataCharacterCounters = iArr;
        this.oddCounts = new int[iArr.length / 2];
        this.evenCounts = new int[iArr.length / 2];
    }

    @Deprecated
    protected static int count(int[] iArr) {
        return MathUtils.sum(iArr);
    }

    public static void decrement(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        int i2 = 1;
        while (i2 < iArr.length) {
            float f2 = f;
            if (fArr[i2] < f) {
                f2 = fArr[i2];
                i = i2;
            }
            i2++;
            f = f2;
        }
        iArr[i] = iArr[i] - 1;
    }

    public static void increment(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        int i2 = 1;
        while (i2 < iArr.length) {
            float f2 = f;
            if (fArr[i2] > f) {
                f2 = fArr[i2];
                i = i2;
            }
            i2++;
            f = f2;
        }
        iArr[i] = iArr[i] + 1;
    }

    public static boolean isFinderPattern(int[] iArr) {
        int i;
        float f = (iArr[0] + iArr[1]) / ((iArr[2] + i) + iArr[3]);
        if (f < MIN_FINDER_PATTERN_RATIO || f > MAX_FINDER_PATTERN_RATIO) {
            return false;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int length = iArr.length;
        int i4 = 0;
        while (i4 < length) {
            int i5 = iArr[i4];
            int i6 = i3;
            if (i5 > i3) {
                i6 = i5;
            }
            int i7 = i2;
            if (i5 < i2) {
                i7 = i5;
            }
            i4++;
            i2 = i7;
            i3 = i6;
        }
        return i3 < i2 * 10;
    }

    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i = 0; i < iArr2.length; i++) {
            if (patternMatchVariance(iArr, iArr2[i], MAX_INDIVIDUAL_VARIANCE) < 0.2f) {
                return i;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    public final int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    public final int[] getEvenCounts() {
        return this.evenCounts;
    }

    public final float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    public final int[] getOddCounts() {
        return this.oddCounts;
    }

    public final float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }
}
