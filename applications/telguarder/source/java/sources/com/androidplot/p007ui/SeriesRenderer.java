package com.androidplot.p007ui;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import com.androidplot.Plot;
import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.androidplot.ui.SeriesRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/SeriesRenderer.class */
public abstract class SeriesRenderer<PlotType extends Plot, SeriesType extends Series, SeriesFormatterType extends Formatter> {
    private PlotType plot;

    public SeriesRenderer(PlotType plottype) {
        this.plot = plottype;
    }

    protected abstract void doDrawLegendIcon(Canvas canvas, RectF rectF, SeriesFormatterType seriesformattertype);

    public void drawSeriesLegendIcon(Canvas canvas, RectF rectF, SeriesFormatterType seriesformattertype) {
        try {
            canvas.save();
            canvas.clipRect(rectF, Region.Op.INTERSECT);
            doDrawLegendIcon(canvas, rectF, seriesformattertype);
        } finally {
            canvas.restore();
        }
    }

    public SeriesFormatterType getFormatter(SeriesType seriestype) {
        return (SeriesFormatterType) this.plot.getFormatter(seriestype, getClass());
    }

    public PlotType getPlot() {
        return this.plot;
    }

    public List<SeriesBundle<SeriesType, ? extends SeriesFormatterType>> getSeriesAndFormatterList() {
        ArrayList arrayList = new ArrayList();
        for (SeriesBundle seriesBundle : getPlot().getRegistry().getSeriesAndFormatterList()) {
            if (seriesBundle.rendersWith(this)) {
                arrayList.add(seriesBundle);
            }
        }
        return arrayList;
    }

    public List<SeriesType> getSeriesList() {
        ArrayList arrayList = new ArrayList();
        for (SeriesBundle seriesBundle : getPlot().getRegistry().getSeriesAndFormatterList()) {
            if (seriesBundle.rendersWith(this)) {
                arrayList.add(seriesBundle.getSeries());
            }
        }
        return arrayList;
    }

    protected abstract void onRender(Canvas canvas, RectF rectF, SeriesType seriestype, SeriesFormatterType seriesformattertype, RenderStack renderStack);

    public void render(Canvas canvas, RectF rectF, SeriesBundle<SeriesType, SeriesFormatterType> seriesBundle, RenderStack renderStack) {
        onRender(canvas, rectF, seriesBundle.getSeries(), seriesBundle.getFormatter(), renderStack);
    }

    public void setPlot(PlotType plottype) {
        this.plot = plottype;
    }
}
