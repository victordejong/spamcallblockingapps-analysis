package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.buffer.BarBuffer;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.highlight.Range;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.privacystar.core.util.CampaignUtil;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/BarChartRenderer.class */
public class BarChartRenderer extends BarLineScatterCandleBubbleRenderer {
    protected BarBuffer[] mBarBuffers;
    protected BarDataProvider mChart;
    protected RectF mBarRect = new RectF();
    private RectF mBarShadowRectBuffer = new RectF();
    protected Paint mShadowPaint = new Paint(1);
    protected Paint mBarBorderPaint = new Paint(1);

    public BarChartRenderer(BarDataProvider barDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = barDataProvider;
        this.mHighlightPaint = new Paint(1);
        this.mHighlightPaint.setStyle(Paint.Style.FILL);
        this.mHighlightPaint.setColor(Color.rgb(0, 0, 0));
        this.mHighlightPaint.setAlpha(120);
        this.mShadowPaint.setStyle(Paint.Style.FILL);
        this.mBarBorderPaint.setStyle(Paint.Style.STROKE);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        BarData barData = this.mChart.getBarData();
        for (int i = 0; i < barData.getDataSetCount(); i++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i);
            if (iBarDataSet.isVisible()) {
                drawDataSet(canvas, iBarDataSet, i);
            }
        }
    }

    protected void drawDataSet(Canvas canvas, IBarDataSet iBarDataSet, int i) {
        Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
        this.mBarBorderPaint.setColor(iBarDataSet.getBarBorderColor());
        this.mBarBorderPaint.setStrokeWidth(Utils.convertDpToPixel(iBarDataSet.getBarBorderWidth()));
        boolean z = true;
        boolean z2 = iBarDataSet.getBarBorderWidth() > 0.0f;
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        if (this.mChart.isDrawBarShadowEnabled()) {
            this.mShadowPaint.setColor(iBarDataSet.getBarShadowColor());
            float barWidth = this.mChart.getBarData().getBarWidth() / 2.0f;
            int min = Math.min((int) Math.ceil(iBarDataSet.getEntryCount() * phaseX), iBarDataSet.getEntryCount());
            for (int i2 = 0; i2 < min; i2++) {
                float x = ((BarEntry) iBarDataSet.getEntryForIndex(i2)).getX();
                this.mBarShadowRectBuffer.left = x - barWidth;
                this.mBarShadowRectBuffer.right = x + barWidth;
                transformer.rectValueToPixel(this.mBarShadowRectBuffer);
                if (this.mViewPortHandler.isInBoundsLeft(this.mBarShadowRectBuffer.right)) {
                    if (!this.mViewPortHandler.isInBoundsRight(this.mBarShadowRectBuffer.left)) {
                        break;
                    }
                    this.mBarShadowRectBuffer.top = this.mViewPortHandler.contentTop();
                    this.mBarShadowRectBuffer.bottom = this.mViewPortHandler.contentBottom();
                    canvas.drawRect(this.mBarShadowRectBuffer, this.mShadowPaint);
                }
            }
        }
        BarBuffer barBuffer = this.mBarBuffers[i];
        barBuffer.setPhases(phaseX, phaseY);
        barBuffer.setDataSet(i);
        barBuffer.setInverted(this.mChart.isInverted(iBarDataSet.getAxisDependency()));
        barBuffer.setBarWidth(this.mChart.getBarData().getBarWidth());
        barBuffer.feed(iBarDataSet);
        transformer.pointValuesToPixel(barBuffer.buffer);
        if (iBarDataSet.getColors().size() != 1) {
            z = false;
        }
        int i3 = 0;
        if (z) {
            this.mRenderPaint.setColor(iBarDataSet.getColor());
            i3 = 0;
        }
        while (i3 < barBuffer.size()) {
            ViewPortHandler viewPortHandler = this.mViewPortHandler;
            float[] fArr = barBuffer.buffer;
            int i4 = i3 + 2;
            if (viewPortHandler.isInBoundsLeft(fArr[i4])) {
                if (this.mViewPortHandler.isInBoundsRight(barBuffer.buffer[i3])) {
                    if (!z) {
                        this.mRenderPaint.setColor(iBarDataSet.getColor(i3 / 4));
                    }
                    float f = barBuffer.buffer[i3];
                    float[] fArr2 = barBuffer.buffer;
                    int i5 = i3 + 1;
                    float f2 = fArr2[i5];
                    float f3 = barBuffer.buffer[i4];
                    float[] fArr3 = barBuffer.buffer;
                    int i6 = i3 + 3;
                    canvas.drawRect(f, f2, f3, fArr3[i6], this.mRenderPaint);
                    if (z2) {
                        canvas.drawRect(barBuffer.buffer[i3], barBuffer.buffer[i5], barBuffer.buffer[i4], barBuffer.buffer[i6], this.mBarBorderPaint);
                    }
                } else {
                    return;
                }
            }
            i3 += 4;
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        float f;
        float f2;
        BarData barData = this.mChart.getBarData();
        for (Highlight highlight : highlightArr) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(highlight.getDataSetIndex());
            if (iBarDataSet != null && iBarDataSet.isHighlightEnabled()) {
                BarEntry barEntry = (BarEntry) iBarDataSet.getEntryForXValue(highlight.getX(), highlight.getY());
                if (isInBoundsX(barEntry, iBarDataSet)) {
                    Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
                    this.mHighlightPaint.setColor(iBarDataSet.getHighLightColor());
                    this.mHighlightPaint.setAlpha(iBarDataSet.getHighLightAlpha());
                    if (!(highlight.getStackIndex() >= 0 && barEntry.isStacked())) {
                        f2 = barEntry.getY();
                        f = 0.0f;
                    } else if (this.mChart.isHighlightFullBarEnabled()) {
                        f2 = barEntry.getPositiveSum();
                        f = -barEntry.getNegativeSum();
                    } else {
                        Range range = barEntry.getRanges()[highlight.getStackIndex()];
                        f2 = range.from;
                        f = range.f149to;
                    }
                    prepareBarHighlight(barEntry.getX(), f2, f, barData.getBarWidth() / 2.0f, transformer);
                    setHighlightDrawPos(highlight, this.mBarRect);
                    canvas.drawRect(this.mBarRect, this.mHighlightPaint);
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        MPPointF mPPointF;
        float f;
        if (isDrawingValuesAllowed(this.mChart)) {
            List dataSets = this.mChart.getBarData().getDataSets();
            float convertDpToPixel = Utils.convertDpToPixel(4.5f);
            boolean isDrawValueAboveBarEnabled = this.mChart.isDrawValueAboveBarEnabled();
            int i = 0;
            while (i < this.mChart.getBarData().getDataSetCount()) {
                IBarDataSet iBarDataSet = (IBarDataSet) dataSets.get(i);
                if (!shouldDrawValues(iBarDataSet)) {
                    convertDpToPixel = convertDpToPixel;
                    dataSets = dataSets;
                } else {
                    applyValueTextStyle(iBarDataSet);
                    boolean isInverted = this.mChart.isInverted(iBarDataSet.getAxisDependency());
                    float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, CampaignUtil.CAMPAIGN_ACTION_APPROVED);
                    float f2 = isDrawValueAboveBarEnabled ? -convertDpToPixel : calcTextHeight + convertDpToPixel;
                    float f3 = isDrawValueAboveBarEnabled ? calcTextHeight + convertDpToPixel : -convertDpToPixel;
                    float f4 = f2;
                    float f5 = f3;
                    if (isInverted) {
                        f4 = (-f2) - calcTextHeight;
                        f5 = (-f3) - calcTextHeight;
                    }
                    BarBuffer barBuffer = this.mBarBuffers[i];
                    float phaseY = this.mAnimator.getPhaseY();
                    MPPointF instance = MPPointF.getInstance(iBarDataSet.getIconsOffset());
                    instance.f160x = Utils.convertDpToPixel(instance.f160x);
                    instance.f161y = Utils.convertDpToPixel(instance.f161y);
                    if (iBarDataSet.isStacked()) {
                        Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            convertDpToPixel = convertDpToPixel;
                            isDrawValueAboveBarEnabled = isDrawValueAboveBarEnabled;
                            mPPointF = instance;
                            i = i;
                            dataSets = dataSets;
                            if (i2 >= iBarDataSet.getEntryCount() * this.mAnimator.getPhaseX()) {
                                break;
                            }
                            BarEntry barEntry = (BarEntry) iBarDataSet.getEntryForIndex(i2);
                            float[] yVals = barEntry.getYVals();
                            float f6 = (barBuffer.buffer[i3] + barBuffer.buffer[i3 + 2]) / 2.0f;
                            int valueTextColor = iBarDataSet.getValueTextColor(i2);
                            if (yVals != null) {
                                float[] fArr = new float[yVals.length * 2];
                                float f7 = -barEntry.getNegativeSum();
                                int i4 = 0;
                                int i5 = 0;
                                float f8 = 0.0f;
                                while (i4 < fArr.length) {
                                    float f9 = yVals[i5];
                                    int i6 = (f9 > 0.0f ? 1 : (f9 == 0.0f ? 0 : -1));
                                    if (i6 == 0) {
                                        f = f9;
                                        f8 = f8;
                                        f7 = f7;
                                        if (f8 != 0.0f) {
                                            if (f7 == 0.0f) {
                                                f = f9;
                                                f8 = f8;
                                                f7 = f7;
                                            }
                                        }
                                        fArr[i4 + 1] = f * phaseY;
                                        i4 += 2;
                                        i5++;
                                    }
                                    if (i6 >= 0) {
                                        f = f8 + f9;
                                        f8 = f;
                                        f7 = f7;
                                    } else {
                                        f7 -= f9;
                                        f8 = f8;
                                        f = f7;
                                    }
                                    fArr[i4 + 1] = f * phaseY;
                                    i4 += 2;
                                    i5++;
                                }
                                transformer.pointValuesToPixel(fArr);
                                for (int i7 = 0; i7 < fArr.length; i7 += 2) {
                                    int i8 = i7 / 2;
                                    float f10 = yVals[i8];
                                    float f11 = fArr[i7 + 1] + (((f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1)) == 0 && (f7 > 0.0f ? 1 : (f7 == 0.0f ? 0 : -1)) == 0 && (f8 > 0.0f ? 1 : (f8 == 0.0f ? 0 : -1)) > 0) || (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1)) < 0 ? f5 : f4);
                                    if (!this.mViewPortHandler.isInBoundsRight(f6)) {
                                        break;
                                    }
                                    if (this.mViewPortHandler.isInBoundsY(f11) && this.mViewPortHandler.isInBoundsLeft(f6)) {
                                        if (iBarDataSet.isDrawValuesEnabled()) {
                                            drawValue(canvas, iBarDataSet.getValueFormatter(), yVals[i8], barEntry, i, f6, f11, valueTextColor);
                                        }
                                        if (barEntry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                            Drawable icon = barEntry.getIcon();
                                            Utils.drawImage(canvas, icon, (int) (f6 + instance.f160x), (int) (f11 + instance.f161y), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                                        }
                                    }
                                }
                            } else if (!this.mViewPortHandler.isInBoundsRight(f6)) {
                                convertDpToPixel = convertDpToPixel;
                                isDrawValueAboveBarEnabled = isDrawValueAboveBarEnabled;
                                mPPointF = instance;
                                i = i;
                                dataSets = dataSets;
                                break;
                            } else {
                                ViewPortHandler viewPortHandler = this.mViewPortHandler;
                                float[] fArr2 = barBuffer.buffer;
                                int i9 = i3 + 1;
                                if (!viewPortHandler.isInBoundsY(fArr2[i9]) || !this.mViewPortHandler.isInBoundsLeft(f6)) {
                                    i3 = i3;
                                } else {
                                    if (iBarDataSet.isDrawValuesEnabled()) {
                                        drawValue(canvas, iBarDataSet.getValueFormatter(), barEntry.getY(), barEntry, i, f6, barBuffer.buffer[i9] + (barEntry.getY() >= 0.0f ? f4 : f5), valueTextColor);
                                    }
                                    if (barEntry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                        Drawable icon2 = barEntry.getIcon();
                                        Utils.drawImage(canvas, icon2, (int) (f6 + instance.f160x), (int) (barBuffer.buffer[i9] + (barEntry.getY() >= 0.0f ? f4 : f5) + instance.f161y), icon2.getIntrinsicWidth(), icon2.getIntrinsicHeight());
                                    }
                                }
                            }
                            i3 = yVals == null ? i3 + 4 : i3 + (yVals.length * 4);
                            i2++;
                        }
                    } else {
                        dataSets = dataSets;
                        for (int i10 = 0; i10 < barBuffer.buffer.length * this.mAnimator.getPhaseX(); i10 += 4) {
                            float f12 = (barBuffer.buffer[i10] + barBuffer.buffer[i10 + 2]) / 2.0f;
                            if (!this.mViewPortHandler.isInBoundsRight(f12)) {
                                break;
                            }
                            ViewPortHandler viewPortHandler2 = this.mViewPortHandler;
                            float[] fArr3 = barBuffer.buffer;
                            int i11 = i10 + 1;
                            if (viewPortHandler2.isInBoundsY(fArr3[i11]) && this.mViewPortHandler.isInBoundsLeft(f12)) {
                                int i12 = i10 / 4;
                                Entry entry = (BarEntry) iBarDataSet.getEntryForIndex(i12);
                                float y = entry.getY();
                                if (iBarDataSet.isDrawValuesEnabled()) {
                                    drawValue(canvas, iBarDataSet.getValueFormatter(), y, entry, i, f12, y >= 0.0f ? barBuffer.buffer[i11] + f4 : barBuffer.buffer[i10 + 3] + f5, iBarDataSet.getValueTextColor(i12));
                                }
                                if (entry.getIcon() != null && iBarDataSet.isDrawIconsEnabled()) {
                                    Drawable icon3 = entry.getIcon();
                                    Utils.drawImage(canvas, icon3, (int) (f12 + instance.f160x), (int) ((y >= 0.0f ? barBuffer.buffer[i11] + f4 : barBuffer.buffer[i10 + 3] + f5) + instance.f161y), icon3.getIntrinsicWidth(), icon3.getIntrinsicHeight());
                                }
                            }
                        }
                        convertDpToPixel = convertDpToPixel;
                        isDrawValueAboveBarEnabled = isDrawValueAboveBarEnabled;
                        mPPointF = instance;
                        i = i;
                    }
                    MPPointF.recycleInstance(mPPointF);
                }
                i++;
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
        BarData barData = this.mChart.getBarData();
        this.mBarBuffers = new BarBuffer[barData.getDataSetCount()];
        for (int i = 0; i < this.mBarBuffers.length; i++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i);
            this.mBarBuffers[i] = new BarBuffer(iBarDataSet.getEntryCount() * 4 * (iBarDataSet.isStacked() ? iBarDataSet.getStackSize() : 1), barData.getDataSetCount(), iBarDataSet.isStacked());
        }
    }

    protected void prepareBarHighlight(float f, float f2, float f3, float f4, Transformer transformer) {
        this.mBarRect.set(f - f4, f2, f + f4, f3);
        transformer.rectToPixelPhase(this.mBarRect, this.mAnimator.getPhaseY());
    }

    protected void setHighlightDrawPos(Highlight highlight, RectF rectF) {
        highlight.setDraw(rectF.centerX(), rectF.top);
    }
}
