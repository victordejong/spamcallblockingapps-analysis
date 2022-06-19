package com.androidplot.p008xy;

import android.graphics.Path;
import android.graphics.PointF;
/* renamed from: com.androidplot.xy.StepRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/StepRenderer.class */
public class StepRenderer extends LineAndPointRenderer<StepFormatter> {
    public StepRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    @Override // com.androidplot.p008xy.LineAndPointRenderer
    protected void appendToPath(Path path, PointF pointF, PointF pointF2) {
        path.lineTo(pointF.x, pointF2.y);
        path.lineTo(pointF.x, pointF.y);
    }
}
