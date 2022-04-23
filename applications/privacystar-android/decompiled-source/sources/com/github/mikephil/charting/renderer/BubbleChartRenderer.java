package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.data.BubbleData;
import com.github.mikephil.charting.data.BubbleEntry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.BubbleDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBubbleDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/BubbleChartRenderer.class */
public class BubbleChartRenderer extends BarLineScatterCandleBubbleRenderer {
    protected BubbleDataProvider mChart;
    private float[] sizeBuffer = new float[4];
    private float[] pointBuffer = new float[2];
    private float[] _hsvBuffer = new float[3];

    public BubbleChartRenderer(BubbleDataProvider bubbleDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = bubbleDataProvider;
        this.mRenderPaint.setStyle(Paint.Style.FILL);
        this.mHighlightPaint.setStyle(Paint.Style.STROKE);
        this.mHighlightPaint.setStrokeWidth(Utils.convertDpToPixel(1.5f));
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        for (T t : this.mChart.getBubbleData().getDataSets()) {
            if (t.isVisible()) {
                drawDataSet(canvas, t);
            }
        }
    }

    protected void drawDataSet(Canvas canvas, IBubbleDataSet iBubbleDataSet) {
        Transformer transformer = this.mChart.getTransformer(iBubbleDataSet.getAxisDependency());
        float phaseY = this.mAnimator.getPhaseY();
        this.mXBounds.set(this.mChart, iBubbleDataSet);
        this.sizeBuffer[0] = 0.0f;
        this.sizeBuffer[2] = 1.0f;
        transformer.pointValuesToPixel(this.sizeBuffer);
        boolean isNormalizeSizeEnabled = iBubbleDataSet.isNormalizeSizeEnabled();
        float min = Math.min(Math.abs(this.mViewPortHandler.contentBottom() - this.mViewPortHandler.contentTop()), Math.abs(this.sizeBuffer[2] - this.sizeBuffer[0]));
        for (int i = this.mXBounds.min; i <= this.mXBounds.range + this.mXBounds.min; i++) {
            BubbleEntry bubbleEntry = (BubbleEntry) iBubbleDataSet.getEntryForIndex(i);
            this.pointBuffer[0] = bubbleEntry.getX();
            this.pointBuffer[1] = bubbleEntry.getY() * phaseY;
            transformer.pointValuesToPixel(this.pointBuffer);
            float shapeSize = getShapeSize(bubbleEntry.getSize(), iBubbleDataSet.getMaxSize(), min, isNormalizeSizeEnabled) / 2.0f;
            if (this.mViewPortHandler.isInBoundsTop(this.pointBuffer[1] + shapeSize) && this.mViewPortHandler.isInBoundsBottom(this.pointBuffer[1] - shapeSize) && this.mViewPortHandler.isInBoundsLeft(this.pointBuffer[0] + shapeSize)) {
                if (this.mViewPortHandler.isInBoundsRight(this.pointBuffer[0] - shapeSize)) {
                    this.mRenderPaint.setColor(iBubbleDataSet.getColor((int) bubbleEntry.getX()));
                    canvas.drawCircle(this.pointBuffer[0], this.pointBuffer[1], shapeSize, this.mRenderPaint);
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        BubbleData bubbleData = this.mChart.getBubbleData();
        float phaseY = this.mAnimator.getPhaseY();
        for (Highlight highlight : highlightArr) {
            IBubbleDataSet iBubbleDataSet = (IBubbleDataSet) bubbleData.getDataSetByIndex(highlight.getDataSetIndex());
            if (iBubbleDataSet != null && iBubbleDataSet.isHighlightEnabled()) {
                BubbleEntry bubbleEntry = (BubbleEntry) iBubbleDataSet.getEntryForXValue(highlight.getX(), highlight.getY());
                if (bubbleEntry.getY() == highlight.getY() && isInBoundsX(bubbleEntry, iBubbleDataSet)) {
                    Transformer transformer = this.mChart.getTransformer(iBubbleDataSet.getAxisDependency());
                    this.sizeBuffer[0] = 0.0f;
                    this.sizeBuffer[2] = 1.0f;
                    transformer.pointValuesToPixel(this.sizeBuffer);
                    boolean isNormalizeSizeEnabled = iBubbleDataSet.isNormalizeSizeEnabled();
                    float min = Math.min(Math.abs(this.mViewPortHandler.contentBottom() - this.mViewPortHandler.contentTop()), Math.abs(this.sizeBuffer[2] - this.sizeBuffer[0]));
                    this.pointBuffer[0] = bubbleEntry.getX();
                    this.pointBuffer[1] = bubbleEntry.getY() * phaseY;
                    transformer.pointValuesToPixel(this.pointBuffer);
                    highlight.setDraw(this.pointBuffer[0], this.pointBuffer[1]);
                    float shapeSize = getShapeSize(bubbleEntry.getSize(), iBubbleDataSet.getMaxSize(), min, isNormalizeSizeEnabled) / 2.0f;
                    if (this.mViewPortHandler.isInBoundsTop(this.pointBuffer[1] + shapeSize) && this.mViewPortHandler.isInBoundsBottom(this.pointBuffer[1] - shapeSize) && this.mViewPortHandler.isInBoundsLeft(this.pointBuffer[0] + shapeSize)) {
                        if (this.mViewPortHandler.isInBoundsRight(this.pointBuffer[0] - shapeSize)) {
                            int color = iBubbleDataSet.getColor((int) bubbleEntry.getX());
                            Color.RGBToHSV(Color.red(color), Color.green(color), Color.blue(color), this._hsvBuffer);
                            float[] fArr = this._hsvBuffer;
                            fArr[2] = fArr[2] * 0.5f;
                            this.mHighlightPaint.setColor(Color.HSVToColor(Color.alpha(color), this._hsvBuffer));
                            this.mHighlightPaint.setStrokeWidth(iBubbleDataSet.getHighlightCircleWidth());
                            canvas.drawCircle(this.pointBuffer[0], this.pointBuffer[1], shapeSize, this.mHighlightPaint);
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        BubbleData bubbleData = this.mChart.getBubbleData();
        if (bubbleData != null && isDrawingValuesAllowed(this.mChart)) {
            List<T> dataSets = bubbleData.getDataSets();
            float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, "1");
            for (int i = 0; i < dataSets.size(); i++) {
                IBubbleDataSet iBubbleDataSet = (IBubbleDataSet) dataSets.get(i);
                if (shouldDrawValues(iBubbleDataSet)) {
                    applyValueTextStyle(iBubbleDataSet);
                    float max = Math.max(0.0f, Math.min(1.0f, this.mAnimator.getPhaseX()));
                    float phaseY = this.mAnimator.getPhaseY();
                    this.mXBounds.set(this.mChart, iBubbleDataSet);
                    float[] generateTransformedValuesBubble = this.mChart.getTransformer(iBubbleDataSet.getAxisDependency()).generateTransformedValuesBubble(iBubbleDataSet, phaseY, this.mXBounds.min, this.mXBounds.max);
                    if (max == 1.0f) {
                        max = phaseY;
                    }
                    MPPointF instance = MPPointF.getInstance(iBubbleDataSet.getIconsOffset());
                    instance.f160x = Utils.convertDpToPixel(instance.f160x);
                    instance.f161y = Utils.convertDpToPixel(instance.f161y);
                    for (int i2 = 0; i2 < generateTransformedValuesBubble.length; i2 += 2) {
                        int i3 = i2 / 2;
                        int valueTextColor = iBubbleDataSet.getValueTextColor(this.mXBounds.min + i3);
                        int argb = Color.argb(Math.round(255.0f * max), Color.red(valueTextColor), Color.green(valueTextColor), Color.blue(valueTextColor));
                        float f = generateTransformedValuesBubble[i2];
                        float f2 = generateTransformedValuesBubble[i2 + 1];
                        if (!this.mViewPortHandler.isInBoundsRight(f)) {
                            break;
                        }
                        if (this.mViewPortHandler.isInBoundsLeft(f) && this.mViewPortHandler.isInBoundsY(f2)) {
                            BubbleEntry bubbleEntry = (BubbleEntry) iBubbleDataSet.getEntryForIndex(i3 + this.mXBounds.min);
                            if (iBubbleDataSet.isDrawValuesEnabled()) {
                                drawValue(canvas, iBubbleDataSet.getValueFormatter(), bubbleEntry.getSize(), bubbleEntry, i, f, f2 + (0.5f * calcTextHeight), argb);
                            }
                            if (bubbleEntry.getIcon() != null && iBubbleDataSet.isDrawIconsEnabled()) {
                                Drawable icon = bubbleEntry.getIcon();
                                Utils.drawImage(canvas, icon, (int) (f + instance.f160x), (int) (f2 + instance.f161y), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                            }
                        }
                    }
                    MPPointF.recycleInstance(instance);
                }
            }
        }
    }

    protected float getShapeSize(float f, float f2, float f3, boolean z) {
        float f4 = f;
        if (z) {
            f4 = f2 == 0.0f ? 1.0f : (float) Math.sqrt(f / f2);
        }
        return f3 * f4;
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
    }
}
