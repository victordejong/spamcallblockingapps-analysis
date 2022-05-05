package com.github.mikephil.charting.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.renderer.BarLineScatterCandleBubbleRenderer;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/LineChartRenderer.class */
public class LineChartRenderer extends LineRadarRenderer {
    protected Canvas mBitmapCanvas;
    protected LineDataProvider mChart;
    protected WeakReference<Bitmap> mDrawBitmap;
    protected Bitmap.Config mBitmapConfig = Bitmap.Config.ARGB_8888;
    protected Path cubicPath = new Path();
    protected Path cubicFillPath = new Path();
    private float[] mLineBuffer = new float[4];
    protected Path mGenerateFilledPathBuffer = new Path();
    private HashMap<IDataSet, DataSetImageCache> mImageCaches = new HashMap<>();
    private float[] mCirclesBuffer = new float[2];
    protected Paint mCirclePaintInner = new Paint(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.github.mikephil.charting.renderer.LineChartRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/LineChartRenderer$1.class */
    public static /* synthetic */ class C12311 {
        static final /* synthetic */ int[] $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode = new int[LineDataSet.Mode.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.LINEAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.STEPPED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.CUBIC_BEZIER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[LineDataSet.Mode.HORIZONTAL_BEZIER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/LineChartRenderer$DataSetImageCache.class */
    public class DataSetImageCache {
        private Bitmap[] circleBitmaps;
        private Path mCirclePathBuffer;

        private DataSetImageCache() {
            this.mCirclePathBuffer = new Path();
        }

        /* synthetic */ DataSetImageCache(LineChartRenderer lineChartRenderer, C12311 r5) {
            this();
        }

        protected void fill(ILineDataSet iLineDataSet, boolean z, boolean z2) {
            int circleColorCount = iLineDataSet.getCircleColorCount();
            float circleRadius = iLineDataSet.getCircleRadius();
            float circleHoleRadius = iLineDataSet.getCircleHoleRadius();
            for (int i = 0; i < circleColorCount; i++) {
                int i2 = (int) (circleRadius * 2.1d);
                Bitmap createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(createBitmap);
                this.circleBitmaps[i] = createBitmap;
                LineChartRenderer.this.mRenderPaint.setColor(iLineDataSet.getCircleColor(i));
                if (z2) {
                    this.mCirclePathBuffer.reset();
                    this.mCirclePathBuffer.addCircle(circleRadius, circleRadius, circleRadius, Path.Direction.CW);
                    this.mCirclePathBuffer.addCircle(circleRadius, circleRadius, circleHoleRadius, Path.Direction.CCW);
                    canvas.drawPath(this.mCirclePathBuffer, LineChartRenderer.this.mRenderPaint);
                } else {
                    canvas.drawCircle(circleRadius, circleRadius, circleRadius, LineChartRenderer.this.mRenderPaint);
                    if (z) {
                        canvas.drawCircle(circleRadius, circleRadius, circleHoleRadius, LineChartRenderer.this.mCirclePaintInner);
                    }
                }
            }
        }

        protected Bitmap getBitmap(int i) {
            return this.circleBitmaps[i % this.circleBitmaps.length];
        }

        protected boolean init(ILineDataSet iLineDataSet) {
            int circleColorCount = iLineDataSet.getCircleColorCount();
            boolean z = true;
            if (this.circleBitmaps == null) {
                this.circleBitmaps = new Bitmap[circleColorCount];
            } else if (this.circleBitmaps.length != circleColorCount) {
                this.circleBitmaps = new Bitmap[circleColorCount];
            } else {
                z = false;
            }
            return z;
        }
    }

    public LineChartRenderer(LineDataProvider lineDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.mChart = lineDataProvider;
        this.mCirclePaintInner.setStyle(Paint.Style.FILL);
        this.mCirclePaintInner.setColor(-1);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r13v3, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateFilledPath(com.github.mikephil.charting.interfaces.datasets.ILineDataSet r6, int r7, int r8, android.graphics.Path r9) {
        /*
            r5 = this;
            r0 = r6
            com.github.mikephil.charting.formatter.IFillFormatter r0 = r0.getFillFormatter()
            r1 = r6
            r2 = r5
            com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider r2 = r2.mChart
            float r0 = r0.getFillLinePosition(r1, r2)
            r10 = r0
            r0 = r5
            com.github.mikephil.charting.animation.ChartAnimator r0 = r0.mAnimator
            float r0 = r0.getPhaseY()
            r11 = r0
            r0 = r6
            com.github.mikephil.charting.data.LineDataSet$Mode r0 = r0.getMode()
            com.github.mikephil.charting.data.LineDataSet$Mode r1 = com.github.mikephil.charting.data.LineDataSet.Mode.STEPPED
            if (r0 != r1) goto L_0x002d
            r0 = 1
            r12 = r0
            goto L_0x0030
        L_0x002d:
            r0 = 0
            r12 = r0
        L_0x0030:
            r0 = r9
            r0.reset()
            r0 = r6
            r1 = r7
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForIndex(r1)
            r13 = r0
            r0 = r9
            r1 = r13
            float r1 = r1.getX()
            r2 = r10
            r0.moveTo(r1, r2)
            r0 = r9
            r1 = r13
            float r1 = r1.getX()
            r2 = r13
            float r2 = r2.getY()
            r3 = r11
            float r2 = r2 * r3
            r0.lineTo(r1, r2)
            int r7 = r7 + 1
            r0 = 0
            r13 = r0
        L_0x0062:
            r0 = r13
            r14 = r0
            r0 = r7
            r1 = r8
            if (r0 > r1) goto L_0x00a8
            r0 = r6
            r1 = r7
            com.github.mikephil.charting.data.Entry r0 = r0.getEntryForIndex(r1)
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0090
            r0 = r14
            if (r0 == 0) goto L_0x0090
            r0 = r9
            r1 = r13
            float r1 = r1.getX()
            r2 = r14
            float r2 = r2.getY()
            r3 = r11
            float r2 = r2 * r3
            r0.lineTo(r1, r2)
        L_0x0090:
            r0 = r9
            r1 = r13
            float r1 = r1.getX()
            r2 = r13
            float r2 = r2.getY()
            r3 = r11
            float r2 = r2 * r3
            r0.lineTo(r1, r2)
            int r7 = r7 + 1
            goto L_0x0062
        L_0x00a8:
            r0 = r14
            if (r0 == 0) goto L_0x00b9
            r0 = r9
            r1 = r14
            float r1 = r1.getX()
            r2 = r10
            r0.lineTo(r1, r2)
        L_0x00b9:
            r0 = r9
            r0.close()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.generateFilledPath(com.github.mikephil.charting.interfaces.datasets.ILineDataSet, int, int, android.graphics.Path):void");
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawCircles(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawCircles(android.graphics.Canvas):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawCubicBezier(com.github.mikephil.charting.interfaces.datasets.ILineDataSet r10) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawCubicBezier(com.github.mikephil.charting.interfaces.datasets.ILineDataSet):void");
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.github.mikephil.charting.data.Entry] */
    protected void drawCubicFill(Canvas canvas, ILineDataSet iLineDataSet, Path path, Transformer transformer, BarLineScatterCandleBubbleRenderer.XBounds xBounds) {
        float fillLinePosition = iLineDataSet.getFillFormatter().getFillLinePosition(iLineDataSet, this.mChart);
        path.lineTo(iLineDataSet.getEntryForIndex(xBounds.min + xBounds.range).getX(), fillLinePosition);
        path.lineTo(iLineDataSet.getEntryForIndex(xBounds.min).getX(), fillLinePosition);
        path.close();
        transformer.pathValueToPixel(path);
        Drawable fillDrawable = iLineDataSet.getFillDrawable();
        if (fillDrawable != null) {
            drawFilledPath(canvas, path, fillDrawable);
        } else {
            drawFilledPath(canvas, path, iLineDataSet.getFillColor(), iLineDataSet.getFillAlpha());
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        int chartWidth = (int) this.mViewPortHandler.getChartWidth();
        int chartHeight = (int) this.mViewPortHandler.getChartHeight();
        if (!(this.mDrawBitmap != null && this.mDrawBitmap.get().getWidth() == chartWidth && this.mDrawBitmap.get().getHeight() == chartHeight)) {
            if (chartWidth > 0 && chartHeight > 0) {
                this.mDrawBitmap = new WeakReference<>(Bitmap.createBitmap(chartWidth, chartHeight, this.mBitmapConfig));
                this.mBitmapCanvas = new Canvas(this.mDrawBitmap.get());
            } else {
                return;
            }
        }
        this.mDrawBitmap.get().eraseColor(0);
        for (T t : this.mChart.getLineData().getDataSets()) {
            if (t.isVisible()) {
                drawDataSet(canvas, t);
            }
        }
        canvas.drawBitmap(this.mDrawBitmap.get(), 0.0f, 0.0f, this.mRenderPaint);
    }

    protected void drawDataSet(Canvas canvas, ILineDataSet iLineDataSet) {
        if (iLineDataSet.getEntryCount() >= 1) {
            this.mRenderPaint.setStrokeWidth(iLineDataSet.getLineWidth());
            this.mRenderPaint.setPathEffect(iLineDataSet.getDashPathEffect());
            switch (C12311.$SwitchMap$com$github$mikephil$charting$data$LineDataSet$Mode[iLineDataSet.getMode().ordinal()]) {
                case 3:
                    drawCubicBezier(iLineDataSet);
                    break;
                case 4:
                    drawHorizontalBezier(iLineDataSet);
                    break;
                default:
                    drawLinear(canvas, iLineDataSet);
                    break;
            }
            this.mRenderPaint.setPathEffect(null);
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        drawCircles(canvas);
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
            com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider r0 = r0.mChart
            com.github.mikephil.charting.data.LineData r0 = r0.getLineData()
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
            com.github.mikephil.charting.interfaces.datasets.ILineDataSet r0 = (com.github.mikephil.charting.interfaces.datasets.ILineDataSet) r0
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
            com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider r0 = r0.mChart
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
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawHighlighted(android.graphics.Canvas, com.github.mikephil.charting.highlight.Highlight[]):void");
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawHorizontalBezier(com.github.mikephil.charting.interfaces.datasets.ILineDataSet r10) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawHorizontalBezier(com.github.mikephil.charting.interfaces.datasets.ILineDataSet):void");
    }

    /* JADX WARN: Type inference failed for: r0v114, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r0v142, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r0v52, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawLinear(android.graphics.Canvas r7, com.github.mikephil.charting.interfaces.datasets.ILineDataSet r8) {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawLinear(android.graphics.Canvas, com.github.mikephil.charting.interfaces.datasets.ILineDataSet):void");
    }

    protected void drawLinearFill(Canvas canvas, ILineDataSet iLineDataSet, Transformer transformer, BarLineScatterCandleBubbleRenderer.XBounds xBounds) {
        int i;
        int i2;
        Path path = this.mGenerateFilledPathBuffer;
        int i3 = xBounds.min;
        int i4 = xBounds.range + xBounds.min;
        int i5 = 0;
        do {
            i = (i5 * 128) + i3;
            int i6 = i + 128;
            i2 = i6;
            if (i6 > i4) {
                i2 = i4;
            }
            if (i <= i2) {
                generateFilledPath(iLineDataSet, i, i2, path);
                transformer.pathValueToPixel(path);
                Drawable fillDrawable = iLineDataSet.getFillDrawable();
                if (fillDrawable != null) {
                    drawFilledPath(canvas, path, fillDrawable);
                } else {
                    drawFilledPath(canvas, path, iLineDataSet.getFillColor(), iLineDataSet.getFillAlpha());
                }
            }
            i5++;
        } while (i <= i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [com.github.mikephil.charting.data.Entry] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawValues(android.graphics.Canvas r12) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.renderer.LineChartRenderer.drawValues(android.graphics.Canvas):void");
    }

    public Bitmap.Config getBitmapConfig() {
        return this.mBitmapConfig;
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

    public void setBitmapConfig(Bitmap.Config config) {
        this.mBitmapConfig = config;
        releaseBitmap();
    }
}
