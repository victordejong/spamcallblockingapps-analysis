package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder.class */
final class MultiFinderPatternFinder extends FinderPatternFinder {
    private static final float DIFF_MODSIZE_CUTOFF = 0.5f;
    private static final float DIFF_MODSIZE_CUTOFF_PERCENT = 0.05f;
    private static final FinderPatternInfo[] EMPTY_RESULT_ARRAY = new FinderPatternInfo[0];
    private static final float MAX_MODULE_COUNT_PER_EDGE = 180.0f;
    private static final float MIN_MODULE_COUNT_PER_EDGE = 9.0f;

    /* loaded from: classes2-dex2jar.jar:com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator.class */
    public static final class ModuleSizeComparator implements Serializable, Comparator<FinderPattern> {
        private ModuleSizeComparator() {
        }

        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            double estimatedModuleSize = finderPattern2.getEstimatedModuleSize() - finderPattern.getEstimatedModuleSize();
            if (estimatedModuleSize < 0.0d) {
                return -1;
            }
            return estimatedModuleSize > 0.0d ? 1 : 0;
        }
    }

    MultiFinderPatternFinder(BitMatrix bitMatrix) {
        super(bitMatrix);
    }

    public MultiFinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        super(bitMatrix, resultPointCallback);
    }

    /* JADX WARN: Type inference failed for: r0v99, types: [com.google.zxing.qrcode.detector.FinderPattern[], com.google.zxing.qrcode.detector.FinderPattern[][]] */
    private FinderPattern[][] selectMutipleBestPatterns() throws NotFoundException {
        List<FinderPattern> possibleCenters = getPossibleCenters();
        int size = possibleCenters.size();
        if (size >= 3) {
            if (size == 3) {
                return new FinderPattern[]{new FinderPattern[]{possibleCenters.get(0), possibleCenters.get(1), possibleCenters.get(2)}};
            }
            Collections.sort(possibleCenters, new ModuleSizeComparator());
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < size - 2; i++) {
                FinderPattern finderPattern = possibleCenters.get(i);
                if (finderPattern != null) {
                    for (int i2 = i + 1; i2 < size - 1; i2++) {
                        FinderPattern finderPattern2 = possibleCenters.get(i2);
                        if (finderPattern2 != null) {
                            float estimatedModuleSize = (finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) / Math.min(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
                            if (Math.abs(finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) <= 0.5f || estimatedModuleSize < DIFF_MODSIZE_CUTOFF_PERCENT) {
                                for (int i3 = i2 + 1; i3 < size; i3++) {
                                    FinderPattern finderPattern3 = possibleCenters.get(i3);
                                    if (finderPattern3 != null) {
                                        float estimatedModuleSize2 = (finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) / Math.min(finderPattern2.getEstimatedModuleSize(), finderPattern3.getEstimatedModuleSize());
                                        if (Math.abs(finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) <= 0.5f || estimatedModuleSize2 < DIFF_MODSIZE_CUTOFF_PERCENT) {
                                            FinderPattern[] finderPatternArr = {finderPattern, finderPattern2, finderPattern3};
                                            ResultPoint.orderBestPatterns(finderPatternArr);
                                            FinderPatternInfo finderPatternInfo = new FinderPatternInfo(finderPatternArr);
                                            float distance = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getBottomLeft());
                                            float distance2 = ResultPoint.distance(finderPatternInfo.getTopRight(), finderPatternInfo.getBottomLeft());
                                            float distance3 = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getTopRight());
                                            float estimatedModuleSize3 = (distance + distance3) / (finderPattern.getEstimatedModuleSize() * 2.0f);
                                            if (estimatedModuleSize3 <= 180.0f && estimatedModuleSize3 >= MIN_MODULE_COUNT_PER_EDGE && Math.abs((distance - distance3) / Math.min(distance, distance3)) < 0.1f) {
                                                float sqrt = (float) Math.sqrt((distance * distance) + (distance3 * distance3));
                                                if (Math.abs((distance2 - sqrt) / Math.min(distance2, sqrt)) < 0.1f) {
                                                    arrayList.add(finderPatternArr);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                throw NotFoundException.getNotFoundInstance();
            }
            return (FinderPattern[][]) arrayList.toArray(new FinderPattern[arrayList.size()]);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public FinderPatternInfo[] findMulti(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        BitMatrix image = getImage();
        int height = image.getHeight();
        int width = image.getWidth();
        int i = (height * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        int i2 = i - 1;
        while (true) {
            int i3 = i2;
            if (i3 >= height) {
                break;
            }
            clearCounts(iArr);
            int i4 = 0;
            for (int i5 = 0; i5 < width; i5++) {
                if (image.get(i5, i3)) {
                    int i6 = i4;
                    if ((i4 & 1) == 1) {
                        i6 = i4 + 1;
                    }
                    iArr[i6] = iArr[i6] + 1;
                    i4 = i6;
                } else if ((i4 & 1) != 0) {
                    iArr[i4] = iArr[i4] + 1;
                } else if (i4 != 4) {
                    i4++;
                    iArr[i4] = iArr[i4] + 1;
                } else if (!foundPatternCross(iArr) || !handlePossibleCenter(iArr, i3, i5)) {
                    shiftCounts2(iArr);
                    i4 = 3;
                } else {
                    clearCounts(iArr);
                    i4 = 0;
                }
            }
            if (foundPatternCross(iArr)) {
                handlePossibleCenter(iArr, i3, width);
            }
            i2 = i3 + i;
        }
        FinderPattern[][] selectMutipleBestPatterns = selectMutipleBestPatterns();
        ArrayList arrayList = new ArrayList();
        for (FinderPattern[] finderPatternArr : selectMutipleBestPatterns) {
            ResultPoint.orderBestPatterns(finderPatternArr);
            arrayList.add(new FinderPatternInfo(finderPatternArr));
        }
        return arrayList.isEmpty() ? EMPTY_RESULT_ARRAY : (FinderPatternInfo[]) arrayList.toArray(new FinderPatternInfo[arrayList.size()]);
    }
}
