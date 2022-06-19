package com.androidplot.pie;

import com.androidplot.SeriesRegistry;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/SegmentRegistry.class */
public class SegmentRegistry extends SeriesRegistry<SegmentBundle, Segment, SegmentFormatter> {
    public SegmentBundle newSeriesBundle(Segment segment, SegmentFormatter segmentFormatter) {
        return new SegmentBundle(segment, segmentFormatter);
    }
}
