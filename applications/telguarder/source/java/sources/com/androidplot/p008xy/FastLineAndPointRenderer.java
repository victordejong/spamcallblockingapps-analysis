package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.RectF;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesRenderer;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.androidplot.xy.FastLineAndPointRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/FastLineAndPointRenderer.class */
public class FastLineAndPointRenderer extends XYSeriesRenderer<XYSeries, Formatter> {
    private static final int MINIMUM_NUMBER_OF_POINTS_TO_DEFINE_A_LINE = 4;
    private float[] points;
    List<Integer> segmentOffsets = new ArrayList();
    List<Integer> segmentLengths = new ArrayList();

    /* renamed from: com.androidplot.xy.FastLineAndPointRenderer$Formatter */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/FastLineAndPointRenderer$Formatter.class */
    public static class Formatter extends LineAndPointFormatter {
        public Formatter(Integer num, Integer num2, PointLabelFormatter pointLabelFormatter) {
            super(num, num2, null, pointLabelFormatter);
        }

        @Override // com.androidplot.p008xy.LineAndPointFormatter
        public SeriesRenderer doGetRendererInstance(XYPlot xYPlot) {
            return new FastLineAndPointRenderer(xYPlot);
        }

        @Override // com.androidplot.p008xy.LineAndPointFormatter, com.androidplot.p007ui.Formatter
        public Class<? extends SeriesRenderer> getRendererClass() {
            return FastLineAndPointRenderer.class;
        }

        @Override // com.androidplot.p008xy.LineAndPointFormatter
        public void initLinePaint(Integer num) {
            super.initLinePaint(num);
            getLinePaint().setAntiAlias(false);
        }
    }

    public FastLineAndPointRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    public void doDrawLegendIcon(Canvas canvas, RectF rectF, Formatter formatter) {
        if (formatter.hasLinePaint()) {
            canvas.drawLine(rectF.left, rectF.bottom, rectF.right, rectF.top, formatter.getLinePaint());
        }
        if (formatter.hasVertexPaint()) {
            canvas.drawPoint(rectF.centerX(), rectF.centerY(), formatter.getVertexPaint());
        }
    }

    protected void drawSegment(Canvas canvas, float[] fArr, int i, int i2, Formatter formatter) {
        if (formatter.linePaint != null && i2 >= 4) {
            if ((i2 & 2) != 0) {
                int i3 = i2 - 2;
                canvas.drawLines(fArr, i, i3, formatter.linePaint);
                canvas.drawLines(fArr, i + 2, i3, formatter.linePaint);
            } else {
                canvas.drawLines(fArr, i, i2, formatter.linePaint);
                canvas.drawLines(fArr, i + 2, i2 - 4, formatter.linePaint);
            }
        }
        if (formatter.vertexPaint != null) {
            canvas.drawPoints(fArr, i, i2, formatter.vertexPaint);
        }
    }

    public void onRender(Canvas canvas, RectF rectF, XYSeries xYSeries, Formatter formatter, RenderStack renderStack) {
        int i;
        boolean z;
        this.segmentOffsets.clear();
        this.segmentLengths.clear();
        int size = xYSeries.size();
        float[] fArr = this.points;
        if (fArr == null || fArr.length != size * 2) {
            this.points = new float[xYSeries.size() * 2];
        }
        PointF pointF = new PointF();
        int i2 = 0;
        int i3 = 0;
        boolean z2 = true;
        int i4 = 0;
        while (i2 < xYSeries.size()) {
            Number y = xYSeries.getY(i2);
            Number x = xYSeries.getX(i2);
            if (y == null || x == null) {
                i = i3;
                z = z2;
                if (!z2) {
                    this.segmentLengths.add(Integer.valueOf(i3));
                    z = true;
                    i = i3;
                }
            } else {
                int i5 = i3;
                boolean z3 = z2;
                if (z2) {
                    this.segmentOffsets.add(Integer.valueOf(i4));
                    i5 = 0;
                    z3 = false;
                }
                getPlot().getBounds().transformScreen(pointF, x, y, rectF);
                this.points[i4] = pointF.x;
                this.points[i4 + 1] = pointF.y;
                int i6 = i5 + 2;
                i = i6;
                z = z3;
                if (i2 == xYSeries.size() - 1) {
                    this.segmentLengths.add(Integer.valueOf(i6));
                    i = i6;
                    z = z3;
                }
            }
            i2++;
            i4 += 2;
            i3 = i;
            z2 = z;
        }
        int i7 = 0;
        if (formatter.linePaint == null) {
            if (formatter.vertexPaint == null) {
                return;
            }
            i7 = 0;
        }
        while (i7 < this.segmentOffsets.size()) {
            drawSegment(canvas, this.points, this.segmentOffsets.get(i7).intValue(), this.segmentLengths.get(i7).intValue(), formatter);
            i7++;
        }
    }
}
