package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Path;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.RadarData;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/YAxisRendererRadarChart.class */
public class YAxisRendererRadarChart extends YAxisRenderer {
    private RadarChart mChart;
    private Path mRenderLimitLinesPathBuffer = new Path();

    public YAxisRendererRadarChart(ViewPortHandler viewPortHandler, YAxis yAxis, RadarChart radarChart) {
        super(viewPortHandler, yAxis, null);
        this.mChart = radarChart;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [double] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [double] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [double] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [double] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [double] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [double] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [double] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 8 */
    @Override // com.github.mikephil.charting.renderer.AxisRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void computeAxisValues(float r6, float r7) {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.YAxisRendererRadarChart.computeAxisValues(float, float):void");
    }

    @Override // com.github.mikephil.charting.renderer.YAxisRenderer, com.github.mikephil.charting.renderer.AxisRenderer
    public void renderAxisLabels(Canvas canvas) {
        if (this.mYAxis.isEnabled() && this.mYAxis.isDrawLabelsEnabled()) {
            this.mAxisLabelPaint.setTypeface(this.mYAxis.getTypeface());
            this.mAxisLabelPaint.setTextSize(this.mYAxis.getTextSize());
            this.mAxisLabelPaint.setColor(this.mYAxis.getTextColor());
            MPPointF centerOffsets = this.mChart.getCenterOffsets();
            MPPointF instance = MPPointF.getInstance(0.0f, 0.0f);
            float factor = this.mChart.getFactor();
            int i = this.mYAxis.isDrawTopYLabelEntryEnabled() ? this.mYAxis.mEntryCount : this.mYAxis.mEntryCount - 1;
            for (int i2 = !this.mYAxis.isDrawBottomYLabelEntryEnabled(); i2 < i; i2++) {
                Utils.getPosition(centerOffsets, (this.mYAxis.mEntries[i2] - this.mYAxis.mAxisMinimum) * factor, this.mChart.getRotationAngle(), instance);
                canvas.drawText(this.mYAxis.getFormattedLabel(i2), instance.f160x + 10.0f, instance.f161y, this.mAxisLabelPaint);
            }
            MPPointF.recycleInstance(centerOffsets);
            MPPointF.recycleInstance(instance);
        }
    }

    @Override // com.github.mikephil.charting.renderer.YAxisRenderer, com.github.mikephil.charting.renderer.AxisRenderer
    public void renderLimitLines(Canvas canvas) {
        List<LimitLine> limitLines = this.mYAxis.getLimitLines();
        if (limitLines != null) {
            float sliceAngle = this.mChart.getSliceAngle();
            float factor = this.mChart.getFactor();
            MPPointF centerOffsets = this.mChart.getCenterOffsets();
            MPPointF instance = MPPointF.getInstance(0.0f, 0.0f);
            for (int i = 0; i < limitLines.size(); i++) {
                LimitLine limitLine = limitLines.get(i);
                if (limitLine.isEnabled()) {
                    this.mLimitLinePaint.setColor(limitLine.getLineColor());
                    this.mLimitLinePaint.setPathEffect(limitLine.getDashPathEffect());
                    this.mLimitLinePaint.setStrokeWidth(limitLine.getLineWidth());
                    float limit = limitLine.getLimit();
                    float yChartMin = this.mChart.getYChartMin();
                    Path path = this.mRenderLimitLinesPathBuffer;
                    path.reset();
                    for (int i2 = 0; i2 < ((RadarData) this.mChart.getData()).getMaxEntryCountSet().getEntryCount(); i2++) {
                        Utils.getPosition(centerOffsets, (limit - yChartMin) * factor, (i2 * sliceAngle) + this.mChart.getRotationAngle(), instance);
                        if (i2 == 0) {
                            path.moveTo(instance.f160x, instance.f161y);
                        } else {
                            path.lineTo(instance.f160x, instance.f161y);
                        }
                    }
                    path.close();
                    canvas.drawPath(path, this.mLimitLinePaint);
                }
            }
            MPPointF.recycleInstance(centerOffsets);
            MPPointF.recycleInstance(instance);
        }
    }
}
