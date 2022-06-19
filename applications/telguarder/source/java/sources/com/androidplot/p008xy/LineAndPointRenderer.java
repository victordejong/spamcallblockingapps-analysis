package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.androidplot.Plot;
import com.androidplot.PlotListener;
import com.androidplot.Region;
import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p008xy.LineAndPointFormatter;
import com.androidplot.p008xy.OrderedXYSeries;
import com.androidplot.util.SeriesUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.androidplot.xy.LineAndPointRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/LineAndPointRenderer.class */
public class LineAndPointRenderer<FormatterType extends LineAndPointFormatter> extends XYSeriesRenderer<XYSeries, FormatterType> {
    protected static final int ONE = 1;
    protected static final int ZERO = 0;
    private final Path path = new Path();
    protected final ConcurrentHashMap<XYSeries, ArrayList<PointF>> pointsCaches = new ConcurrentHashMap<>(2, 0.75f, 2);

    /* renamed from: com.androidplot.xy.LineAndPointRenderer$2 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/LineAndPointRenderer$2.class */
    public static /* synthetic */ class C07792 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$FillDirection;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[FillDirection.values().length];
            $SwitchMap$com$androidplot$xy$FillDirection = iArr;
            try {
                iArr[FillDirection.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$FillDirection[FillDirection.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$xy$FillDirection[FillDirection.RANGE_ORIGIN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public LineAndPointRenderer(XYPlot xYPlot) {
        super(xYPlot);
        xYPlot.addListener(new PlotListener() { // from class: com.androidplot.xy.LineAndPointRenderer.1
            @Override // com.androidplot.PlotListener
            public void onAfterDraw(Plot plot, Canvas canvas) {
            }

            @Override // com.androidplot.PlotListener
            public void onBeforeDraw(Plot plot, Canvas canvas) {
                LineAndPointRenderer.this.cullPointsCache();
            }
        });
    }

    protected void appendToPath(Path path, PointF pointF, PointF pointF2) {
        path.lineTo(pointF.x, pointF.y);
    }

    protected PointF convertPoint(XYCoords xYCoords, RectF rectF) {
        return getPlot().getBounds().transformScreen(xYCoords, rectF);
    }

    protected void cullPointsCache() {
        for (XYSeries xYSeries : this.pointsCaches.keySet()) {
            if (!getPlot().getRegistry().contains(xYSeries, LineAndPointFormatter.class)) {
                this.pointsCaches.remove(xYSeries);
            }
        }
    }

    public void doDrawLegendIcon(Canvas canvas, RectF rectF, LineAndPointFormatter lineAndPointFormatter) {
        float centerY = rectF.centerY();
        float centerX = rectF.centerX();
        if (lineAndPointFormatter.getFillPaint() != null) {
            canvas.drawRect(rectF, lineAndPointFormatter.getFillPaint());
        }
        if (lineAndPointFormatter.hasLinePaint()) {
            canvas.drawLine(rectF.left, rectF.bottom, rectF.right, rectF.top, lineAndPointFormatter.getLinePaint());
        }
        if (lineAndPointFormatter.hasVertexPaint()) {
            canvas.drawPoint(centerX, centerY, lineAndPointFormatter.getVertexPaint());
        }
    }

    protected void drawSeries(Canvas canvas, RectF rectF, XYSeries xYSeries, LineAndPointFormatter lineAndPointFormatter) {
        int i;
        PointF pointF;
        PointF pointF2;
        this.path.reset();
        ArrayList<PointF> pointsCache = getPointsCache(xYSeries);
        int size = xYSeries.size();
        if (SeriesUtils.getXYOrder(xYSeries) == OrderedXYSeries.XOrder.ASCENDING) {
            Region iBounds = SeriesUtils.iBounds(xYSeries, getPlot().getBounds());
            int intValue = iBounds.getMin().intValue();
            i = intValue;
            if (intValue > 0) {
                i = intValue - 1;
            }
            int intValue2 = iBounds.getMax().intValue() + 1;
            size = intValue2;
            if (intValue2 < xYSeries.size() - 1) {
                size = intValue2 + 1;
            }
        } else {
            i = 0;
        }
        PointF pointF3 = null;
        PointF pointF4 = null;
        for (int i2 = i; i2 < size; i2++) {
            Number y = xYSeries.getY(i2);
            Number x = xYSeries.getX(i2);
            PointF pointF5 = pointsCache.get(i2);
            if (y == null || x == null) {
                pointsCache.set(i2, null);
                pointF = null;
            } else {
                pointF = pointF5;
                if (pointF5 == null) {
                    pointF = new PointF();
                    pointsCache.set(i2, pointF);
                }
                getPlot().getBounds().transformScreen(pointF, x, y, rectF);
            }
            PointF pointF6 = pointF3;
            PointF pointF7 = pointF4;
            if (lineAndPointFormatter.hasLinePaint()) {
                pointF6 = pointF3;
                pointF7 = pointF4;
                if (lineAndPointFormatter.getInterpolationParams() == null) {
                    if (pointF != null) {
                        pointF6 = pointF3;
                        if (pointF3 == null) {
                            this.path.reset();
                            this.path.moveTo(pointF.x, pointF.y);
                            pointF6 = pointF;
                        }
                        if (pointF4 != null) {
                            appendToPath(this.path, pointF, pointF4);
                        }
                        pointF7 = pointF;
                    } else {
                        if (pointF4 != null) {
                            renderPath(canvas, rectF, this.path, pointF3, pointF4, lineAndPointFormatter);
                        }
                        pointF3 = null;
                        pointF2 = null;
                        pointF4 = pointF2;
                    }
                }
            }
            pointF3 = pointF6;
            pointF2 = pointF7;
            pointF4 = pointF2;
        }
        if (lineAndPointFormatter.hasLinePaint()) {
            if (lineAndPointFormatter.getInterpolationParams() != null) {
                List<XYCoords> interpolate = getInterpolator(lineAndPointFormatter.getInterpolationParams()).interpolate(xYSeries, lineAndPointFormatter.getInterpolationParams());
                pointF3 = convertPoint(interpolate.get(0), rectF);
                pointF4 = convertPoint(interpolate.get(interpolate.size() - 1), rectF);
                this.path.reset();
                this.path.moveTo(pointF3.x, pointF3.y);
                for (int i3 = 1; i3 < interpolate.size(); i3++) {
                    PointF convertPoint = convertPoint(interpolate.get(i3), rectF);
                    this.path.lineTo(convertPoint.x, convertPoint.y);
                }
            }
            if (pointF3 != null) {
                renderPath(canvas, rectF, this.path, pointF3, pointF4, lineAndPointFormatter);
            }
        }
        renderPoints(canvas, rectF, xYSeries, i, size, pointsCache, lineAndPointFormatter);
    }

    protected Interpolator getInterpolator(InterpolationParams interpolationParams) {
        try {
            return (Interpolator) interpolationParams.getInterpolatorClass().newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        }
    }

    protected ArrayList<PointF> getPointsCache(XYSeries xYSeries) {
        ArrayList<PointF> arrayList = this.pointsCaches.get(xYSeries);
        int size = xYSeries.size();
        ArrayList<PointF> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>(size);
            this.pointsCaches.put(xYSeries, arrayList2);
        }
        if (arrayList2.size() < size) {
            while (arrayList2.size() < size) {
                arrayList2.add(null);
            }
        } else if (arrayList2.size() > size) {
            while (arrayList2.size() > size) {
                arrayList2.remove(0);
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.SeriesRenderer
    public /* bridge */ /* synthetic */ void onRender(Canvas canvas, RectF rectF, Series series, Formatter formatter, RenderStack renderStack) {
        onRender(canvas, rectF, (XYSeries) series, (XYSeries) ((LineAndPointFormatter) formatter), renderStack);
    }

    public void onRender(Canvas canvas, RectF rectF, XYSeries xYSeries, FormatterType formattertype, RenderStack renderStack) {
        drawSeries(canvas, rectF, xYSeries, formattertype);
    }

    protected void renderPath(Canvas canvas, RectF rectF, Path path, PointF pointF, PointF pointF2, LineAndPointFormatter lineAndPointFormatter) {
        RectF asRectF;
        Path path2 = new Path(path);
        int i = C07792.$SwitchMap$com$androidplot$xy$FillDirection[lineAndPointFormatter.getFillDirection().ordinal()];
        if (i == 1) {
            path.lineTo(pointF2.x, rectF.bottom);
            path.lineTo(pointF.x, rectF.bottom);
            path.close();
        } else if (i == 2) {
            path.lineTo(pointF2.x, rectF.top);
            path.lineTo(pointF.x, rectF.top);
            path.close();
        } else if (i != 3) {
            throw new UnsupportedOperationException("Fill direction not yet implemented: " + lineAndPointFormatter.getFillDirection());
        } else {
            float transform = (float) getPlot().getBounds().getxRegion().transform(getPlot().getRangeOrigin().doubleValue(), rectF.top, rectF.bottom, true);
            path.lineTo(pointF2.x, transform);
            path.lineTo(pointF.x, transform);
            path.close();
        }
        if (lineAndPointFormatter.getFillPaint() != null) {
            canvas.drawPath(path, lineAndPointFormatter.getFillPaint());
        }
        RectRegion bounds = getPlot().getBounds();
        RectRegion rectRegion = new RectRegion(rectF);
        for (RectRegion rectRegion2 : bounds.intersects(lineAndPointFormatter.getRegions().elements())) {
            XYRegionFormatter regionFormatter = lineAndPointFormatter.getRegionFormatter(rectRegion2);
            RectRegion transform2 = bounds.transform(rectRegion2, rectRegion, false, true);
            transform2.intersect(rectRegion);
            if (rectRegion2.isFullyDefined() && (asRectF = transform2.asRectF()) != null) {
                try {
                    canvas.save();
                    canvas.clipPath(path);
                    canvas.drawRect(asRectF, regionFormatter.getPaint());
                } finally {
                    canvas.restore();
                }
            }
        }
        if (lineAndPointFormatter.hasLinePaint()) {
            canvas.drawPath(path2, lineAndPointFormatter.getLinePaint());
        }
        path.rewind();
    }

    protected void renderPoints(Canvas canvas, RectF rectF, XYSeries xYSeries, int i, int i2, List<PointF> list, LineAndPointFormatter lineAndPointFormatter) {
        if (lineAndPointFormatter.hasVertexPaint() || lineAndPointFormatter.hasPointLabelFormatter()) {
            PointLabeler pointLabeler = null;
            Paint vertexPaint = lineAndPointFormatter.hasVertexPaint() ? lineAndPointFormatter.getVertexPaint() : null;
            boolean hasPointLabelFormatter = lineAndPointFormatter.hasPointLabelFormatter();
            PointLabelFormatter pointLabelFormatter = hasPointLabelFormatter ? lineAndPointFormatter.getPointLabelFormatter() : null;
            int i3 = i;
            if (hasPointLabelFormatter) {
                pointLabeler = lineAndPointFormatter.getPointLabeler();
                i3 = i;
            }
            while (i3 < i2) {
                PointF pointF = list.get(i3);
                if (pointF != null) {
                    if (vertexPaint != null) {
                        canvas.drawPoint(pointF.x, pointF.y, vertexPaint);
                    }
                    if (pointLabeler != null) {
                        canvas.drawText(pointLabeler.getLabel(xYSeries, i3), pointF.x + pointLabelFormatter.hOffset, pointF.y + pointLabelFormatter.vOffset, pointLabelFormatter.getTextPaint());
                    }
                }
                i3++;
            }
        }
    }
}
