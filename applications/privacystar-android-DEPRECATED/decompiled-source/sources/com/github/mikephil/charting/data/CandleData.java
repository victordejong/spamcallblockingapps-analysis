package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.ICandleDataSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/CandleData.class */
public class CandleData extends BarLineScatterCandleBubbleData<ICandleDataSet> {
    public CandleData() {
    }

    public CandleData(List<ICandleDataSet> list) {
        super(list);
    }

    public CandleData(ICandleDataSet... iCandleDataSetArr) {
        super(iCandleDataSetArr);
    }
}
