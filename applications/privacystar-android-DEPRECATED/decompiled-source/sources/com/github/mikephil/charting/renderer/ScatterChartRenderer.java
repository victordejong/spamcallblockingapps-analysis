package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider;
import com.github.mikephil.charting.utils.ViewPortHandler;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/ScatterChartRenderer.class */
public class ScatterChartRenderer extends LineScatterCandleRadarRenderer {
    protected ScatterDataProvider mChart;
    float[] mPixelBuffer = new float[2];

    public ScatterChartRenderer(ScatterDataProvider scatterDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = scatterDataProvider;
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        for (T t : this.mChart.getScatterData().getDataSets()) {
            if (t.isVisible()) {
                drawDataSet(canvas, t);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawDataSet(android.graphics.Canvas r9, com.github.mikephil.charting.interfaces.datasets.IScatterDataSet r10) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.ScatterChartRenderer.drawDataSet(android.graphics.Canvas, com.github.mikephil.charting.interfaces.datasets.IScatterDataSet):void");
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawHighlighted(android.graphics.Canvas r7, com.github.mikephil.charting.highlight.Highlight[] r8) {
        /*
            r6 = this;
            r0 = r6
            com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider r0 = r0.mChart
            com.github.mikephil.charting.data.ScatterData r0 = r0.getScatterData()
            r9 = r0
            r0 = r8
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0011:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x00b0
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r9
            r1 = r12
            int r1 = r1.getDataSetIndex()
            com.github.mikephil.charting.interfaces.datasets.IDataSet r0 = r0.getDataSetByIndex(r1)
            com.github.mikephil.charting.interfaces.datasets.IScatterDataSet r0 = (com.github.mikephil.charting.interfaces.datasets.IScatterDataSet) r0
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x00aa
            r0 = r13
            boolean r0 = r0.isHighlightEnabled()
            if (r0 != 0) goto L_0x003e
            goto L_0x00aa
        L_0x003e:
            r0 = r13
            r1 = r12
            float r1 = r1.getX()
            r2 = r12
            float r2 = r2.getY()
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForXValue(r1, r2)
            r14 = r0
            r0 = r6
            r1 = r14
            r2 = r13
            boolean r0 = r0.isInBoundsX(r1, r2)
            if (r0 != 0) goto L_0x005f
            goto L_0x00aa
        L_0x005f:
            r0 = r6
            com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider r0 = r0.mChart
            r1 = r13
            com.github.mikephil.charting.components.YAxis$AxisDependency r1 = r1.getAxisDependency()
            com.github.mikephil.charting.utils.Transformer r0 = r0.getTransformer(r1)
            r1 = r14
            float r1 = r1.getX()
            r2 = r14
            float r2 = r2.getY()
            r3 = r6
            com.github.mikephil.charting.animation.ChartAnimator r3 = r3.mAnimator
            float r3 = r3.getPhaseY()
            float r2 = r2 * r3
            com.github.mikephil.charting.utils.MPPointD r0 = r0.getPixelForValues(r1, r2)
            r14 = r0
            r0 = r12
            r1 = r14
            double r1 = r1.f158x
            float r1 = (float) r1
            r2 = r14
            double r2 = r2.f159y
            float r2 = (float) r2
            r0.setDraw(r1, r2)
            r0 = r6
            r1 = r7
            r2 = r14
            double r2 = r2.f158x
            float r2 = (float) r2
            r3 = r14
            double r3 = r3.f159y
            float r3 = (float) r3
            r4 = r13
            r0.drawHighlightLines(r1, r2, r3, r4)
        L_0x00aa:
            int r11 = r11 + 1
            goto L_0x0011
        L_0x00b0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.ScatterChartRenderer.drawHighlighted(android.graphics.Canvas, com.github.mikephil.charting.highlight.Highlight[]):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v49, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawValues(android.graphics.Canvas r13) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.ScatterChartRenderer.drawValues(android.graphics.Canvas):void");
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
    }
}
