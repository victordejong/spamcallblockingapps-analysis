package com.github.mikephil.charting.interfaces.dataprovider;

import com.github.mikephil.charting.data.CombinedData;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider.class */
public interface CombinedDataProvider extends LineDataProvider, BarDataProvider, BubbleDataProvider, CandleDataProvider, ScatterDataProvider {
    CombinedData getCombinedData();
}
