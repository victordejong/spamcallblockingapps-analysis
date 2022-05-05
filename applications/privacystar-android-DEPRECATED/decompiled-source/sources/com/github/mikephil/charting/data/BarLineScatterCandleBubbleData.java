package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/BarLineScatterCandleBubbleData.class */
public abstract class BarLineScatterCandleBubbleData<T extends IBarLineScatterCandleBubbleDataSet<? extends Entry>> extends ChartData<T> {
    public BarLineScatterCandleBubbleData() {
    }

    public BarLineScatterCandleBubbleData(List<T> list) {
        super(list);
    }

    public BarLineScatterCandleBubbleData(T... tArr) {
        super(tArr);
    }
}
