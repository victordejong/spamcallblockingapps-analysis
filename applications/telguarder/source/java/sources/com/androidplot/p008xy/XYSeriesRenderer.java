package com.androidplot.p008xy;

import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p007ui.SeriesRenderer;
import com.androidplot.p008xy.XYSeries;
import com.androidplot.p008xy.XYSeriesFormatter;
import java.util.Hashtable;
import java.util.Iterator;
/* renamed from: com.androidplot.xy.XYSeriesRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYSeriesRenderer.class */
public abstract class XYSeriesRenderer<SeriesType extends XYSeries, XYFormatterType extends XYSeriesFormatter> extends SeriesRenderer<XYPlot, SeriesType, XYFormatterType> {
    public XYSeriesRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    public Hashtable<XYRegionFormatter, String> getUniqueRegionFormatters() {
        Hashtable<XYRegionFormatter, String> hashtable = new Hashtable<>();
        Iterator it = getSeriesAndFormatterList().iterator();
        while (it.hasNext()) {
            SeriesBundle seriesBundle = (SeriesBundle) it.next();
            for (RectRegion rectRegion : ((XYSeriesFormatter) seriesBundle.getFormatter()).getRegions().elements()) {
                hashtable.put(((XYSeriesFormatter) seriesBundle.getFormatter()).getRegionFormatter(rectRegion), rectRegion.getLabel());
            }
        }
        return hashtable;
    }
}
