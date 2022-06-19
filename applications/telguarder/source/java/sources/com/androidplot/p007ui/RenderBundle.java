package com.androidplot.p007ui;

import com.androidplot.Series;
import com.androidplot.p007ui.RenderBundle;
import com.androidplot.p008xy.XYSeriesFormatter;
/* renamed from: com.androidplot.ui.RenderBundle */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/RenderBundle.class */
public abstract class RenderBundle<RenderBundleType extends RenderBundle, SeriesType extends Series, SeriesFormatterType extends XYSeriesFormatter> {
    private SeriesFormatterType formatter;
    private Series series;

    public RenderBundle(SeriesType seriestype, SeriesFormatterType seriesformattertype) {
        this.formatter = seriesformattertype;
        this.series = seriestype;
    }

    public SeriesFormatterType getFormatter() {
        return this.formatter;
    }

    public Series getSeries() {
        return this.series;
    }

    public void setFormatter(SeriesFormatterType seriesformattertype) {
        this.formatter = seriesformattertype;
    }

    public void setSeries(Series series) {
        this.series = series;
    }
}
