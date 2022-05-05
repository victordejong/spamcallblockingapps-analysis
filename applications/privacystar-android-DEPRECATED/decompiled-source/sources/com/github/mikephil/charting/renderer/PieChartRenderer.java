package com.github.mikephil.charting.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p001v4.view.ViewCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/PieChartRenderer.class */
public class PieChartRenderer extends DataRenderer {
    protected Canvas mBitmapCanvas;
    private CharSequence mCenterTextLastValue;
    private StaticLayout mCenterTextLayout;
    protected PieChart mChart;
    protected WeakReference<Bitmap> mDrawBitmap;
    private RectF mCenterTextLastBounds = new RectF();
    private RectF[] mRectBuffer = {new RectF(), new RectF(), new RectF()};
    private Path mPathBuffer = new Path();
    private RectF mInnerRectBuffer = new RectF();
    private Path mHoleCirclePath = new Path();
    protected Path mDrawCenterTextPathBuffer = new Path();
    protected RectF mDrawHighlightedRectF = new RectF();
    protected Paint mHolePaint = new Paint(1);
    protected Paint mTransparentCirclePaint = new Paint(1);
    private TextPaint mCenterTextPaint = new TextPaint(1);
    private Paint mEntryLabelsPaint = new Paint(1);
    protected Paint mValueLinePaint = new Paint(1);

    public PieChartRenderer(PieChart pieChart, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = pieChart;
        this.mHolePaint.setColor(-1);
        this.mHolePaint.setStyle(Paint.Style.FILL);
        this.mTransparentCirclePaint.setColor(-1);
        this.mTransparentCirclePaint.setStyle(Paint.Style.FILL);
        this.mTransparentCirclePaint.setAlpha(105);
        this.mCenterTextPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mCenterTextPaint.setTextSize(Utils.convertDpToPixel(12.0f));
        this.mValuePaint.setTextSize(Utils.convertDpToPixel(13.0f));
        this.mValuePaint.setColor(-1);
        this.mValuePaint.setTextAlign(Paint.Align.CENTER);
        this.mEntryLabelsPaint.setColor(-1);
        this.mEntryLabelsPaint.setTextAlign(Paint.Align.CENTER);
        this.mEntryLabelsPaint.setTextSize(Utils.convertDpToPixel(13.0f));
        this.mValueLinePaint.setStyle(Paint.Style.STROKE);
    }

    protected float calculateMinimumRadiusForSpacedSlice(MPPointF mPPointF, float f, float f2, float f3, float f4, float f5, float f6) {
        double d = (f5 + f6) * 0.017453292f;
        float cos = mPPointF.f160x + (((float) Math.cos(d)) * f);
        float sin = mPPointF.f161y + (((float) Math.sin(d)) * f);
        double d2 = (f5 + (f6 / 2.0f)) * 0.017453292f;
        return (float) ((f - ((float) ((Math.sqrt(Math.pow(cos - f3, 2.0d) + Math.pow(sin - f4, 2.0d)) / 2.0d) * Math.tan(0.017453292519943295d * ((180.0d - f2) / 2.0d))))) - Math.sqrt(Math.pow((mPPointF.f160x + (((float) Math.cos(d2)) * f)) - ((cos + f3) / 2.0f), 2.0d) + Math.pow((mPPointF.f161y + (((float) Math.sin(d2)) * f)) - ((sin + f4) / 2.0f), 2.0d)));
    }

