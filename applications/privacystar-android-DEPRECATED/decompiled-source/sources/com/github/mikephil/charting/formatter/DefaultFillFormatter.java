package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/formatter/DefaultFillFormatter.class */
public class DefaultFillFormatter implements IFillFormatter {
    @Override // com.github.mikephil.charting.formatter.IFillFormatter
    public float getFillLinePosition(ILineDataSet iLineDataSet, LineDataProvider lineDataProvider) {
        r9 = lineDataProvider.getYChartMax();
        float yChartMin = lineDataProvider.getYChartMin();
        LineData lineData = lineDataProvider.getLineData();
        yChartMin = 0.0f;
        if (iLineDataSet.getYMax() <= 0.0f || iLineDataSet.getYMin() >= 0.0f) {
            if (lineData.getYMax() > 0.0f) {
                yChartMin = 0.0f;
            }
            if (lineData.getYMin() < 0.0f) {
                yChartMin = 0.0f;
            }
            if (iLineDataSet.getYMin() >= 0.0f) {
            }
        }
        return yChartMin;
    }
}
