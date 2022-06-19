package com.androidplot.pie;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.TableModel;
import com.androidplot.p007ui.widget.LegendWidget;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieLegendWidget.class */
public class PieLegendWidget extends LegendWidget<PieLegendItem> {
    private PieChart pieChart;

    public PieLegendWidget(LayoutManager layoutManager, PieChart pieChart, Size size, TableModel tableModel, Size size2) {
        super(tableModel, layoutManager, size, size2);
        this.pieChart = pieChart;
    }

    public void drawIcon(Canvas canvas, RectF rectF, PieLegendItem pieLegendItem) {
        canvas.drawRect(rectF, pieLegendItem.formatter.getFillPaint());
    }

    @Override // com.androidplot.p007ui.widget.LegendWidget
    protected List<PieLegendItem> getLegendItems() {
        ArrayList arrayList = new ArrayList();
        for (SeriesBundle<Segment, SegmentFormatter> seriesBundle : this.pieChart.getRegistry().getLegendEnabledItems()) {
            arrayList.add(new PieLegendItem(seriesBundle.getSeries(), seriesBundle.getFormatter()));
        }
        return arrayList;
    }
}