    protected void drawCenterText(Canvas canvas) {
        CharSequence centerText = this.mChart.getCenterText();
        if (this.mChart.isDrawCenterTextEnabled() && centerText != null) {
            MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
            MPPointF centerTextOffset = this.mChart.getCenterTextOffset();
            float f = centerCircleBox.f160x + centerTextOffset.f160x;
            float f2 = centerCircleBox.f161y + centerTextOffset.f161y;
            float radius = (!this.mChart.isDrawHoleEnabled() || this.mChart.isDrawSlicesUnderHoleEnabled()) ? this.mChart.getRadius() : this.mChart.getRadius() * (this.mChart.getHoleRadius() / 100.0f);
            RectF rectF = this.mRectBuffer[0];
            rectF.left = f - radius;
            rectF.top = f2 - radius;
            rectF.right = f + radius;
            rectF.bottom = f2 + radius;
            RectF rectF2 = this.mRectBuffer[1];
            rectF2.set(rectF);
            float centerTextRadiusPercent = this.mChart.getCenterTextRadiusPercent() / 100.0f;
            if (centerTextRadiusPercent > 0.0d) {
                rectF2.inset((rectF2.width() - (rectF2.width() * centerTextRadiusPercent)) / 2.0f, (rectF2.height() - (rectF2.height() * centerTextRadiusPercent)) / 2.0f);
            }
            if (!centerText.equals(this.mCenterTextLastValue) || !rectF2.equals(this.mCenterTextLastBounds)) {
                this.mCenterTextLastBounds.set(rectF2);
                this.mCenterTextLastValue = centerText;
                this.mCenterTextLayout = new StaticLayout(centerText, 0, centerText.length(), this.mCenterTextPaint, (int) Math.max(Math.ceil(this.mCenterTextLastBounds.width()), 1.0d), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            }
            float height = this.mCenterTextLayout.getHeight();
            canvas.save();
            if (Build.VERSION.SDK_INT >= 18) {
                Path path = this.mDrawCenterTextPathBuffer;
                path.reset();
                path.addOval(rectF, Path.Direction.CW);
                canvas.clipPath(path);
            }
            canvas.translate(rectF2.left, rectF2.top + ((rectF2.height() - height) / 2.0f));
            this.mCenterTextLayout.draw(canvas);
            canvas.restore();
            MPPointF.recycleInstance(centerCircleBox);
            MPPointF.recycleInstance(centerTextOffset);
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        int chartWidth = (int) this.mViewPortHandler.getChartWidth();
        int chartHeight = (int) this.mViewPortHandler.getChartHeight();
        if (!(this.mDrawBitmap != null && this.mDrawBitmap.get().getWidth() == chartWidth && this.mDrawBitmap.get().getHeight() == chartHeight)) {
            if (chartWidth > 0 && chartHeight > 0) {
                this.mDrawBitmap = new WeakReference<>(Bitmap.createBitmap(chartWidth, chartHeight, Bitmap.Config.ARGB_4444));
                this.mBitmapCanvas = new Canvas(this.mDrawBitmap.get());
            } else {
                return;
            }
        }
        this.mDrawBitmap.get().eraseColor(0);
        for (IPieDataSet iPieDataSet : ((PieData) this.mChart.getData()).getDataSets()) {
            if (iPieDataSet.isVisible() && iPieDataSet.getEntryCount() > 0) {
                drawDataSet(canvas, iPieDataSet);
            }
        }
    }

    protected void drawDataSet(Canvas canvas, IPieDataSet iPieDataSet) {
        PieChartRenderer pieChartRenderer;
        float f;
        PieChartRenderer pieChartRenderer2 = this;
        float rotationAngle = pieChartRenderer2.mChart.getRotationAngle();
        float phaseX = pieChartRenderer2.mAnimator.getPhaseX();
        float phaseY = pieChartRenderer2.mAnimator.getPhaseY();
        RectF circleBox = pieChartRenderer2.mChart.getCircleBox();
        int entryCount = iPieDataSet.getEntryCount();
        float[] drawAngles = pieChartRenderer2.mChart.getDrawAngles();
        MPPointF centerCircleBox = pieChartRenderer2.mChart.getCenterCircleBox();
        float radius = pieChartRenderer2.mChart.getRadius();
        boolean z = pieChartRenderer2.mChart.isDrawHoleEnabled() && !pieChartRenderer2.mChart.isDrawSlicesUnderHoleEnabled();
        float holeRadius = z ? (pieChartRenderer2.mChart.getHoleRadius() / 100.0f) * radius : 0.0f;
        int i = 0;
        for (int i2 = 0; i2 < entryCount; i2++) {
            i = i;
            if (Math.abs(iPieDataSet.getEntryForIndex(i2).getY()) > Utils.FLOAT_EPSILON) {
                i++;
            }
        }
        float sliceSpace = i <= 1 ? 0.0f : pieChartRenderer2.getSliceSpace(iPieDataSet);
        float f2 = 0.0f;
        for (int i3 = 0; i3 < entryCount; i3++) {
            float f3 = drawAngles[i3];
            if (Math.abs(iPieDataSet.getEntryForIndex(i3).getY()) > Utils.FLOAT_EPSILON && !pieChartRenderer2.mChart.needsHighlight(i3)) {
                boolean z2 = sliceSpace > 0.0f && f3 <= 180.0f;
                pieChartRenderer2.mRenderPaint.setColor(iPieDataSet.getColor(i3));
                float f4 = i == 1 ? 0.0f : sliceSpace / (radius * 0.017453292f);
                float f5 = rotationAngle + ((f2 + (f4 / 2.0f)) * phaseY);
                float f6 = (f3 - f4) * phaseY;
                float f7 = f6;
                if (f6 < 0.0f) {
                    f7 = 0.0f;
                }
                pieChartRenderer2.mPathBuffer.reset();
                double d = f5 * 0.017453292f;
                float cos = centerCircleBox.f160x + (((float) Math.cos(d)) * radius);
                float sin = centerCircleBox.f161y + (((float) Math.sin(d)) * radius);
                int i4 = (f7 > 360.0f ? 1 : (f7 == 360.0f ? 0 : -1));
                if (i4 < 0 || f7 % 360.0f > Utils.FLOAT_EPSILON) {
                    pieChartRenderer2.mPathBuffer.moveTo(cos, sin);
                    pieChartRenderer2.mPathBuffer.arcTo(circleBox, f5, f7);
                } else {
                    pieChartRenderer2.mPathBuffer.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, radius, Path.Direction.CW);
                }
                pieChartRenderer2.mInnerRectBuffer.set(centerCircleBox.f160x - holeRadius, centerCircleBox.f161y - holeRadius, centerCircleBox.f160x + holeRadius, centerCircleBox.f161y + holeRadius);
                if (!z || (holeRadius <= 0.0f && !z2)) {
                    pieChartRenderer = pieChartRenderer2;
                    centerCircleBox = centerCircleBox;
                    if (f7 % 360.0f > Utils.FLOAT_EPSILON) {
                        if (z2) {
                            float calculateMinimumRadiusForSpacedSlice = pieChartRenderer2.calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f3 * phaseY, cos, sin, f5, f7);
                            double d2 = (f5 + (f7 / 2.0f)) * 0.017453292f;
                            pieChartRenderer2.mPathBuffer.lineTo(centerCircleBox.f160x + (((float) Math.cos(d2)) * calculateMinimumRadiusForSpacedSlice), centerCircleBox.f161y + (calculateMinimumRadiusForSpacedSlice * ((float) Math.sin(d2))));
                            pieChartRenderer = pieChartRenderer2;
                            centerCircleBox = centerCircleBox;
                        } else {
                            pieChartRenderer2.mPathBuffer.lineTo(centerCircleBox.f160x, centerCircleBox.f161y);
                            centerCircleBox = centerCircleBox;
                            pieChartRenderer = pieChartRenderer2;
                        }
                    }
                } else {
                    if (z2) {
                        float calculateMinimumRadiusForSpacedSlice2 = pieChartRenderer2.calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f3 * phaseY, cos, sin, f5, f7);
                        float f8 = calculateMinimumRadiusForSpacedSlice2;
                        if (calculateMinimumRadiusForSpacedSlice2 < 0.0f) {
                            f8 = -calculateMinimumRadiusForSpacedSlice2;
                        }
                        f = Math.max(holeRadius, f8);
                    } else {
                        f = holeRadius;
                    }
                    float f9 = (i == 1 || f == 0.0f) ? 0.0f : sliceSpace / (f * 0.017453292f);
                    float f10 = f9 / 2.0f;
                    float f11 = (f3 - f9) * phaseY;
                    float f12 = f11;
                    if (f11 < 0.0f) {
                        f12 = 0.0f;
                    }
                    float f13 = ((f2 + f10) * phaseY) + rotationAngle + f12;
                    if (i4 < 0 || f7 % 360.0f > Utils.FLOAT_EPSILON) {
                        double d3 = f13 * 0.017453292f;
                        this.mPathBuffer.lineTo(centerCircleBox.f160x + (((float) Math.cos(d3)) * f), centerCircleBox.f161y + (f * ((float) Math.sin(d3))));
                        this.mPathBuffer.arcTo(this.mInnerRectBuffer, f13, -f12);
                    } else {
                        this.mPathBuffer.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, f, Path.Direction.CCW);
                    }
                    pieChartRenderer = this;
                }
                pieChartRenderer.mPathBuffer.close();
                pieChartRenderer.mBitmapCanvas.drawPath(pieChartRenderer.mPathBuffer, pieChartRenderer.mRenderPaint);
                pieChartRenderer2 = pieChartRenderer;
            }
            f2 += f3 * phaseX;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    protected void drawEntryLabel(Canvas canvas, String str, float f, float f2) {
        canvas.drawText(str, f, f2, this.mEntryLabelsPaint);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        drawHole(canvas);
        canvas.drawBitmap(this.mDrawBitmap.get(), 0.0f, 0.0f, (Paint) null);
        drawCenterText(canvas);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        IPieDataSet dataSetByIndex;
        float f;
        float f2;
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        boolean z = this.mChart.isDrawHoleEnabled() && !this.mChart.isDrawSlicesUnderHoleEnabled();
        float holeRadius = z ? (this.mChart.getHoleRadius() / 100.0f) * radius : 0.0f;
        RectF rectF = this.mDrawHighlightedRectF;
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int i = 0; i < highlightArr.length; i++) {
            int x = (int) highlightArr[i].getX();
            if (x < drawAngles.length && (dataSetByIndex = ((PieData) this.mChart.getData()).getDataSetByIndex(highlightArr[i].getDataSetIndex())) != null && dataSetByIndex.isHighlightEnabled()) {
                int entryCount = dataSetByIndex.getEntryCount();
                int i2 = 0;
                for (int i3 = 0; i3 < entryCount; i3++) {
                    i2 = i2;
                    if (Math.abs(dataSetByIndex.getEntryForIndex(i3).getY()) > Utils.FLOAT_EPSILON) {
                        i2++;
                    }
                }
                float f3 = x == 0 ? 0.0f : absoluteAngles[x - 1] * phaseX;
                float sliceSpace = i2 <= 1 ? 0.0f : dataSetByIndex.getSliceSpace();
                float f4 = drawAngles[x];
                float selectionShift = dataSetByIndex.getSelectionShift();
                float f5 = radius + selectionShift;
                rectF.set(this.mChart.getCircleBox());
                float f6 = -selectionShift;
                rectF.inset(f6, f6);
                boolean z2 = sliceSpace > 0.0f && f4 <= 180.0f;
                this.mRenderPaint.setColor(dataSetByIndex.getColor(x));
                float f7 = i2 == 1 ? 0.0f : sliceSpace / (radius * 0.017453292f);
                float f8 = i2 == 1 ? 0.0f : sliceSpace / (f5 * 0.017453292f);
                float f9 = rotationAngle + ((f3 + (f7 / 2.0f)) * phaseY);
                float f10 = (f4 - f7) * phaseY;
                if (f10 < 0.0f) {
                    f10 = 0.0f;
                }
                float f11 = ((f3 + (f8 / 2.0f)) * phaseY) + rotationAngle;
                float f12 = (f4 - f8) * phaseY;
                float f13 = f12;
                if (f12 < 0.0f) {
                    f13 = 0.0f;
                }
                this.mPathBuffer.reset();
                int i4 = (f10 > 360.0f ? 1 : (f10 == 360.0f ? 0 : -1));
                if (i4 < 0 || f10 % 360.0f > Utils.FLOAT_EPSILON) {
                    Path path = this.mPathBuffer;
                    float f14 = centerCircleBox.f160x;
                    double d = f11 * 0.017453292f;
                    path.moveTo(f14 + (((float) Math.cos(d)) * f5), centerCircleBox.f161y + (f5 * ((float) Math.sin(d))));
                    this.mPathBuffer.arcTo(rectF, f11, f13);
                } else {
                    this.mPathBuffer.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, f5, Path.Direction.CW);
                }
                if (z2) {
                    float f15 = centerCircleBox.f160x;
                    double d2 = f9 * 0.017453292f;
                    f = calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f4 * phaseY, (((float) Math.cos(d2)) * radius) + f15, centerCircleBox.f161y + (((float) Math.sin(d2)) * radius), f9, f10);
                } else {
                    f = 0.0f;
                }
                this.mInnerRectBuffer.set(centerCircleBox.f160x - holeRadius, centerCircleBox.f161y - holeRadius, centerCircleBox.f160x + holeRadius, centerCircleBox.f161y + holeRadius);
                if (z && (holeRadius > 0.0f || z2)) {
                    if (z2) {
                        float f16 = f;
                        if (f < 0.0f) {
                            f16 = -f;
                        }
                        f2 = Math.max(holeRadius, f16);
                    } else {
                        f2 = holeRadius;
                    }
                    float f17 = (i2 == 1 || f2 == 0.0f) ? 0.0f : sliceSpace / (f2 * 0.017453292f);
                    float f18 = f17 / 2.0f;
                    float f19 = (f4 - f17) * phaseY;
                    float f20 = f19;
                    if (f19 < 0.0f) {
                        f20 = 0.0f;
                    }
                    float f21 = rotationAngle + ((f3 + f18) * phaseY) + f20;
                    if (i4 < 0 || f10 % 360.0f > Utils.FLOAT_EPSILON) {
                        Path path2 = this.mPathBuffer;
                        float f22 = centerCircleBox.f160x;
                        double d3 = f21 * 0.017453292f;
                        path2.lineTo(f22 + (((float) Math.cos(d3)) * f2), centerCircleBox.f161y + (f2 * ((float) Math.sin(d3))));
                        this.mPathBuffer.arcTo(this.mInnerRectBuffer, f21, -f20);
                    } else {
                        this.mPathBuffer.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, f2, Path.Direction.CCW);
                    }
                } else if (f10 % 360.0f > Utils.FLOAT_EPSILON) {
                    if (z2) {
                        float f23 = centerCircleBox.f160x;
                        double d4 = (f9 + (f10 / 2.0f)) * 0.017453292f;
                        this.mPathBuffer.lineTo(f23 + (((float) Math.cos(d4)) * f), centerCircleBox.f161y + (f * ((float) Math.sin(d4))));
                    } else {
                        this.mPathBuffer.lineTo(centerCircleBox.f160x, centerCircleBox.f161y);
                    }
                }
                this.mPathBuffer.close();
                this.mBitmapCanvas.drawPath(this.mPathBuffer, this.mRenderPaint);
            }
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    protected void drawHole(Canvas canvas) {
        if (this.mChart.isDrawHoleEnabled() && this.mBitmapCanvas != null) {
            float radius = this.mChart.getRadius();
            float holeRadius = (this.mChart.getHoleRadius() / 100.0f) * radius;
            MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
            if (Color.alpha(this.mHolePaint.getColor()) > 0) {
                this.mBitmapCanvas.drawCircle(centerCircleBox.f160x, centerCircleBox.f161y, holeRadius, this.mHolePaint);
            }
            if (Color.alpha(this.mTransparentCirclePaint.getColor()) > 0 && this.mChart.getTransparentCircleRadius() > this.mChart.getHoleRadius()) {
                int alpha = this.mTransparentCirclePaint.getAlpha();
                float transparentCircleRadius = this.mChart.getTransparentCircleRadius() / 100.0f;
                this.mTransparentCirclePaint.setAlpha((int) (alpha * this.mAnimator.getPhaseX() * this.mAnimator.getPhaseY()));
                this.mHoleCirclePath.reset();
                this.mHoleCirclePath.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, radius * transparentCircleRadius, Path.Direction.CW);
                this.mHoleCirclePath.addCircle(centerCircleBox.f160x, centerCircleBox.f161y, holeRadius, Path.Direction.CCW);
                this.mBitmapCanvas.drawPath(this.mHoleCirclePath, this.mTransparentCirclePaint);
                this.mTransparentCirclePaint.setAlpha(alpha);
            }
            MPPointF.recycleInstance(centerCircleBox);
        }
    }

    protected void drawRoundedSlices(Canvas canvas) {
        if (this.mChart.isDrawRoundedSlicesEnabled()) {
            IPieDataSet dataSet = ((PieData) this.mChart.getData()).getDataSet();
            if (dataSet.isVisible()) {
                float phaseX = this.mAnimator.getPhaseX();
                float phaseY = this.mAnimator.getPhaseY();
                MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
                float radius = this.mChart.getRadius();
                float holeRadius = (radius - ((this.mChart.getHoleRadius() * radius) / 100.0f)) / 2.0f;
                float[] drawAngles = this.mChart.getDrawAngles();
                float rotationAngle = this.mChart.getRotationAngle();
                for (int i = 0; i < dataSet.getEntryCount(); i++) {
                    float f = drawAngles[i];
                    if (Math.abs(dataSet.getEntryForIndex(i).getY()) > Utils.FLOAT_EPSILON) {
                        double d = radius - holeRadius;
                        double d2 = (rotationAngle + f) * phaseY;
                        float cos = (float) ((Math.cos(Math.toRadians(d2)) * d) + centerCircleBox.f160x);
                        float sin = (float) ((d * Math.sin(Math.toRadians(d2))) + centerCircleBox.f161y);
                        this.mRenderPaint.setColor(dataSet.getColor(i));
                        this.mBitmapCanvas.drawCircle(cos, sin, holeRadius, this.mRenderPaint);
                    }
                    rotationAngle += f * phaseX;
                }
                MPPointF.recycleInstance(centerCircleBox);
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        float f;
        float f2;
        float f3;
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float holeRadius = this.mChart.getHoleRadius() / 100.0f;
        float f4 = (radius / 10.0f) * 3.6f;
        if (this.mChart.isDrawHoleEnabled()) {
            f4 = (radius - (radius * holeRadius)) / 2.0f;
        }
        float f5 = radius - f4;
        PieData pieData = (PieData) this.mChart.getData();
        List<IPieDataSet> dataSets = pieData.getDataSets();
        float yValueSum = pieData.getYValueSum();
        boolean isDrawEntryLabelsEnabled = this.mChart.isDrawEntryLabelsEnabled();
        canvas.save();
        float convertDpToPixel = Utils.convertDpToPixel(5.0f);
        int i = 0;
        int i2 = 0;
        while (i2 < dataSets.size()) {
            IPieDataSet iPieDataSet = dataSets.get(i2);
            boolean isDrawValuesEnabled = iPieDataSet.isDrawValuesEnabled();
            if (isDrawValuesEnabled || isDrawEntryLabelsEnabled) {
                PieDataSet.ValuePosition xValuePosition = iPieDataSet.getXValuePosition();
                PieDataSet.ValuePosition yValuePosition = iPieDataSet.getYValuePosition();
                applyValueTextStyle(iPieDataSet);
                float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, "Q") + Utils.convertDpToPixel(4.0f);
                IValueFormatter valueFormatter = iPieDataSet.getValueFormatter();
                int entryCount = iPieDataSet.getEntryCount();
                this.mValueLinePaint.setColor(iPieDataSet.getValueLineColor());
                this.mValueLinePaint.setStrokeWidth(Utils.convertDpToPixel(iPieDataSet.getValueLineWidth()));
                float sliceSpace = getSliceSpace(iPieDataSet);
                MPPointF instance = MPPointF.getInstance(iPieDataSet.getIconsOffset());
                instance.f160x = Utils.convertDpToPixel(instance.f160x);
                instance.f161y = Utils.convertDpToPixel(instance.f161y);
                int i3 = 0;
                MPPointF mPPointF = centerCircleBox;
                while (i3 < entryCount) {
                    PieEntry entryForIndex = iPieDataSet.getEntryForIndex(i3);
                    float f6 = rotationAngle + (((i == 0 ? 0.0f : absoluteAngles[i - 1] * phaseX) + ((drawAngles[i] - ((sliceSpace / (f5 * 0.017453292f)) / 2.0f)) / 2.0f)) * phaseY);
                    float y = this.mChart.isUsePercentValuesEnabled() ? (entryForIndex.getY() / yValueSum) * 100.0f : entryForIndex.getY();
                    double d = f6 * 0.017453292f;
                    float cos = (float) Math.cos(d);
                    float sin = (float) Math.sin(d);
                    boolean z = isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE;
                    boolean z2 = isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE;
                    boolean z3 = isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE;
                    boolean z4 = isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE;
                    if (z || z2) {
                        float valueLinePart1Length = iPieDataSet.getValueLinePart1Length();
                        float valueLinePart2Length = iPieDataSet.getValueLinePart2Length();
                        float valueLinePart1OffsetPercentage = iPieDataSet.getValueLinePart1OffsetPercentage() / 100.0f;
                        if (this.mChart.isDrawHoleEnabled()) {
                            float f7 = radius * holeRadius;
                            f = ((radius - f7) * valueLinePart1OffsetPercentage) + f7;
                        } else {
                            f = radius * valueLinePart1OffsetPercentage;
                        }
                        float abs = iPieDataSet.isValueLineVariableLength() ? valueLinePart2Length * f5 * ((float) Math.abs(Math.sin(d))) : valueLinePart2Length * f5;
                        float f8 = mPPointF.f160x;
                        float f9 = mPPointF.f161y;
                        float f10 = (valueLinePart1Length + 1.0f) * f5;
                        float f11 = mPPointF.f160x + (f10 * cos);
                        float f12 = (f10 * sin) + mPPointF.f161y;
                        double d2 = f6 % 360.0d;
                        if (d2 < 90.0d || d2 > 270.0d) {
                            f2 = f11 + abs;
                            this.mValuePaint.setTextAlign(Paint.Align.LEFT);
                            if (z) {
                                this.mEntryLabelsPaint.setTextAlign(Paint.Align.LEFT);
                            }
                            f3 = f2 + convertDpToPixel;
                        } else {
                            float f13 = f11 - abs;
                            this.mValuePaint.setTextAlign(Paint.Align.RIGHT);
                            if (z) {
                                this.mEntryLabelsPaint.setTextAlign(Paint.Align.RIGHT);
                            }
                            f2 = f13;
                            f3 = f13 - convertDpToPixel;
                        }
                        if (iPieDataSet.getValueLineColor() != 1122867) {
                            canvas.drawLine((f * cos) + f8, (f * sin) + f9, f11, f12, this.mValueLinePaint);
                            canvas.drawLine(f11, f12, f2, f12, this.mValueLinePaint);
                        }
                        if (z && z2) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f3, f12, iPieDataSet.getValueTextColor(i3));
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f3, f12 + calcTextHeight);
                            }
                        } else if (z) {
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f3, f12 + (calcTextHeight / 2.0f));
                            }
                        } else if (z2) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f3, f12 + (calcTextHeight / 2.0f), iPieDataSet.getValueTextColor(i3));
                        }
                    }
                    if (z3 || z4) {
                        float f14 = (f5 * cos) + mPPointF.f160x;
                        float f15 = (f5 * sin) + mPPointF.f161y;
                        this.mValuePaint.setTextAlign(Paint.Align.CENTER);
                        if (z3 && z4) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f14, f15, iPieDataSet.getValueTextColor(i3));
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f14, f15 + calcTextHeight);
                            }
                        } else if (z3) {
                            if (i3 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f14, f15 + (calcTextHeight / 2.0f));
                            }
                        } else if (z4) {
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f14, f15 + (calcTextHeight / 2.0f), iPieDataSet.getValueTextColor(i3));
                        }
                    }
                    if (entryForIndex.getIcon() != null && iPieDataSet.isDrawIconsEnabled()) {
                        Drawable icon = entryForIndex.getIcon();
                        Utils.drawImage(canvas, icon, (int) (((f5 + instance.f161y) * cos) + mPPointF.f160x), (int) (((f5 + instance.f161y) * sin) + mPPointF.f161y + instance.f160x), icon.getIntrinsicWidth(), icon.getIntrinsicHeight());
                    }
                    i++;
                    i3++;
                    pieData = pieData;
                    mPPointF = mPPointF;
                    absoluteAngles = absoluteAngles;
                }
                centerCircleBox = mPPointF;
                rotationAngle = rotationAngle;
                absoluteAngles = absoluteAngles;
                MPPointF.recycleInstance(instance);
                radius = radius;
                drawAngles = drawAngles;
                dataSets = dataSets;
                i2 = i2;
                pieData = pieData;
            } else {
                centerCircleBox = centerCircleBox;
                pieData = pieData;
                dataSets = dataSets;
                rotationAngle = rotationAngle;
                drawAngles = drawAngles;
                absoluteAngles = absoluteAngles;
                radius = radius;
            }
            i2++;
        }
        MPPointF.recycleInstance(centerCircleBox);
        canvas.restore();
    }

    public TextPaint getPaintCenterText() {
        return this.mCenterTextPaint;
    }

    public Paint getPaintEntryLabels() {
        return this.mEntryLabelsPaint;
    }

    public Paint getPaintHole() {
        return this.mHolePaint;
    }

    public Paint getPaintTransparentCircle() {
        return this.mTransparentCirclePaint;
    }

    protected float getSliceSpace(IPieDataSet iPieDataSet) {
        if (!iPieDataSet.isAutomaticallyDisableSliceSpacingEnabled()) {
            return iPieDataSet.getSliceSpace();
        }
        return iPieDataSet.getSliceSpace() / this.mViewPortHandler.getSmallestContentExtension() > (iPieDataSet.getYMin() / ((PieData) this.mChart.getData()).getYValueSum()) * 2.0f ? 0.0f : iPieDataSet.getSliceSpace();
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
    }

    public void releaseBitmap() {
        if (this.mBitmapCanvas != null) {
            this.mBitmapCanvas.setBitmap(null);
            this.mBitmapCanvas = null;
        }
        if (this.mDrawBitmap != null) {
            this.mDrawBitmap.get().recycle();
            this.mDrawBitmap.clear();
            this.mDrawBitmap = null;
        }
    }
}
