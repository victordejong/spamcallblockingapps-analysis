package com.androidplot.p008xy;

import android.content.Context;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p008xy.XYRegionFormatter;
import com.androidplot.util.LayerHash;
import com.androidplot.util.Layerable;
/* renamed from: com.androidplot.xy.XYSeriesFormatter */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYSeriesFormatter.class */
public abstract class XYSeriesFormatter<XYRegionFormatterType extends XYRegionFormatter> extends Formatter<XYPlot> {
    private PointLabelFormatter pointLabelFormatter;
    private PointLabeler pointLabeler = new PointLabeler() { // from class: com.androidplot.xy.XYSeriesFormatter.1
        @Override // com.androidplot.p008xy.PointLabeler
        public String getLabel(XYSeries xYSeries, int i) {
            return String.valueOf(xYSeries.getY(i));
        }
    };
    LayerHash<RectRegion, XYRegionFormatterType> regions = new LayerHash<>();

    public XYSeriesFormatter() {
    }

    public XYSeriesFormatter(Context context, int i) {
        super(context, i);
    }

    public void addRegion(RectRegion rectRegion, XYRegionFormatterType xyregionformattertype) {
        this.regions.addToBottom(rectRegion, xyregionformattertype);
    }

    public PointLabelFormatter getPointLabelFormatter() {
        if (this.pointLabelFormatter == null) {
            this.pointLabelFormatter = new PointLabelFormatter();
        }
        return this.pointLabelFormatter;
    }

    public PointLabeler getPointLabeler() {
        return this.pointLabeler;
    }

    public XYRegionFormatterType getRegionFormatter(RectRegion rectRegion) {
        return this.regions.get(rectRegion);
    }

    public Layerable<RectRegion> getRegions() {
        return this.regions;
    }

    public boolean hasPointLabelFormatter() {
        return this.pointLabelFormatter != null;
    }

    public void removeRegion(RectRegion rectRegion) {
        this.regions.remove(rectRegion);
    }

    public void setPointLabelFormatter(PointLabelFormatter pointLabelFormatter) {
        this.pointLabelFormatter = pointLabelFormatter;
    }

    public void setPointLabeler(PointLabeler pointLabeler) {
        this.pointLabeler = pointLabeler;
    }
}
