package com.androidplot.p008xy;

import com.androidplot.SeriesRegistry;
/* renamed from: com.androidplot.xy.XYSeriesRegistry */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYSeriesRegistry.class */
public class XYSeriesRegistry extends SeriesRegistry<XYSeriesBundle, XYSeries, XYSeriesFormatter> {
    private Estimator estimator;

    public void estimate(XYPlot xYPlot) {
        if (this.estimator != null) {
            for (XYSeriesBundle xYSeriesBundle : getSeriesAndFormatterList()) {
                getEstimator().run(xYPlot, xYSeriesBundle);
            }
        }
    }

    public Estimator getEstimator() {
        return this.estimator;
    }

    public XYSeriesBundle newSeriesBundle(XYSeries xYSeries, XYSeriesFormatter xYSeriesFormatter) {
        return new XYSeriesBundle(xYSeries, xYSeriesFormatter);
    }

    public void setEstimator(Estimator estimator) {
        this.estimator = estimator;
    }
}
