package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.p001v4.view.ViewCompat;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.MPPointD;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/XAxisRenderer.class */
public class XAxisRenderer extends AxisRenderer {
    protected XAxis mXAxis;
    protected Path mRenderGridLinesPath = new Path();
    protected float[] mRenderGridLinesBuffer = new float[2];
    protected RectF mGridClippingRect = new RectF();
    protected float[] mRenderLimitLinesBuffer = new float[2];
    protected RectF mLimitLineClippingRect = new RectF();
    float[] mLimitLineSegmentsBuffer = new float[4];
    private Path mLimitLinePath = new Path();

    public XAxisRenderer(ViewPortHandler viewPortHandler, XAxis xAxis, Transformer transformer) {
        super(viewPortHandler, transformer, xAxis);
        this.mXAxis = xAxis;
        this.mAxisLabelPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mAxisLabelPaint.setTextAlign(Paint.Align.CENTER);
        this.mAxisLabelPaint.setTextSize(Utils.convertDpToPixel(10.0f));
    }

    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void computeAxis(float f, float f2, boolean z) {
        float f3 = f;
        float f4 = f2;
        if (this.mViewPortHandler.contentWidth() > 10.0f) {
            f3 = f;
            f4 = f2;
            if (!this.mViewPortHandler.isFullyZoomedOutX()) {
                MPPointD valuesByTouchPoint = this.mTrans.getValuesByTouchPoint(this.mViewPortHandler.contentLeft(), this.mViewPortHandler.contentTop());
                MPPointD valuesByTouchPoint2 = this.mTrans.getValuesByTouchPoint(this.mViewPortHandler.contentRight(), this.mViewPortHandler.contentTop());
                if (z) {
                    f3 = (float) valuesByTouchPoint2.f158x;
                    f4 = (float) valuesByTouchPoint.f158x;
                } else {
                    f3 = (float) valuesByTouchPoint.f158x;
                    f4 = (float) valuesByTouchPoint2.f158x;
                }
                MPPointD.recycleInstance(valuesByTouchPoint);
                MPPointD.recycleInstance(valuesByTouchPoint2);
            }
        }
        computeAxisValues(f3, f4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void computeAxisValues(float f, float f2) {
        super.computeAxisValues(f, f2);
        computeSize();
    }

    protected void computeSize() {
        String longestLabel = this.mXAxis.getLongestLabel();
        this.mAxisLabelPaint.setTypeface(this.mXAxis.getTypeface());
        this.mAxisLabelPaint.setTextSize(this.mXAxis.getTextSize());
        FSize calcTextSize = Utils.calcTextSize(this.mAxisLabelPaint, longestLabel);
        float f = calcTextSize.width;
        float calcTextHeight = Utils.calcTextHeight(this.mAxisLabelPaint, "Q");
        FSize sizeOfRotatedRectangleByDegrees = Utils.getSizeOfRotatedRectangleByDegrees(f, calcTextHeight, this.mXAxis.getLabelRotationAngle());
        this.mXAxis.mLabelWidth = Math.round(f);
        this.mXAxis.mLabelHeight = Math.round(calcTextHeight);
        this.mXAxis.mLabelRotatedWidth = Math.round(sizeOfRotatedRectangleByDegrees.width);
        this.mXAxis.mLabelRotatedHeight = Math.round(sizeOfRotatedRectangleByDegrees.height);
        FSize.recycleInstance(sizeOfRotatedRectangleByDegrees);
        FSize.recycleInstance(calcTextSize);
    }

    protected void drawGridLine(Canvas canvas, float f, float f2, Path path) {
        path.moveTo(f, this.mViewPortHandler.contentBottom());
        path.lineTo(f, this.mViewPortHandler.contentTop());
        canvas.drawPath(path, this.mGridPaint);
        path.reset();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void drawLabel(Canvas canvas, String str, float f, float f2, MPPointF mPPointF, float f3) {
        Utils.drawXAxisValue(canvas, str, f, f2, this.mAxisLabelPaint, mPPointF, f3);
    }

    protected void drawLabels(Canvas canvas, float f, MPPointF mPPointF) {
        float labelRotationAngle = this.mXAxis.getLabelRotationAngle();
        boolean isCenterAxisLabelsEnabled = this.mXAxis.isCenterAxisLabelsEnabled();
        float[] fArr = new float[this.mXAxis.mEntryCount * 2];
        for (int i = 0; i < fArr.length; i += 2) {
            if (isCenterAxisLabelsEnabled) {
                fArr[i] = this.mXAxis.mCenteredEntries[i / 2];
            } else {
                fArr[i] = this.mXAxis.mEntries[i / 2];
            }
        }
        this.mTrans.pointValuesToPixel(fArr);
        for (int i2 = 0; i2 < fArr.length; i2 += 2) {
            float f2 = fArr[i2];
            if (this.mViewPortHandler.isInBoundsX(f2)) {
                String formattedValue = this.mXAxis.getValueFormatter().getFormattedValue(this.mXAxis.mEntries[i2 / 2], this.mXAxis);
                float f3 = f2;
                if (this.mXAxis.isAvoidFirstLastClippingEnabled()) {
                    if (i2 != this.mXAxis.mEntryCount - 1 || this.mXAxis.mEntryCount <= 1) {
                        f3 = f2;
                        if (i2 == 0) {
                            f3 = f2 + (Utils.calcTextWidth(this.mAxisLabelPaint, formattedValue) / 2.0f);
                        }
                    } else {
                        float calcTextWidth = Utils.calcTextWidth(this.mAxisLabelPaint, formattedValue);
                        f3 = f2;
                        if (calcTextWidth > this.mViewPortHandler.offsetRight() * 2.0f) {
                            f3 = f2;
                            if (f2 + calcTextWidth > this.mViewPortHandler.getChartWidth()) {
                                f3 = f2 - (calcTextWidth / 2.0f);
                            }
                        }
                    }
                }
                drawLabel(canvas, formattedValue, f3, f, mPPointF, labelRotationAngle);
            }
        }
    }

    public RectF getGridClippingRect() {
        this.mGridClippingRect.set(this.mViewPortHandler.getContentRect());
        this.mGridClippingRect.inset(-this.mAxis.getGridLineWidth(), 0.0f);
        return this.mGridClippingRect;
    }

    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void renderAxisLabels(Canvas canvas) {
        if (this.mXAxis.isEnabled() && this.mXAxis.isDrawLabelsEnabled()) {
            float yOffset = this.mXAxis.getYOffset();
            this.mAxisLabelPaint.setTypeface(this.mXAxis.getTypeface());
            this.mAxisLabelPaint.setTextSize(this.mXAxis.getTextSize());
            this.mAxisLabelPaint.setColor(this.mXAxis.getTextColor());
            MPPointF instance = MPPointF.getInstance(0.0f, 0.0f);
            if (this.mXAxis.getPosition() == XAxis.XAxisPosition.TOP) {
                instance.f160x = 0.5f;
                instance.f161y = 1.0f;
                drawLabels(canvas, this.mViewPortHandler.contentTop() - yOffset, instance);
            } else if (this.mXAxis.getPosition() == XAxis.XAxisPosition.TOP_INSIDE) {
                instance.f160x = 0.5f;
                instance.f161y = 1.0f;
                drawLabels(canvas, this.mViewPortHandler.contentTop() + yOffset + this.mXAxis.mLabelRotatedHeight, instance);
            } else if (this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTTOM) {
                instance.f160x = 0.5f;
                instance.f161y = 0.0f;
                drawLabels(canvas, this.mViewPortHandler.contentBottom() + yOffset, instance);
            } else if (this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTTOM_INSIDE) {
                instance.f160x = 0.5f;
                instance.f161y = 0.0f;
                drawLabels(canvas, (this.mViewPortHandler.contentBottom() - yOffset) - this.mXAxis.mLabelRotatedHeight, instance);
            } else {
                instance.f160x = 0.5f;
                instance.f161y = 1.0f;
                drawLabels(canvas, this.mViewPortHandler.contentTop() - yOffset, instance);
                instance.f160x = 0.5f;
                instance.f161y = 0.0f;
                drawLabels(canvas, this.mViewPortHandler.contentBottom() + yOffset, instance);
            }
            MPPointF.recycleInstance(instance);
        }
    }

    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void renderAxisLine(Canvas canvas) {
        if (this.mXAxis.isDrawAxisLineEnabled() && this.mXAxis.isEnabled()) {
            this.mAxisLinePaint.setColor(this.mXAxis.getAxisLineColor());
            this.mAxisLinePaint.setStrokeWidth(this.mXAxis.getAxisLineWidth());
            this.mAxisLinePaint.setPathEffect(this.mXAxis.getAxisLineDashPathEffect());
            if (this.mXAxis.getPosition() == XAxis.XAxisPosition.TOP || this.mXAxis.getPosition() == XAxis.XAxisPosition.TOP_INSIDE || this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.mViewPortHandler.contentLeft(), this.mViewPortHandler.contentTop(), this.mViewPortHandler.contentRight(), this.mViewPortHandler.contentTop(), this.mAxisLinePaint);
            }
            if (this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTTOM || this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTTOM_INSIDE || this.mXAxis.getPosition() == XAxis.XAxisPosition.BOTH_SIDED) {
                canvas.drawLine(this.mViewPortHandler.contentLeft(), this.mViewPortHandler.contentBottom(), this.mViewPortHandler.contentRight(), this.mViewPortHandler.contentBottom(), this.mAxisLinePaint);
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void renderGridLines(Canvas canvas) {
        if (this.mXAxis.isDrawGridLinesEnabled() && this.mXAxis.isEnabled()) {
            int save = canvas.save();
            canvas.clipRect(getGridClippingRect());
            if (this.mRenderGridLinesBuffer.length != this.mAxis.mEntryCount * 2) {
                this.mRenderGridLinesBuffer = new float[this.mXAxis.mEntryCount * 2];
            }
            float[] fArr = this.mRenderGridLinesBuffer;
            for (int i = 0; i < fArr.length; i += 2) {
                int i2 = i / 2;
                fArr[i] = this.mXAxis.mEntries[i2];
                fArr[i + 1] = this.mXAxis.mEntries[i2];
            }
            this.mTrans.pointValuesToPixel(fArr);
            setupGridPaint();
            Path path = this.mRenderGridLinesPath;
            path.reset();
            for (int i3 = 0; i3 < fArr.length; i3 += 2) {
                drawGridLine(canvas, fArr[i3], fArr[i3 + 1], path);
            }
            canvas.restoreToCount(save);
        }
    }

    public void renderLimitLineLabel(Canvas canvas, LimitLine limitLine, float[] fArr, float f) {
        String label = limitLine.getLabel();
        if (label != null && !label.equals("")) {
            this.mLimitLinePaint.setStyle(limitLine.getTextStyle());
            this.mLimitLinePaint.setPathEffect(null);
            this.mLimitLinePaint.setColor(limitLine.getTextColor());
            this.mLimitLinePaint.setStrokeWidth(0.5f);
            this.mLimitLinePaint.setTextSize(limitLine.getTextSize());
            float lineWidth = limitLine.getLineWidth() + limitLine.getXOffset();
            LimitLine.LimitLabelPosition labelPosition = limitLine.getLabelPosition();
            if (labelPosition == LimitLine.LimitLabelPosition.RIGHT_TOP) {
                float calcTextHeight = Utils.calcTextHeight(this.mLimitLinePaint, label);
                this.mLimitLinePaint.setTextAlign(Paint.Align.LEFT);
                canvas.drawText(label, fArr[0] + lineWidth, this.mViewPortHandler.contentTop() + f + calcTextHeight, this.mLimitLinePaint);
            } else if (labelPosition == LimitLine.LimitLabelPosition.RIGHT_BOTTOM) {
                this.mLimitLinePaint.setTextAlign(Paint.Align.LEFT);
                canvas.drawText(label, fArr[0] + lineWidth, this.mViewPortHandler.contentBottom() - f, this.mLimitLinePaint);
            } else if (labelPosition == LimitLine.LimitLabelPosition.LEFT_TOP) {
                this.mLimitLinePaint.setTextAlign(Paint.Align.RIGHT);
                canvas.drawText(label, fArr[0] - lineWidth, this.mViewPortHandler.contentTop() + f + Utils.calcTextHeight(this.mLimitLinePaint, label), this.mLimitLinePaint);
            } else {
                this.mLimitLinePaint.setTextAlign(Paint.Align.RIGHT);
                canvas.drawText(label, fArr[0] - lineWidth, this.mViewPortHandler.contentBottom() - f, this.mLimitLinePaint);
            }
        }
    }

    public void renderLimitLineLine(Canvas canvas, LimitLine limitLine, float[] fArr) {
        this.mLimitLineSegmentsBuffer[0] = fArr[0];
        this.mLimitLineSegmentsBuffer[1] = this.mViewPortHandler.contentTop();
        this.mLimitLineSegmentsBuffer[2] = fArr[0];
        this.mLimitLineSegmentsBuffer[3] = this.mViewPortHandler.contentBottom();
        this.mLimitLinePath.reset();
        this.mLimitLinePath.moveTo(this.mLimitLineSegmentsBuffer[0], this.mLimitLineSegmentsBuffer[1]);
        this.mLimitLinePath.lineTo(this.mLimitLineSegmentsBuffer[2], this.mLimitLineSegmentsBuffer[3]);
        this.mLimitLinePaint.setStyle(Paint.Style.STROKE);
        this.mLimitLinePaint.setColor(limitLine.getLineColor());
        this.mLimitLinePaint.setStrokeWidth(limitLine.getLineWidth());
        this.mLimitLinePaint.setPathEffect(limitLine.getDashPathEffect());
        canvas.drawPath(this.mLimitLinePath, this.mLimitLinePaint);
    }

    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    public void renderLimitLines(Canvas canvas) {
        List<LimitLine> limitLines = this.mXAxis.getLimitLines();
        if (limitLines != null && limitLines.size() > 0) {
            float[] fArr = this.mRenderLimitLinesBuffer;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            for (int i = 0; i < limitLines.size(); i++) {
                LimitLine limitLine = limitLines.get(i);
                if (limitLine.isEnabled()) {
                    int save = canvas.save();
                    this.mLimitLineClippingRect.set(this.mViewPortHandler.getContentRect());
                    this.mLimitLineClippingRect.inset(-limitLine.getLineWidth(), 0.0f);
                    canvas.clipRect(this.mLimitLineClippingRect);
                    fArr[0] = limitLine.getLimit();
                    fArr[1] = 0.0f;
                    this.mTrans.pointValuesToPixel(fArr);
                    renderLimitLineLine(canvas, limitLine, fArr);
                    renderLimitLineLabel(canvas, limitLine, fArr, limitLine.getYOffset() + 2.0f);
                    canvas.restoreToCount(save);
                }
            }
        }
    }

    protected void setupGridPaint() {
        this.mGridPaint.setColor(this.mXAxis.getGridColor());
        this.mGridPaint.setStrokeWidth(this.mXAxis.getGridLineWidth());
        this.mGridPaint.setPathEffect(this.mXAxis.getGridDashPathEffect());
    }
}
