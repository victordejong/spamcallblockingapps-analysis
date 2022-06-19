package com.androidplot.pie;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p007ui.SeriesRenderer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieRenderer.class */
public class PieRenderer extends SeriesRenderer<PieChart, Segment, SegmentFormatter> {
    private static final float FULL_PIE_DEGS = 360.0f;
    private static final float HALF_PIE_DEGS = 180.0f;
    private float startDegs = 0.0f;
    private float extentDegs = 360.0f;
    private float donutSize = 0.5f;
    private DonutMode donutMode = DonutMode.PERCENT;

    /* renamed from: com.androidplot.pie.PieRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieRenderer$1.class */
    public static /* synthetic */ class C07661 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$pie$PieRenderer$DonutMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[DonutMode.values().length];
            $SwitchMap$com$androidplot$pie$PieRenderer$DonutMode = iArr;
            try {
                iArr[DonutMode.PERCENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$pie$PieRenderer$DonutMode[DonutMode.PIXELS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieRenderer$DonutMode.class */
    public enum DonutMode {
        PERCENT,
        PIXELS
    }

    public PieRenderer(PieChart pieChart) {
        super(pieChart);
    }

    protected static float degsToScreenDegs(float f) {
        float f2 = f % 360.0f;
        return f2 > 0.0f ? 360.0f - f2 : f2;
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    /* JADX WARN: Type inference failed for: r0v4, types: [double] */
    protected static double signedDistance(double d, double d2) {
        double d3 = d - d2;
        ?? abs = Math.abs(d3) % 360.0d;
        char c = abs;
        if (abs > 180.0d) {
            c = 360.0d - abs;
        }
        return c * (((d3 < 0.0d || d3 > 180.0d) && (d3 > -180.0d || d3 < -360.0d)) ? -1 : 1);
    }

    protected static void validateInputDegs(float f) {
        if (f < 0.0f || f > 360.0f) {
            throw new IllegalArgumentException("Degrees values must be between 0.0 and 360.");
        }
    }

    protected PointF calculateLineEnd(float f, float f2, float f3, float f4) {
        return calculateLineEnd(new PointF(f, f2), f3, f4);
    }

    protected PointF calculateLineEnd(PointF pointF, float f, float f2) {
        double d = (f2 * 3.141592653589793d) / 180.0d;
        double d2 = f;
        return new PointF(pointF.x + ((float) (Math.cos(d) * d2)), pointF.y + ((float) (d2 * Math.sin(d))));
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    protected double calculateScale(double[] dArr) {
        char c = 0;
        for (double d : dArr) {
            c += d;
        }
        return 0 / c;
    }

    public void doDrawLegendIcon(Canvas canvas, RectF rectF, SegmentFormatter segmentFormatter) {
        throw new UnsupportedOperationException("Not yet implemented.");
    }

    protected void drawSegment(Canvas canvas, RectF rectF, Segment segment, SegmentFormatter segmentFormatter, float f, float f2, float f3) {
        float f4;
        canvas.save();
        float radialInset = f2 + segmentFormatter.getRadialInset();
        float radialInset2 = f3 - (segmentFormatter.getRadialInset() * 2.0f);
        float f5 = radialInset + (radialInset2 / 2.0f);
        PointF calculateLineEnd = calculateLineEnd(rectF.centerX(), rectF.centerY(), segmentFormatter.getOffset(), f5);
        float f6 = calculateLineEnd.x;
        float f7 = calculateLineEnd.y;
        int i = C07661.$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode[this.donutMode.ordinal()];
        if (i == 1) {
            f4 = this.donutSize * f;
        } else if (i != 2) {
            throw new UnsupportedOperationException("Unsupported DonutMde: " + this.donutMode);
        } else {
            f4 = this.donutSize;
            if (f4 <= 0.0f) {
                f4 = f + f4;
            }
        }
        float outerInset = f - segmentFormatter.getOuterInset();
        float innerInset = f4 == 0.0f ? 0.0f : f4 + segmentFormatter.getInnerInset();
        if (Math.abs(radialInset2 - this.extentDegs) > Float.MIN_VALUE) {
            PointF calculateLineEnd2 = calculateLineEnd(f6, f7, outerInset, radialInset);
            PointF calculateLineEnd3 = calculateLineEnd(f6, f7, innerInset, radialInset);
            float f8 = radialInset + radialInset2;
            PointF calculateLineEnd4 = calculateLineEnd(f6, f7, outerInset, f8);
            PointF calculateLineEnd5 = calculateLineEnd(f6, f7, innerInset, f8);
            Path path = new Path();
            path.arcTo(new RectF(rectF.left - outerInset, rectF.top - outerInset, rectF.right + outerInset, rectF.bottom + outerInset), radialInset, radialInset2);
            path.lineTo(f6, f7);
            path.close();
            canvas.clipPath(path);
            Path path2 = new Path();
            path2.arcTo(new RectF(f6 - outerInset, f7 - outerInset, f6 + outerInset, f7 + outerInset), radialInset, radialInset2);
            path2.lineTo(calculateLineEnd5.x, calculateLineEnd5.y);
            path2.arcTo(new RectF(f6 - innerInset, f7 - innerInset, f6 + innerInset, f7 + innerInset), f8, -radialInset2);
            path2.close();
            canvas.drawPath(path2, segmentFormatter.getFillPaint());
            canvas.drawLine(calculateLineEnd3.x, calculateLineEnd3.y, calculateLineEnd2.x, calculateLineEnd2.y, segmentFormatter.getRadialEdgePaint());
            canvas.drawLine(calculateLineEnd5.x, calculateLineEnd5.y, calculateLineEnd4.x, calculateLineEnd4.y, segmentFormatter.getRadialEdgePaint());
        } else {
            canvas.save();
            Path path3 = new Path();
            path3.addCircle(f6, f7, outerInset, Path.Direction.CW);
            Path path4 = new Path();
            path4.addCircle(f6, f7, innerInset, Path.Direction.CW);
            canvas.clipPath(path4, Region.Op.DIFFERENCE);
            canvas.drawPath(path3, segmentFormatter.getFillPaint());
            canvas.restore();
        }
        canvas.drawCircle(f6, f7, innerInset, segmentFormatter.getInnerEdgePaint());
        canvas.drawCircle(f6, f7, outerInset, segmentFormatter.getOuterEdgePaint());
        canvas.restore();
        PointF calculateLineEnd6 = calculateLineEnd(f6, f7, outerInset - ((outerInset - innerInset) / 2.0f), f5);
        if (segmentFormatter.getLabelPaint() != null) {
            drawSegmentLabel(canvas, calculateLineEnd6, segment, segmentFormatter);
        }
    }

    protected void drawSegmentLabel(Canvas canvas, PointF pointF, Segment segment, SegmentFormatter segmentFormatter) {
        canvas.drawText(segment.getTitle(), pointF.x, pointF.y, segmentFormatter.getLabelPaint());
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v66, types: [double] */
    public Segment getContainingSegment(PointF pointF) {
        RectF rectF = getPlot().getPie().getWidgetDimensions().marginatedRect;
        PointF pointF2 = new PointF(rectF.centerX(), rectF.centerY());
        ?? atan2 = Math.atan2(pointF.y - pointF2.y, pointF.x - pointF2.x) * 57.29577951308232d;
        char c = atan2;
        if (atan2 < 0.0d) {
            c = atan2 + 360.0d;
        }
        List<SeriesBundle<Segment, ? extends SegmentFormatter>> seriesAndFormatterList = getSeriesAndFormatterList();
        int i = 0;
        double[] values = getValues();
        double calculateScale = calculateScale(values);
        float degsToScreenDegs = degsToScreenDegs(this.startDegs);
        for (SeriesBundle<Segment, ? extends SegmentFormatter> seriesBundle : seriesAndFormatterList) {
            float f = (((float) ((values[i] * calculateScale) * this.extentDegs)) + degsToScreenDegs) % 360.0f;
            double d = f;
            double signedDistance = signedDistance(d, c);
            ?? signedDistance2 = signedDistance(d, degsToScreenDegs);
            char c2 = signedDistance2;
            if (signedDistance2 < 0.0d) {
                c2 = signedDistance2 + 360.0d;
            }
            if (signedDistance > 0.0d && signedDistance <= c2) {
                return seriesBundle.getSeries();
            }
            i++;
            degsToScreenDegs = f;
        }
        return null;
    }

    public float getExtentDegs() {
        return this.extentDegs;
    }

    public float getRadius(RectF rectF) {
        return (rectF.width() < rectF.height() ? rectF.width() : rectF.height()) / 2.0f;
    }

    public float getStartDegs() {
        return this.startDegs;
    }

    protected double[] getValues() {
        List<SeriesBundle<Segment, ? extends SegmentFormatter>> seriesAndFormatterList = getSeriesAndFormatterList();
        double[] dArr = new double[seriesAndFormatterList.size()];
        int i = 0;
        for (SeriesBundle<Segment, ? extends SegmentFormatter> seriesBundle : seriesAndFormatterList) {
            dArr[i] = seriesBundle.getSeries().getValue().doubleValue();
            i++;
        }
        return dArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRender(Canvas canvas, RectF rectF, Segment segment, SegmentFormatter segmentFormatter, RenderStack renderStack) {
        renderStack.disable(getClass());
        float radius = getRadius(rectF);
        PointF pointF = new PointF(rectF.centerX(), rectF.centerY());
        double[] values = getValues();
        double calculateScale = calculateScale(values);
        float degsToScreenDegs = degsToScreenDegs(this.startDegs);
        RectF rectF2 = new RectF(pointF.x - radius, pointF.y - radius, pointF.x + radius, pointF.y + radius);
        int i = 0;
        for (SeriesBundle<Segment, ? extends SegmentFormatter> seriesBundle : getSeriesAndFormatterList()) {
            float f = (float) (values[i] * calculateScale * this.extentDegs);
            drawSegment(canvas, rectF2, seriesBundle.getSeries(), seriesBundle.getFormatter(), radius, degsToScreenDegs, f);
            i++;
            degsToScreenDegs += f;
        }
    }

    public void setDonutSize(float f, DonutMode donutMode) {
        int i = C07661.$SwitchMap$com$androidplot$pie$PieRenderer$DonutMode[donutMode.ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new UnsupportedOperationException("Not yet implemented.");
            }
        } else if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Size parameter must be between 0 and 1 when operating in PERCENT mode.");
        }
        this.donutMode = donutMode;
        this.donutSize = f;
    }

    public void setExtentDegs(float f) {
        validateInputDegs(f);
        this.extentDegs = f;
    }

    public void setStartDegs(float f) {
        validateInputDegs(f);
        this.startDegs = f;
    }
}
