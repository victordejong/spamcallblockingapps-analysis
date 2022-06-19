package com.androidplot.p008xy;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.core.internal.view.SupportMenu;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesRenderer;
/* renamed from: com.androidplot.xy.AdvancedLineAndPointRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/AdvancedLineAndPointRenderer.class */
public class AdvancedLineAndPointRenderer extends XYSeriesRenderer<XYSeries, Formatter> {
    private int latestIndex;

    /* renamed from: com.androidplot.xy.AdvancedLineAndPointRenderer$Formatter */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/AdvancedLineAndPointRenderer$Formatter.class */
    public static class Formatter extends XYSeriesFormatter<XYRegionFormatter> {
        private static final int DEFAULT_STROKE_WIDTH = 3;
        private Paint linePaint;

        public Formatter() {
            Paint paint = new Paint();
            this.linePaint = paint;
            paint.setStrokeWidth(3.0f);
            this.linePaint.setColor(SupportMenu.CATEGORY_MASK);
        }

        public Formatter(Context context, int i) {
            this();
            configure(context, i);
        }

        public AdvancedLineAndPointRenderer doGetRendererInstance(XYPlot xYPlot) {
            return new AdvancedLineAndPointRenderer(xYPlot);
        }

        public Paint getLinePaint() {
            return this.linePaint;
        }

        public Paint getLinePaint(int i, int i2, int i3) {
            return getLinePaint();
        }

        @Override // com.androidplot.p007ui.Formatter
        public Class<? extends SeriesRenderer> getRendererClass() {
            return AdvancedLineAndPointRenderer.class;
        }

        public void setLinePaint(Paint paint) {
            this.linePaint = paint;
        }
    }

    public AdvancedLineAndPointRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    public void doDrawLegendIcon(Canvas canvas, RectF rectF, Formatter formatter) {
        if (formatter.getLinePaint() != null) {
            canvas.drawLine(rectF.left, rectF.bottom, rectF.right, rectF.top, formatter.getLinePaint());
        }
    }

    public void onRender(Canvas canvas, RectF rectF, XYSeries xYSeries, Formatter formatter, RenderStack renderStack) {
        int i = 0;
        PointF pointF = null;
        while (true) {
            PointF pointF2 = pointF;
            if (i < xYSeries.size()) {
                Number y = xYSeries.getY(i);
                Number x = xYSeries.getX(i);
                PointF transformScreen = (y == null || x == null) ? null : getPlot().getBounds().transformScreen(x, y, rectF);
                if (formatter.getLinePaint() != null && transformScreen != null && pointF2 != null) {
                    canvas.drawLine(pointF2.x, pointF2.y, transformScreen.x, transformScreen.y, formatter.getLinePaint(i, this.latestIndex, xYSeries.size()));
                }
                i++;
                pointF = transformScreen;
            } else {
                return;
            }
        }
    }

    public void setLatestIndex(int i) {
        this.latestIndex = i;
    }
}
