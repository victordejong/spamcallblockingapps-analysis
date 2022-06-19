package com.androidplot.p008xy;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Region;
import androidx.core.view.InputDeviceCompat;
import com.androidplot.C0763R;
import com.androidplot.p007ui.Insets;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.widget.Widget;
import com.androidplot.util.AttrUtils;
import com.androidplot.util.FontUtils;
import com.androidplot.util.PixelUtils;
import com.androidplot.util.RectFUtils;
import com.google.firebase.crashlytics.internal.common.IdManager;
import java.text.DecimalFormat;
import java.text.Format;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.androidplot.xy.XYGraphWidget */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYGraphWidget.class */
public class XYGraphWidget extends Widget {
    private static final float DEFAULT_LINE_LABEL_TEXT_SIZE_PX = PixelUtils.spToPix(15.0f);
    private static final float FUDGE = 1.0E-5f;
    private static final int ONE = 1;
    private static final int TWO = 2;
    private static final int ZERO = 0;
    private CursorLabelFormatter cursorLabelFormatter;
    private Paint domainCursorPaint;
    private Float domainCursorPosition;
    private Paint domainGridLinePaint;
    private Paint domainOriginLinePaint;
    private Paint domainSubGridLinePaint;
    private boolean drawGridOnTop;
    private Paint gridBackgroundPaint;
    private RectF gridRect;
    private RectF labelRect;
    private float lineExtensionBottom;
    private float lineExtensionLeft;
    private float lineExtensionRight;
    private float lineExtensionTop;
    private XYPlot plot;
    private Paint rangeCursorPaint;
    private Float rangeCursorPosition;
    private Paint rangeGridLinePaint;
    private Paint rangeOriginLinePaint;
    private Paint rangeSubGridLinePaint;
    private RenderStack<? extends XYSeries, ? extends XYSeriesFormatter> renderStack;
    private int linesPerRangeLabel = 1;
    private int linesPerDomainLabel = 1;
    private Insets gridInsets = new Insets();
    private Insets lineLabelInsets = new Insets();
    private boolean isGridClippingEnabled = true;
    private boolean drawMarkersEnabled = true;
    private EnumSet<Edge> lineLabelEdges = EnumSet.noneOf(Edge.class);
    private Map<Edge, LineLabelStyle> lineLabelStyles = getDefaultLineLabelStyles();
    private Map<Edge, LineLabelRenderer> lineLabelRenderers = getDefaultLineLabelRenderers();

    /* renamed from: com.androidplot.xy.XYGraphWidget$CursorLabelFormatter */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYGraphWidget$CursorLabelFormatter.class */
    public interface CursorLabelFormatter {
        Paint getBackgroundPaint();

        String getLabelText(Number number, Number number2);

        Paint getTextPaint();
    }

    /* renamed from: com.androidplot.xy.XYGraphWidget$Edge */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYGraphWidget$Edge.class */
    public enum Edge {
        NONE(0),
        LEFT(1),
        RIGHT(2),
        TOP(4),
        BOTTOM(8);
        
        private final int value;

