package com.androidplot.p007ui;

import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
/* renamed from: com.androidplot.ui.SeriesBundle */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/SeriesBundle.class */
public class SeriesBundle<SeriesType extends Series, FormatterType extends Formatter> {
    private final FormatterType formatter;
    private final SeriesType series;

    public SeriesBundle(SeriesType seriestype, FormatterType formattertype) {
        this.series = seriestype;
        this.formatter = formattertype;
    }

    public FormatterType getFormatter() {
        return this.formatter;
    }

    public SeriesType getSeries() {
        return this.series;
    }

    public boolean rendersWith(SeriesRenderer seriesRenderer) {
        return getFormatter().getRendererClass() == seriesRenderer.getClass();
    }
}
