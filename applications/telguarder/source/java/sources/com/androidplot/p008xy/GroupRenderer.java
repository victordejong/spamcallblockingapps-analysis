package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.util.Log;
import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p008xy.XYSeriesFormatter;
import java.util.List;
/* renamed from: com.androidplot.xy.GroupRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/GroupRenderer.class */
public abstract class GroupRenderer<FormatterType extends XYSeriesFormatter<XYRegionFormatter>> extends XYSeriesRenderer<XYSeries, FormatterType> {
    private static final String TAG = "com.androidplot.xy.GroupRenderer";

    public GroupRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.SeriesRenderer
    protected /* bridge */ /* synthetic */ void onRender(Canvas canvas, RectF rectF, Series series, Formatter formatter, RenderStack renderStack) {
        onRender(canvas, rectF, (XYSeries) series, (XYSeries) ((XYSeriesFormatter) formatter), renderStack);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onRender(Canvas canvas, RectF rectF, XYSeries xYSeries, FormatterType formattertype, RenderStack renderStack) {
        List seriesAndFormatterList = getSeriesAndFormatterList();
        if (seriesAndFormatterList == null) {
            return;
        }
        int size = ((XYSeries) ((SeriesBundle) seriesAndFormatterList.get(0)).getSeries()).size();
        for (int i = 1; i < seriesAndFormatterList.size(); i++) {
            if (((XYSeries) ((SeriesBundle) seriesAndFormatterList.get(i)).getSeries()).size() != size) {
                Log.w(TAG, getClass() + ": not all associated series are of same size.");
                return;
            }
        }
        renderStack.disable(getClass());
        onRender(canvas, rectF, seriesAndFormatterList, size, renderStack);
    }

    public abstract void onRender(Canvas canvas, RectF rectF, List<SeriesBundle<XYSeries, ? extends FormatterType>> list, int i, RenderStack renderStack);
}
