package com.androidplot.pie;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.widget.Widget;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieWidget.class */
public class PieWidget extends Widget {
    private PieChart pieChart;
    private RenderStack<? extends Segment, ? extends SegmentFormatter> renderStack;

    public PieWidget(LayoutManager layoutManager, PieChart pieChart, Size size) {
        super(layoutManager, size);
        this.pieChart = pieChart;
        this.renderStack = new RenderStack<>(pieChart);
    }

    @Override // com.androidplot.p007ui.widget.Widget
    protected void doOnDraw(Canvas canvas, RectF rectF) {
        this.renderStack.sync();
        Iterator<RenderStack<SeriesType, FormatterType>.StackElement<? extends Segment, ? extends SegmentFormatter>> it = this.renderStack.getElements().iterator();
        while (it.hasNext()) {
            RenderStack<SeriesType, FormatterType>.StackElement<? extends Segment, ? extends SegmentFormatter> next = it.next();
            if (next.isEnabled()) {
                ((PieRenderer) this.pieChart.getRenderer(next.get().getFormatter().getRendererClass())).render(canvas, rectF, next.get(), this.renderStack);
            }
        }
    }
}
