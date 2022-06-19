package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.RectF;
import com.androidplot.Region;
import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p008xy.BubbleFormatter;
import com.androidplot.util.FontUtils;
import com.androidplot.util.PixelUtils;
import com.androidplot.util.SeriesUtils;
import java.util.Iterator;
/* renamed from: com.androidplot.xy.BubbleRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/BubbleRenderer.class */
public class BubbleRenderer<FormatterType extends BubbleFormatter> extends XYSeriesRenderer<BubbleSeries, FormatterType> {
    protected static final float MAX_BUBBLE_RADIUS_DEFAULT_DP = 25.0f;
    protected static final float MIN_BUBBLE_RADIUS_DEFAULT_DP = 9.0f;
    private BubbleScaleMode bubbleScaleMode = BubbleScaleMode.SQUARE_ROOT;
    private Region bubbleBounds = new Region(Float.valueOf(PixelUtils.dpToPix(MIN_BUBBLE_RADIUS_DEFAULT_DP)), Float.valueOf(PixelUtils.dpToPix(MAX_BUBBLE_RADIUS_DEFAULT_DP)));

    /* renamed from: com.androidplot.xy.BubbleRenderer$BubbleScaleMode */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BubbleRenderer$BubbleScaleMode.class */
    public enum BubbleScaleMode {
        LINEAR,
        SQUARE_ROOT
    }

    public BubbleRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    protected Region calculateBounds() {
        Region region = new Region();
        Iterator it = getSeriesAndFormatterList().iterator();
        while (it.hasNext()) {
            SeriesUtils.minMax(region, ((BubbleSeries) ((SeriesBundle) it.next()).getSeries()).getZVals());
        }
        if (region.getMax() == null || region.getMax().doubleValue() <= 0.0d) {
            return null;
        }
        if (this.bubbleScaleMode == BubbleScaleMode.SQUARE_ROOT) {
            region.setMax(Double.valueOf(Math.sqrt(region.getMax().doubleValue())));
        }
        if (region.getMin().doubleValue() <= 0.0d) {
            region.setMax(0);
        } else if (this.bubbleScaleMode == BubbleScaleMode.SQUARE_ROOT) {
            region.setMin(Double.valueOf(Math.sqrt(region.getMin().doubleValue())));
        }
        return region;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.SeriesRenderer
    protected /* bridge */ /* synthetic */ void doDrawLegendIcon(Canvas canvas, RectF rectF, Formatter formatter) {
        doDrawLegendIcon(canvas, rectF, (RectF) ((BubbleFormatter) formatter));
    }

    protected void doDrawLegendIcon(Canvas canvas, RectF rectF, FormatterType formattertype) {
        drawBubble(canvas, formattertype, null, 0, new PointF(rectF.centerX(), rectF.centerY()), rectF.width() / 2.5f);
    }

    protected void drawBubble(Canvas canvas, FormatterType formattertype, BubbleSeries bubbleSeries, int i, PointF pointF, float f) {
        canvas.drawCircle(pointF.x, pointF.y, f, formattertype.getFillPaint());
        canvas.drawCircle(pointF.x, pointF.y, f, formattertype.getStrokePaint());
        if (bubbleSeries == null || !formattertype.hasPointLabelFormatter() || formattertype.getPointLabeler() == null) {
            return;
        }
        FontUtils.drawTextVerticallyCentered(canvas, formattertype.getPointLabeler().getLabel(bubbleSeries, i), pointF.x, pointF.y, formattertype.getPointLabelFormatter().getTextPaint());
    }

    public BubbleScaleMode getBubbleScaleMode() {
        return this.bubbleScaleMode;
    }

    public float getMaxBubbleRadius() {
        return this.bubbleBounds.getMax().floatValue();
    }

    public float getMinBubbleRadius() {
        return this.bubbleBounds.getMin().floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.SeriesRenderer
    protected /* bridge */ /* synthetic */ void onRender(Canvas canvas, RectF rectF, Series series, Formatter formatter, RenderStack renderStack) {
        onRender(canvas, rectF, (BubbleSeries) series, (BubbleSeries) ((BubbleFormatter) formatter), renderStack);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    protected void onRender(Canvas canvas, RectF rectF, BubbleSeries bubbleSeries, FormatterType formattertype, RenderStack renderStack) {
        Region calculateBounds = calculateBounds();
        for (int i = 0; i < bubbleSeries.size(); i++) {
            if (bubbleSeries.getY(i) != null && bubbleSeries.getZ(i).doubleValue() > 0.0d) {
                drawBubble(canvas, formattertype, bubbleSeries, i, getPlot().getBounds().transform(bubbleSeries.getX(i), bubbleSeries.getY(i), rectF, false, true), calculateBounds.transform(this.bubbleScaleMode == BubbleScaleMode.SQUARE_ROOT ? Math.sqrt(bubbleSeries.getZ(i).doubleValue()) : bubbleSeries.getZ(i).doubleValue(), this.bubbleBounds).floatValue());
            }
        }
    }

    public void setBubbleScaleMode(BubbleScaleMode bubbleScaleMode) {
        this.bubbleScaleMode = bubbleScaleMode;
    }

    public void setMaxBubbleRadius(float f) {
        this.bubbleBounds.setMax(Float.valueOf(f));
    }

    public void setMinBubbleRadius(float f) {
        this.bubbleBounds.setMin(Float.valueOf(f));
    }
}
