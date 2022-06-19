package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.qrcode.detector.FinderPattern;
import java.io.Serializable;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator.class */
public final class MultiFinderPatternFinder$ModuleSizeComparator implements Serializable, Comparator<FinderPattern> {
    private MultiFinderPatternFinder$ModuleSizeComparator() {
    }

    public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
        double estimatedModuleSize = finderPattern2.getEstimatedModuleSize() - finderPattern.getEstimatedModuleSize();
        if (estimatedModuleSize < 0.0d) {
            return -1;
        }
        return estimatedModuleSize > 0.0d ? 1 : 0;
    }
}