        Edge(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* renamed from: com.androidplot.xy.XYGraphWidget$LineLabelRenderer */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYGraphWidget$LineLabelRenderer.class */
    public static class LineLabelRenderer {
        public void drawLabel(Canvas canvas, LineLabelStyle lineLabelStyle, Number number, float f, float f2, boolean z) {
            int save = canvas.save();
            try {
                String format = lineLabelStyle.format.format(number);
                canvas.rotate(lineLabelStyle.getRotation(), f, f2);
                drawLabel(canvas, format, lineLabelStyle.getPaint(), f, f2, z);
            } finally {
                canvas.restoreToCount(save);
            }
        }

        protected void drawLabel(Canvas canvas, String str, Paint paint, float f, float f2, boolean z) {
            canvas.drawText(str, f, f2, paint);
        }
    }

    /* renamed from: com.androidplot.xy.XYGraphWidget$LineLabelStyle */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYGraphWidget$LineLabelStyle.class */
    public static class LineLabelStyle {
        private Paint paint = new Paint();
        private float rotation = 0.0f;
        private Format format = new DecimalFormat(IdManager.DEFAULT_VERSION_NAME);

        public LineLabelStyle() {
            this.paint.setColor(-3355444);
            this.paint.setAntiAlias(true);
            this.paint.setTextAlign(Paint.Align.CENTER);
            this.paint.setTextSize(XYGraphWidget.DEFAULT_LINE_LABEL_TEXT_SIZE_PX);
        }

        public Format getFormat() {
            return this.format;
        }

        public Paint getPaint() {
            return this.paint;
        }

        public float getRotation() {
            return this.rotation;
        }

        public void setFormat(Format format) {
            this.format = format;
        }

        public void setPaint(Paint paint) {
            this.paint = paint;
        }

        public void setRotation(float f) {
            this.rotation = f;
        }
    }

    public XYGraphWidget(LayoutManager layoutManager, XYPlot xYPlot, Size size) {
        super(layoutManager, size);
        Paint paint = new Paint();
        this.gridBackgroundPaint = paint;
        paint.setColor(Color.rgb(140, 140, 140));
        this.gridBackgroundPaint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        paint2.setColor(Color.rgb(180, 180, 180));
        paint2.setAntiAlias(true);
        paint2.setStyle(Paint.Style.STROKE);
        this.rangeGridLinePaint = new Paint(paint2);
        this.domainGridLinePaint = new Paint(paint2);
        this.domainSubGridLinePaint = new Paint(paint2);
        this.rangeSubGridLinePaint = new Paint(paint2);
        this.domainOriginLinePaint = new Paint(paint2);
        this.rangeOriginLinePaint = new Paint(paint2);
        Paint paint3 = new Paint();
        this.domainCursorPaint = paint3;
        paint3.setColor(InputDeviceCompat.SOURCE_ANY);
        Paint paint4 = new Paint();
        this.rangeCursorPaint = paint4;
        paint4.setColor(InputDeviceCompat.SOURCE_ANY);
        setMarginTop(7.0f);
        setMarginRight(4.0f);
        setMarginBottom(4.0f);
        setClippingEnabled(true);
        this.plot = xYPlot;
        this.renderStack = new RenderStack<>(xYPlot);
    }

    public boolean containsPoint(float f, float f2) {
        RectF rectF = this.gridRect;
        if (rectF != null) {
            return rectF.contains(f, f2);
        }
        return false;
    }

    @Override // com.androidplot.p007ui.widget.Widget
    protected void doOnDraw(Canvas canvas, RectF rectF) {
        if (this.gridRect.height() <= 0.0f || this.gridRect.width() <= 0.0f) {
            return;
        }
        RectRegion bounds = this.plot.getBounds();
        if (bounds.getMinX() == null || bounds.getMaxX() == null || bounds.getMinY() == null || bounds.getMaxY() == null) {
            return;
        }
        if (this.drawGridOnTop) {
            drawData(canvas);
            drawGrid(canvas);
        } else {
            drawGrid(canvas);
            drawData(canvas);
        }
        drawCursors(canvas);
        if (!isDrawMarkersEnabled()) {
            return;
        }
        drawMarkers(canvas);
    }

    protected void drawCursorLabel(Canvas canvas) {
        String labelText = getCursorLabelFormatter().getLabelText(getDomainCursorVal(), getRangeCursorVal());
        RectF rectF = new RectF(FontUtils.getPackedStringDimensions(labelText, getCursorLabelFormatter().getTextPaint()));
        rectF.offsetTo(this.domainCursorPosition.floatValue(), this.rangeCursorPosition.floatValue() - rectF.height());
        if (rectF.right >= this.gridRect.right) {
            rectF.offsetTo(this.domainCursorPosition.floatValue() - rectF.width(), rectF.top);
        }
        if (rectF.top <= this.gridRect.top) {
            rectF.offsetTo(rectF.left, this.rangeCursorPosition.floatValue());
        }
        if (getCursorLabelFormatter().getBackgroundPaint() != null) {
            canvas.drawRect(rectF, getCursorLabelFormatter().getBackgroundPaint());
        }
        canvas.drawText(labelText, rectF.left, rectF.bottom, getCursorLabelFormatter().getTextPaint());
    }

    protected void drawCursors(Canvas canvas) {
        boolean z;
        Float f;
        Float f2;
        boolean z2 = true;
        if (this.domainCursorPaint == null || (f2 = this.domainCursorPosition) == null || f2.floatValue() > this.gridRect.right || this.domainCursorPosition.floatValue() < this.gridRect.left) {
            z = false;
        } else {
            canvas.drawLine(this.domainCursorPosition.floatValue(), this.gridRect.top, this.domainCursorPosition.floatValue(), this.gridRect.bottom, this.domainCursorPaint);
            z = true;
        }
        if (this.rangeCursorPaint == null || (f = this.rangeCursorPosition) == null || f.floatValue() < this.gridRect.top || this.rangeCursorPosition.floatValue() > this.gridRect.bottom) {
            z2 = false;
        } else {
            canvas.drawLine(this.gridRect.left, this.rangeCursorPosition.floatValue(), this.gridRect.right, this.rangeCursorPosition.floatValue(), this.rangeCursorPaint);
        }
        if (getCursorLabelFormatter() == null || !z2 || !z) {
            return;
        }
        drawCursorLabel(canvas);
    }

    protected void drawData(Canvas canvas) {
        if (this.drawGridOnTop) {
            drawGridBackground(canvas);
        }
        try {
            if (this.isGridClippingEnabled) {
                canvas.save();
                canvas.clipRect(this.gridRect, Region.Op.INTERSECT);
            }
            this.renderStack.sync();
            Iterator<RenderStack<SeriesType, FormatterType>.StackElement<? extends XYSeries, ? extends XYSeriesFormatter>> it = this.renderStack.getElements().iterator();
            while (it.hasNext()) {
                RenderStack<SeriesType, FormatterType>.StackElement<? extends XYSeries, ? extends XYSeriesFormatter> next = it.next();
                if (next.isEnabled()) {
                    ((XYSeriesRenderer) this.plot.getRenderer(next.get().getFormatter().getRendererClass())).render(canvas, this.gridRect, next.get(), this.renderStack);
                }
            }
            if (!this.isGridClippingEnabled) {
                return;
            }
            canvas.restore();
        } catch (Throwable th) {
            if (this.isGridClippingEnabled) {
                canvas.restore();
            }
            throw th;
        }
    }

    protected void drawDomainLine(Canvas canvas, float f, Number number, Paint paint, boolean z) {
        if (paint != null) {
            canvas.drawLine(f, this.gridRect.top - this.lineExtensionTop, f, this.gridRect.bottom + this.lineExtensionBottom, paint);
        }
        drawLineLabel(canvas, Edge.TOP, number, f, this.labelRect.top, z);
        drawLineLabel(canvas, Edge.BOTTOM, number, f, this.labelRect.bottom, z);
    }

    /* JADX WARN: Type inference failed for: r0v120, types: [double] */
    /* JADX WARN: Type inference failed for: r0v129, types: [double] */
    /* JADX WARN: Type inference failed for: r0v87, types: [double] */
    /* JADX WARN: Type inference failed for: r0v96, types: [double] */
    protected void drawGrid(Canvas canvas) {
        char c;
        char c2;
        if (!this.drawGridOnTop) {
            drawGridBackground(canvas);
        }
        Number domainOrigin = this.plot.getDomainOrigin();
        if (domainOrigin != null) {
            c = this.plot.getBounds().getxRegion().transform(this.plot.getDomainOrigin().doubleValue(), this.gridRect.left, this.gridRect.right, false);
        } else {
            c = this.gridRect.left;
            domainOrigin = this.plot.getBounds().getMinX();
        }
        Step step = XYStepCalculator.getStep(this.plot, Axis.DOMAIN, this.gridRect);
        double stepPix = step.getStepPix();
        double d = ((this.gridRect.left - c) - 9.999999747378752E-6d) / stepPix;
        double d2 = ((this.gridRect.right - c) + 9.999999747378752E-6d) / stepPix;
        int ceil = (int) Math.ceil(d);
        while (true) {
            double d3 = ceil;
            boolean z = false;
            if (d3 > d2) {
                break;
            }
            double doubleValue = domainOrigin.doubleValue();
            double stepVal = step.getStepVal();
            boolean z2 = ceil % getLinesPerDomainLabel() == 0;
            if (ceil == 0) {
                z = true;
            }
            drawDomainLine(canvas, (float) ((d3 * stepPix) + c), Double.valueOf(doubleValue + (stepVal * d3)), z ? this.domainOriginLinePaint : z2 ? this.domainGridLinePaint : this.domainSubGridLinePaint, z);
            ceil++;
        }
        Number rangeOrigin = this.plot.getRangeOrigin();
        if (rangeOrigin != null) {
            c2 = this.plot.getBounds().getyRegion().transform(rangeOrigin.doubleValue(), this.gridRect.top, this.gridRect.bottom, true);
        } else {
            c2 = this.gridRect.bottom;
            rangeOrigin = this.plot.getBounds().getMinY();
        }
        Step step2 = XYStepCalculator.getStep(this.plot, Axis.RANGE, this.gridRect);
        double stepPix2 = step2.getStepPix();
        double d4 = ((this.gridRect.top - c2) - 9.999999747378752E-6d) / stepPix2;
        double d5 = ((this.gridRect.bottom - c2) + 9.999999747378752E-6d) / stepPix2;
        int ceil2 = (int) Math.ceil(d4);
        while (true) {
            double d6 = ceil2;
            if (d6 <= d5) {
                double doubleValue2 = rangeOrigin.doubleValue();
                double stepVal2 = step2.getStepVal();
                boolean z3 = ceil2 % getLinesPerRangeLabel() == 0;
                boolean z4 = ceil2 == 0;
                drawRangeLine(canvas, (float) ((d6 * stepPix2) + c2), Double.valueOf(doubleValue2 - (stepVal2 * d6)), z4 ? this.rangeOriginLinePaint : z3 ? this.rangeGridLinePaint : this.rangeSubGridLinePaint, z4);
                ceil2++;
            } else {
                return;
            }
        }
    }

    protected void drawGridBackground(Canvas canvas) {
        Paint paint = this.gridBackgroundPaint;
        if (paint != null) {
            canvas.drawRect(this.gridRect, paint);
        }
    }

    protected void drawLineLabel(Canvas canvas, Edge edge, Number number, float f, float f2, boolean z) {
        if (isLineLabelEnabled(edge)) {
            getLineLabelRenderer(edge).drawLabel(canvas, getLineLabelStyle(edge), number, f, f2, z);
        }
    }

    protected void drawMarkers(Canvas canvas) {
        if (this.plot.getYValueMarkers() != null && this.plot.getYValueMarkers().size() > 0) {
            for (YValueMarker yValueMarker : this.plot.getYValueMarkers()) {
                yValueMarker.draw(canvas, this.plot, this.gridRect);
            }
        }
        if (this.plot.getXValueMarkers() == null || this.plot.getXValueMarkers().size() <= 0) {
            return;
        }
        for (XValueMarker xValueMarker : this.plot.getXValueMarkers()) {
            xValueMarker.draw(canvas, this.plot, this.gridRect);
        }
    }

    protected void drawPoint(Canvas canvas, PointF pointF, Paint paint) {
        canvas.drawPoint(pointF.x, pointF.y, paint);
    }

    protected void drawRangeLine(Canvas canvas, float f, Number number, Paint paint, boolean z) {
        if (paint != null) {
            canvas.drawLine(this.gridRect.left - this.lineExtensionLeft, f, this.gridRect.right + this.lineExtensionRight, f, paint);
        }
        drawLineLabel(canvas, Edge.LEFT, number, this.labelRect.left, f, z);
        drawLineLabel(canvas, Edge.RIGHT, number, this.labelRect.right, f, z);
    }

    public CursorLabelFormatter getCursorLabelFormatter() {
        return this.cursorLabelFormatter;
    }

    protected Map<Edge, LineLabelRenderer> getDefaultLineLabelRenderers() {
        EnumMap enumMap = new EnumMap(Edge.class);
        enumMap.put((EnumMap) Edge.TOP, (Edge) new LineLabelRenderer());
        enumMap.put((EnumMap) Edge.BOTTOM, (Edge) new LineLabelRenderer());
        enumMap.put((EnumMap) Edge.LEFT, (Edge) new LineLabelRenderer());
        enumMap.put((EnumMap) Edge.RIGHT, (Edge) new LineLabelRenderer());
        return enumMap;
    }

    protected Map<Edge, LineLabelStyle> getDefaultLineLabelStyles() {
        EnumMap enumMap = new EnumMap(Edge.class);
        enumMap.put((EnumMap) Edge.TOP, (Edge) new LineLabelStyle());
        enumMap.put((EnumMap) Edge.BOTTOM, (Edge) new LineLabelStyle());
        enumMap.put((EnumMap) Edge.LEFT, (Edge) new LineLabelStyle());
        enumMap.put((EnumMap) Edge.RIGHT, (Edge) new LineLabelStyle());
        return enumMap;
    }

    public Paint getDomainCursorPaint() {
        return this.domainCursorPaint;
    }

    public Float getDomainCursorPosition() {
        return this.domainCursorPosition;
    }

    public Number getDomainCursorVal() {
        return screenToSeriesX(getDomainCursorPosition().floatValue());
    }

    public Paint getDomainGridLinePaint() {
        return this.domainGridLinePaint;
    }

    public Paint getDomainOriginLinePaint() {
        return this.domainOriginLinePaint;
    }

    public Paint getDomainSubGridLinePaint() {
        return this.domainSubGridLinePaint;
    }

    public Paint getGridBackgroundPaint() {
        return this.gridBackgroundPaint;
    }

    public Insets getGridInsets() {
        return this.gridInsets;
    }

    public RectF getGridRect() {
        return this.gridRect;
    }

    public RectF getLabelRect() {
        return this.labelRect;
    }

    public float getLineExtensionBottom() {
        return this.lineExtensionBottom;
    }

    public float getLineExtensionLeft() {
        return this.lineExtensionLeft;
    }

    public float getLineExtensionRight() {
        return this.lineExtensionRight;
    }

    public float getLineExtensionTop() {
        return this.lineExtensionTop;
    }

    public Insets getLineLabelInsets() {
        return this.lineLabelInsets;
    }

    public LineLabelRenderer getLineLabelRenderer(Edge edge) {
        return this.lineLabelRenderers.get(edge);
    }

    public LineLabelStyle getLineLabelStyle(Edge edge) {
        return this.lineLabelStyles.get(edge);
    }

    public int getLinesPerDomainLabel() {
        return this.linesPerDomainLabel;
    }

    public int getLinesPerRangeLabel() {
        return this.linesPerRangeLabel;
    }

    public Paint getRangeCursorPaint() {
        return this.rangeCursorPaint;
    }

    public Float getRangeCursorPosition() {
        return this.rangeCursorPosition;
    }

    public Number getRangeCursorVal() {
        return screenToSeriesY(getRangeCursorPosition().floatValue());
    }

    public Paint getRangeGridLinePaint() {
        return this.rangeGridLinePaint;
    }

    public Paint getRangeOriginLinePaint() {
        return this.rangeOriginLinePaint;
    }

    public Paint getRangeSubGridLinePaint() {
        return this.rangeSubGridLinePaint;
    }

    public boolean isDrawGridOnTop() {
        return this.drawGridOnTop;
    }

    public boolean isDrawMarkersEnabled() {
        return this.drawMarkersEnabled;
    }

    public boolean isGridClippingEnabled() {
        return this.isGridClippingEnabled;
    }

    public boolean isLineLabelEnabled(Edge edge) {
        return this.lineLabelEdges.contains(edge);
    }

    @Override // com.androidplot.p007ui.widget.Widget
    protected void onResize(RectF rectF, RectF rectF2) {
        recalculateSizes(rectF2);
    }

    public void processAttrs(TypedArray typedArray) {
        setDrawGridOnTop(typedArray.getBoolean(C0763R.styleable.xy_XYPlot_drawGridOnTop, isDrawGridOnTop()));
        int i = typedArray.getInt(C0763R.styleable.xy_XYPlot_lineLabels, 0);
        if (i != 0) {
            setLineLabelEdges(i);
        }
        setGridClippingEnabled(typedArray.getBoolean(C0763R.styleable.xy_XYPlot_gridClippingEnabled, isGridClippingEnabled()));
        LineLabelStyle lineLabelStyle = getLineLabelStyle(Edge.TOP);
        LineLabelStyle lineLabelStyle2 = getLineLabelStyle(Edge.BOTTOM);
        LineLabelStyle lineLabelStyle3 = getLineLabelStyle(Edge.LEFT);
        LineLabelStyle lineLabelStyle4 = getLineLabelStyle(Edge.RIGHT);
        lineLabelStyle.setRotation(typedArray.getFloat(C0763R.styleable.xy_XYPlot_lineLabelRotationTop, lineLabelStyle.getRotation()));
        lineLabelStyle2.setRotation(typedArray.getFloat(C0763R.styleable.xy_XYPlot_lineLabelRotationBottom, lineLabelStyle2.getRotation()));
        lineLabelStyle3.setRotation(typedArray.getFloat(C0763R.styleable.xy_XYPlot_lineLabelRotationLeft, lineLabelStyle3.getRotation()));
        lineLabelStyle4.setRotation(typedArray.getFloat(C0763R.styleable.xy_XYPlot_lineLabelRotationRight, lineLabelStyle4.getRotation()));
        setLineExtensionTop(typedArray.getDimension(C0763R.styleable.xy_XYPlot_lineExtensionTop, getLineExtensionTop()));
        setLineExtensionBottom(typedArray.getDimension(C0763R.styleable.xy_XYPlot_lineExtensionBottom, getLineExtensionBottom()));
        setLineExtensionLeft(typedArray.getDimension(C0763R.styleable.xy_XYPlot_lineExtensionLeft, getLineExtensionLeft()));
        setLineExtensionRight(typedArray.getDimension(C0763R.styleable.xy_XYPlot_lineExtensionRight, getLineExtensionRight()));
        AttrUtils.configureTextPaint(typedArray, lineLabelStyle.getPaint(), C0763R.styleable.xy_XYPlot_lineLabelTextColorTop, C0763R.styleable.xy_XYPlot_lineLabelTextSizeTop, Integer.valueOf(C0763R.styleable.xy_XYPlot_lineLabelAlignTop));
        AttrUtils.configureTextPaint(typedArray, lineLabelStyle2.getPaint(), C0763R.styleable.xy_XYPlot_lineLabelTextColorBottom, C0763R.styleable.xy_XYPlot_lineLabelTextSizeBottom, Integer.valueOf(C0763R.styleable.xy_XYPlot_lineLabelAlignBottom));
        AttrUtils.configureTextPaint(typedArray, lineLabelStyle3.getPaint(), C0763R.styleable.xy_XYPlot_lineLabelTextColorLeft, C0763R.styleable.xy_XYPlot_lineLabelTextSizeLeft, Integer.valueOf(C0763R.styleable.xy_XYPlot_lineLabelAlignLeft));
        AttrUtils.configureTextPaint(typedArray, lineLabelStyle4.getPaint(), C0763R.styleable.xy_XYPlot_lineLabelTextColorRight, C0763R.styleable.xy_XYPlot_lineLabelTextSizeRight, Integer.valueOf(C0763R.styleable.xy_XYPlot_lineLabelAlignRight));
        AttrUtils.configureInsets(typedArray, getGridInsets(), C0763R.styleable.xy_XYPlot_gridInsetTop, C0763R.styleable.xy_XYPlot_gridInsetBottom, C0763R.styleable.xy_XYPlot_gridInsetLeft, C0763R.styleable.xy_XYPlot_gridInsetRight);
        AttrUtils.configureInsets(typedArray, getLineLabelInsets(), C0763R.styleable.xy_XYPlot_lineLabelInsetTop, C0763R.styleable.xy_XYPlot_lineLabelInsetBottom, C0763R.styleable.xy_XYPlot_lineLabelInsetLeft, C0763R.styleable.xy_XYPlot_lineLabelInsetRight);
        AttrUtils.configureWidget(typedArray, this, C0763R.styleable.xy_XYPlot_graphHeightMode, C0763R.styleable.xy_XYPlot_graphHeight, C0763R.styleable.xy_XYPlot_graphWidthMode, C0763R.styleable.xy_XYPlot_graphWidth, C0763R.styleable.xy_XYPlot_graphHorizontalPositioning, C0763R.styleable.xy_XYPlot_graphHorizontalPosition, C0763R.styleable.xy_XYPlot_graphVerticalPositioning, C0763R.styleable.xy_XYPlot_graphVerticalPosition, C0763R.styleable.xy_XYPlot_graphAnchor, C0763R.styleable.xy_XYPlot_graphVisible);
        AttrUtils.configureWidget(typedArray, this, C0763R.styleable.xy_XYPlot_domainTitleHeightMode, C0763R.styleable.xy_XYPlot_domainTitleHeight, C0763R.styleable.xy_XYPlot_domainTitleWidthMode, C0763R.styleable.xy_XYPlot_domainTitleWidth, C0763R.styleable.xy_XYPlot_domainTitleHorizontalPositioning, C0763R.styleable.xy_XYPlot_domainTitleHorizontalPosition, C0763R.styleable.xy_XYPlot_domainTitleVerticalPositioning, C0763R.styleable.xy_XYPlot_domainTitleVerticalPosition, C0763R.styleable.xy_XYPlot_domainTitleAnchor, C0763R.styleable.xy_XYPlot_domainTitleVisible);
        AttrUtils.configureWidget(typedArray, this, C0763R.styleable.xy_XYPlot_rangeTitleHeightMode, C0763R.styleable.xy_XYPlot_rangeTitleHeight, C0763R.styleable.xy_XYPlot_rangeTitleWidthMode, C0763R.styleable.xy_XYPlot_rangeTitleWidth, C0763R.styleable.xy_XYPlot_rangeTitleHorizontalPositioning, C0763R.styleable.xy_XYPlot_rangeTitleHorizontalPosition, C0763R.styleable.xy_XYPlot_rangeTitleVerticalPositioning, C0763R.styleable.xy_XYPlot_rangeTitleVerticalPosition, C0763R.styleable.xy_XYPlot_rangeTitleAnchor, C0763R.styleable.xy_XYPlot_rangeTitleVisible);
        AttrUtils.configureWidgetRotation(typedArray, this, C0763R.styleable.xy_XYPlot_graphRotation);
        AttrUtils.configureBoxModelable(typedArray, this, C0763R.styleable.xy_XYPlot_graphMarginTop, C0763R.styleable.xy_XYPlot_graphMarginBottom, C0763R.styleable.xy_XYPlot_graphMarginLeft, C0763R.styleable.xy_XYPlot_graphMarginRight, C0763R.styleable.xy_XYPlot_graphPaddingTop, C0763R.styleable.xy_XYPlot_graphPaddingBottom, C0763R.styleable.xy_XYPlot_graphPaddingLeft, C0763R.styleable.xy_XYPlot_graphPaddingRight);
        AttrUtils.configureLinePaint(typedArray, getDomainOriginLinePaint(), C0763R.styleable.xy_XYPlot_domainOriginLineColor, C0763R.styleable.xy_XYPlot_domainOriginLineThickness);
        AttrUtils.configureLinePaint(typedArray, getRangeOriginLinePaint(), C0763R.styleable.xy_XYPlot_rangeOriginLineColor, C0763R.styleable.xy_XYPlot_rangeOriginLineThickness);
        AttrUtils.configureLinePaint(typedArray, getDomainGridLinePaint(), C0763R.styleable.xy_XYPlot_domainLineColor, C0763R.styleable.xy_XYPlot_domainLineThickness);
        AttrUtils.configureLinePaint(typedArray, getRangeGridLinePaint(), C0763R.styleable.xy_XYPlot_rangeLineColor, C0763R.styleable.xy_XYPlot_rangeLineThickness);
        AttrUtils.setColor(typedArray, getBackgroundPaint(), C0763R.styleable.xy_XYPlot_graphBackgroundColor);
        AttrUtils.setColor(typedArray, getGridBackgroundPaint(), C0763R.styleable.xy_XYPlot_gridBackgroundColor);
    }

    protected void recalculateSizes(RectF rectF) {
        RectF rectF2 = rectF;
        if (rectF == null) {
            rectF2 = getWidgetDimensions().paddedRect;
        }
        this.gridRect = RectFUtils.applyInsets(rectF2, this.gridInsets);
        this.labelRect = RectFUtils.applyInsets(rectF2, this.lineLabelInsets);
    }

    public XYCoords screenToSeries(PointF pointF) {
        if (!this.plot.getBounds().isFullyDefined()) {
            return null;
        }
        return new RectRegion(this.gridRect).transform((Number) Float.valueOf(pointF.x), (Number) Float.valueOf(pointF.y), this.plot.getBounds(), false, true);
    }

    public Number screenToSeriesX(float f) {
        if (!this.plot.getBounds().xRegion.isDefined()) {
            return null;
        }
        return new com.androidplot.Region(Float.valueOf(this.gridRect.left), Float.valueOf(this.gridRect.right)).transform(f, this.plot.getBounds().getxRegion());
    }

    public Number screenToSeriesX(PointF pointF) {
        return screenToSeriesX(pointF.x);
    }

    public Number screenToSeriesY(float f) {
        if (!this.plot.getBounds().getyRegion().isDefined()) {
            return null;
        }
        return new com.androidplot.Region(Float.valueOf(this.gridRect.top), Float.valueOf(this.gridRect.bottom)).transform(f, this.plot.getBounds().getyRegion(), true);
    }

    public Number screenToSeriesY(PointF pointF) {
        return screenToSeriesY(pointF.y);
    }

    public PointF seriesToScreen(XYCoords xYCoords) {
        if (!this.plot.getBounds().isFullyDefined()) {
            return null;
        }
        return this.plot.getBounds().transform(xYCoords, this.gridRect, false, true);
    }

    public float seriesToScreenX(Number number) {
        return (float) this.plot.getBounds().getxRegion().transform(number.doubleValue(), this.gridRect.left, this.gridRect.right, false);
    }

    public float seriesToScreenY(Number number) {
        return (float) this.plot.getBounds().getyRegion().transform(number.doubleValue(), this.gridRect.bottom, this.gridRect.top, true);
    }

    public void setCursorLabelFormatter(CursorLabelFormatter cursorLabelFormatter) {
        this.cursorLabelFormatter = cursorLabelFormatter;
    }

    public void setCursorPosition(PointF pointF) {
        setCursorPosition(Float.valueOf(pointF.x), Float.valueOf(pointF.y));
    }

    public void setCursorPosition(Float f, Float f2) {
        setDomainCursorPosition(f);
        setRangeCursorPosition(f2);
    }

    public void setDomainCursorPaint(Paint paint) {
        this.domainCursorPaint = paint;
    }

    public void setDomainCursorPosition(Float f) {
        this.domainCursorPosition = f;
    }

    public void setDomainGridLinePaint(Paint paint) {
        this.domainGridLinePaint = paint;
    }

    public void setDomainOriginLinePaint(Paint paint) {
        this.domainOriginLinePaint = paint;
    }

    public void setDomainSubGridLinePaint(Paint paint) {
        this.domainSubGridLinePaint = paint;
    }

    public void setDrawGridOnTop(boolean z) {
        this.drawGridOnTop = z;
    }

    public void setDrawMarkersEnabled(boolean z) {
        this.drawMarkersEnabled = z;
    }

    public void setGridBackgroundPaint(Paint paint) {
        this.gridBackgroundPaint = paint;
    }

    public void setGridClippingEnabled(boolean z) {
        this.isGridClippingEnabled = z;
    }

    public void setGridInsets(Insets insets) {
        this.gridInsets = insets;
        recalculateSizes(null);
    }

    public void setGridRect(RectF rectF) {
        this.gridRect = rectF;
    }

    public void setLabelRect(RectF rectF) {
        this.labelRect = rectF;
    }

    public void setLineExtensionBottom(float f) {
        this.lineExtensionBottom = f;
    }

    public void setLineExtensionLeft(float f) {
        this.lineExtensionLeft = f;
    }

    public void setLineExtensionRight(float f) {
        this.lineExtensionRight = f;
    }

    public void setLineExtensionTop(float f) {
        this.lineExtensionTop = f;
    }

    protected void setLineLabelEdges(int i) {
        Edge[] values;
        for (Edge edge : Edge.values()) {
            if ((edge.value & i) == edge.value) {
                this.lineLabelEdges.add(edge);
            }
        }
    }

    public void setLineLabelEdges(Collection<Edge> collection) {
        this.lineLabelEdges = EnumSet.copyOf((Collection) collection);
    }

    public void setLineLabelEdges(Edge... edgeArr) {
        EnumSet<Edge> noneOf = EnumSet.noneOf(Edge.class);
        if (edgeArr != null) {
            Collections.addAll(noneOf, edgeArr);
        }
        this.lineLabelEdges = noneOf;
    }

    public void setLineLabelInsets(Insets insets) {
        this.lineLabelInsets = insets;
        recalculateSizes(null);
    }

    public void setLineLabelRenderer(Edge edge, LineLabelRenderer lineLabelRenderer) {
        this.lineLabelRenderers.put(edge, lineLabelRenderer);
    }

    public void setLineLabelStyle(Edge edge, LineLabelStyle lineLabelStyle) {
        this.lineLabelStyles.put(edge, lineLabelStyle);
    }

    public void setLinesPerDomainLabel(int i) {
        this.linesPerDomainLabel = i;
    }

    public void setLinesPerRangeLabel(int i) {
        this.linesPerRangeLabel = i;
    }

    public void setRangeCursorPaint(Paint paint) {
        this.rangeCursorPaint = paint;
    }

    public void setRangeCursorPosition(Float f) {
        this.rangeCursorPosition = f;
    }

    public void setRangeGridLinePaint(Paint paint) {
        this.rangeGridLinePaint = paint;
    }

    public void setRangeOriginLinePaint(Paint paint) {
        this.rangeOriginLinePaint = paint;
    }

    public void setRangeSubGridLinePaint(Paint paint) {
        this.rangeSubGridLinePaint = paint;
    }
}
