package com.androidplot.p008xy;

import com.androidplot.p007ui.SeriesRenderer;
/* renamed from: com.androidplot.xy.StepFormatter */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/StepFormatter.class */
public class StepFormatter extends LineAndPointFormatter {
    public StepFormatter() {
    }

    public StepFormatter(Integer num, Integer num2) {
        initLinePaint(num);
        initFillPaint(num2);
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter
    public SeriesRenderer doGetRendererInstance(XYPlot xYPlot) {
        return new StepRenderer(xYPlot);
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter, com.androidplot.p007ui.Formatter
    public Class<? extends SeriesRenderer> getRendererClass() {
        return StepRenderer.class;
    }
}
