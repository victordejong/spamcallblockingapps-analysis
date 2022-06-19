package com.androidplot.p008xy;
/* renamed from: com.androidplot.xy.ZoomEstimator */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/ZoomEstimator.class */
public class ZoomEstimator extends Estimator {
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    protected double calculateZoom(SampledXYSeries sampledXYSeries, RectRegion rectRegion) {
        char abs = Math.abs(Math.round(sampledXYSeries.getMaxZoomFactor() / sampledXYSeries.getBounds().getxRegion().ratio(rectRegion.getxRegion()).doubleValue()));
        if (abs <= 0.0d) {
            abs = 0;
        }
        return abs;
    }

    @Override // com.androidplot.p008xy.Estimator
    public void run(XYPlot xYPlot, XYSeriesBundle xYSeriesBundle) {
        if (xYSeriesBundle.getSeries() instanceof SampledXYSeries) {
            SampledXYSeries sampledXYSeries = (SampledXYSeries) xYSeriesBundle.getSeries();
            sampledXYSeries.setZoomFactor(calculateZoom(sampledXYSeries, xYPlot.getBounds()));
        }
    }
}
