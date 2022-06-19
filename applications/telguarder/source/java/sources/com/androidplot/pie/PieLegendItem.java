package com.androidplot.pie;

import com.androidplot.p007ui.widget.LegendItem;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieLegendItem.class */
public class PieLegendItem implements LegendItem {
    public SegmentFormatter formatter;
    public Segment segment;

    public PieLegendItem(Segment segment, SegmentFormatter segmentFormatter) {
        this.segment = segment;
        this.formatter = segmentFormatter;
    }

    @Override // com.androidplot.p007ui.widget.LegendItem
    public String getTitle() {
        return this.segment.getTitle();
    }
}
