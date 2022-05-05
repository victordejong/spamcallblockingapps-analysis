package com.github.mikephil.charting.interfaces.dataprovider;

import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.LineData;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/interfaces/dataprovider/LineDataProvider.class */
public interface LineDataProvider extends BarLineScatterCandleBubbleDataProvider {
    YAxis getAxis(YAxis.AxisDependency axisDependency);

    LineData getLineData();
}
