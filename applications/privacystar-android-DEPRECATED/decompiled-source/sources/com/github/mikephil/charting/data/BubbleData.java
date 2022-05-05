package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/BubbleData.class */
public class BubbleData extends BarLineScatterCandleBubbleData<IBubbleDataSet> {
    public BubbleData() {
    }

    public BubbleData(List<IBubbleDataSet> list) {
        super(list);
    }

    public BubbleData(IBubbleDataSet... iBubbleDataSetArr) {
        super(iBubbleDataSetArr);
    }

    public void setHighlightCircleWidth(float f) {
        for (T t : this.mDataSets) {
            t.setHighlightCircleWidth(f);
        }
    }
}
