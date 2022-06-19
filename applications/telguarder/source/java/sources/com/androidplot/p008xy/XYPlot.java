package com.androidplot.p008xy;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.util.AttributeSet;
import androidx.core.internal.view.SupportMenu;
import com.androidplot.C0763R;
import com.androidplot.Plot;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.DynamicTableModel;
import com.androidplot.p007ui.HorizontalPositioning;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.TextOrientation;
import com.androidplot.p007ui.VerticalPositioning;
import com.androidplot.p007ui.widget.TextLabelWidget;
import com.androidplot.p008xy.CandlestickSeries;
import com.androidplot.p008xy.SimpleXYSeries;
import com.androidplot.util.AttrUtils;
import com.androidplot.util.PixelUtils;
import com.androidplot.util.SeriesUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.androidplot.xy.XYPlot */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYPlot.class */
public class XYPlot extends Plot<XYSeries, XYSeriesFormatter, XYSeriesRenderer, XYSeriesBundle, XYSeriesRegistry> {
    private static final int DEFAULT_DOMAIN_LABEL_WIDGET_H_DP = 10;
    private static final int DEFAULT_DOMAIN_LABEL_WIDGET_W_DP = 80;
    private static final int DEFAULT_DOMAIN_LABEL_WIDGET_X_OFFSET_DP = 20;
    private static final int DEFAULT_DOMAIN_LABEL_WIDGET_Y_OFFSET_DP = 0;
    private static final int DEFAULT_GRAPH_WIDGET_H_DP = 18;
    private static final int DEFAULT_GRAPH_WIDGET_W_DP = 10;
    private static final int DEFAULT_GRAPH_WIDGET_X_OFFSET_DP = 0;
    private static final int DEFAULT_GRAPH_WIDGET_Y_OFFSET_DP = 0;
    private static final int DEFAULT_LEGEND_WIDGET_H_DP = 10;
    private static final int DEFAULT_LEGEND_WIDGET_ICON_SIZE_DP = 7;
    private static final int DEFAULT_LEGEND_WIDGET_X_OFFSET_DP = 40;
    private static final int DEFAULT_LEGEND_WIDGET_Y_OFFSET_DP = 0;
    private static final int DEFAULT_PLOT_BOTTOM_MARGIN_DP = 1;
    private static final int DEFAULT_PLOT_LEFT_MARGIN_DP = 1;
    private static final int DEFAULT_PLOT_RIGHT_MARGIN_DP = 1;
    private static final int DEFAULT_PLOT_TOP_MARGIN_DP = 1;
    private static final int DEFAULT_RANGE_LABEL_WIDGET_H_DP = 50;
    private static final int DEFAULT_RANGE_LABEL_WIDGET_W_DP = 10;
    private static final int DEFAULT_RANGE_LABEL_WIDGET_X_OFFSET_DP = 0;
    private static final int DEFAULT_RANGE_LABEL_WIDGET_Y_OFFSET_DP = 0;
    private BoundaryMode domainOriginBoundaryMode;
    private StepModel domainStepModel;
    private TextLabelWidget domainTitle;
    private XYGraphWidget graph;
    private XYLegendWidget legend;
    private Number prevMaxX;
    private Number prevMaxY;
    private Number prevMinX;
    private Number prevMinY;
    private PreviewMode previewMode;
    private BoundaryMode rangeOriginBoundaryMode;
    private StepModel rangeStepModel;
    private TextLabelWidget rangeTitle;
    private Number userDomainOrigin;
    private Number userRangeOrigin;
    private ArrayList<XValueMarker> xValueMarkers;
    private ArrayList<YValueMarker> yValueMarkers;
    private XYConstraints constraints = new XYConstraints();
    private RectRegion bounds = RectRegion.withDefaults(new RectRegion(-1, 1, -1, 1));
    private final RectRegion innerLimits = new RectRegion();
    private final RectRegion outerLimits = new RectRegion();
    private XYCoords calculatedOrigin = new XYCoords();
    private Number domainOriginExtent = null;
    private Number rangeOriginExtent = null;

    /* renamed from: com.androidplot.xy.XYPlot$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYPlot$1.class */
    public static /* synthetic */ class C07851 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$BoundaryMode;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$XYFramingModel;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$XYPlot$PreviewMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007f -> B:48:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0083 -> B:44:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0087 -> B:40:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008b -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:46:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0093 -> B:15:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0097 -> B:38:0x0068). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009b -> B:32:0x0073). Please submit an issue!!! */
        static {
            int[] iArr = new int[BoundaryMode.values().length];
            $SwitchMap$com$androidplot$xy$BoundaryMode = iArr;
            try {
                iArr[BoundaryMode.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BoundaryMode[BoundaryMode.AUTO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BoundaryMode[BoundaryMode.GROW.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BoundaryMode[BoundaryMode.SHRINK.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[XYFramingModel.values().length];
            $SwitchMap$com$androidplot$xy$XYFramingModel = iArr2;
            try {
                iArr2[XYFramingModel.ORIGIN.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$androidplot$xy$XYFramingModel[XYFramingModel.EDGE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            int[] iArr3 = new int[PreviewMode.values().length];
            $SwitchMap$com$androidplot$xy$XYPlot$PreviewMode = iArr3;
            try {
                iArr3[PreviewMode.LineAndPoint.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$androidplot$xy$XYPlot$PreviewMode[PreviewMode.Candlestick.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$androidplot$xy$XYPlot$PreviewMode[PreviewMode.Bar.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.androidplot.xy.XYPlot$PreviewMode */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYPlot$PreviewMode.class */
    public enum PreviewMode {
        LineAndPoint,
        Candlestick,
        Bar
    }

    public XYPlot(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public XYPlot(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public XYPlot(Context context, String str) {
        super(context, str);
    }

    public XYPlot(Context context, String str, Plot.RenderMode renderMode) {
        super(context, str, renderMode);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        if (r8.doubleValue() < r7.doubleValue()) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Number applyUserMinMax(java.lang.Number r5, java.lang.Number r6, java.lang.Number r7) {
        /*
            r0 = r5
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L1f
            r0 = r5
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L1f
            r0 = r5
            double r0 = r0.doubleValue()
            r1 = r6
            double r1 = r1.doubleValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L1d
            r0 = r5
            r8 = r0
            goto L1f
        L1d:
            r0 = r6
            r8 = r0
        L1f:
            r0 = r7
            if (r0 == 0) goto L35
            r0 = r8
            if (r0 == 0) goto L35
            r0 = r7
            r5 = r0
            r0 = r8
            double r0 = r0.doubleValue()
            r1 = r7
            double r1 = r1.doubleValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L37
        L35:
            r0 = r8
            r5 = r0
        L37:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidplot.p008xy.XYPlot.applyUserMinMax(java.lang.Number, java.lang.Number, java.lang.Number):java.lang.Number");
    }

    private static double distance(double d, double d2) {
        return d > d2 ? d - d2 : d2 - d;
    }

    public boolean addMarker(XValueMarker xValueMarker) {
        return !this.xValueMarkers.contains(xValueMarker) && this.xValueMarkers.add(xValueMarker);
    }

    public boolean addMarker(YValueMarker yValueMarker) {
        if (this.yValueMarkers.contains(yValueMarker)) {
            return false;
        }
        return this.yValueMarkers.add(yValueMarker);
    }

    public void calculateMinMaxVals() {
        this.prevMinX = this.bounds.isMinXSet() ? this.bounds.getMinX() : null;
        this.prevMaxX = this.bounds.isMaxXSet() ? this.bounds.getMaxX() : null;
        this.prevMinY = this.bounds.isMinYSet() ? this.bounds.getMinY() : null;
        Number number = null;
        if (this.bounds.isMaxYSet()) {
            number = this.bounds.getMaxY();
        }
        this.prevMaxY = number;
        this.bounds.setMinX(this.constraints.getMinX());
        this.bounds.setMaxX(this.constraints.getMaxX());
        this.bounds.setMinY(this.constraints.getMinY());
        this.bounds.setMaxY(this.constraints.getMaxY());
        if (!this.bounds.isFullyDefined()) {
            RectRegion minMax = SeriesUtils.minMax(this.constraints, getRegistry().getSeriesList());
            if (!this.bounds.isMinXSet()) {
                this.bounds.setMinX(minMax.getMinX());
            }
            if (!this.bounds.isMaxXSet()) {
                this.bounds.setMaxX(minMax.getMaxX());
            }
            if (!this.bounds.isMinYSet()) {
                this.bounds.setMinY(minMax.getMinY());
            }
            if (!this.bounds.isMaxYSet()) {
                this.bounds.setMaxY(minMax.getMaxY());
            }
        }
        int i = C07851.$SwitchMap$com$androidplot$xy$XYFramingModel[this.constraints.getDomainFramingModel().ordinal()];
        if (i == 1) {
            updateDomainMinMaxForOriginModel();
        } else if (i != 2) {
            throw new UnsupportedOperationException("Domain Framing Model not yet supported: " + this.constraints.getDomainFramingModel());
        } else {
            this.bounds.setMaxX(applyUserMinMax(getCalculatedUpperBoundary(this.constraints.getDomainUpperBoundaryMode(), this.prevMaxX, this.bounds.getMaxX()), this.innerLimits.getMaxX(), this.outerLimits.getMaxX()));
            this.bounds.setMinX(applyUserMinMax(getCalculatedLowerBoundary(this.constraints.getDomainLowerBoundaryMode(), this.prevMinX, this.bounds.getMinX()), this.outerLimits.getMinX(), this.innerLimits.getMinX()));
        }
        int i2 = C07851.$SwitchMap$com$androidplot$xy$XYFramingModel[this.constraints.getRangeFramingModel().ordinal()];
        if (i2 == 1) {
            updateRangeMinMaxForOriginModel();
        } else if (i2 != 2) {
            throw new UnsupportedOperationException("Range Framing Model not yet supported: " + this.constraints.getRangeFramingModel());
        } else if (getRegistry().size() > 0) {
            this.bounds.setMaxY(applyUserMinMax(getCalculatedUpperBoundary(this.constraints.getRangeUpperBoundaryMode(), this.prevMaxY, this.bounds.getMaxY()), this.innerLimits.getMaxY(), this.outerLimits.getMaxY()));
            this.bounds.setMinY(applyUserMinMax(getCalculatedLowerBoundary(this.constraints.getRangeLowerBoundaryMode(), this.prevMinY, this.bounds.getMinY()), this.outerLimits.getMinY(), this.innerLimits.getMinY()));
        }
        XYCoords xYCoords = this.calculatedOrigin;
        Number number2 = this.userDomainOrigin;
        if (number2 == null) {
            number2 = this.bounds.getMinX();
        }
        xYCoords.f84x = number2;
        XYCoords xYCoords2 = this.calculatedOrigin;
        Number number3 = this.userRangeOrigin;
        if (number3 == null) {
            number3 = this.bounds.getMinY();
        }
        xYCoords2.f85y = number3;
    }

    public void centerOnDomainOrigin(Number number) {
        centerOnDomainOrigin(number, null, BoundaryMode.AUTO);
    }

    public void centerOnDomainOrigin(Number number, Number number2, BoundaryMode boundaryMode) {
        if (number != null) {
            this.constraints.setDomainFramingModel(XYFramingModel.ORIGIN);
            setUserDomainOrigin(number);
            this.domainOriginExtent = number2;
            this.domainOriginBoundaryMode = boundaryMode;
            Number[] originMinMax = getOriginMinMax(boundaryMode, this.userDomainOrigin, number2);
            this.constraints.setMinX(originMinMax[0]);
            this.constraints.setMaxX(originMinMax[1]);
            return;
        }
        throw new IllegalArgumentException("Origin param cannot be null.");
    }

    public void centerOnRangeOrigin(Number number) {
        centerOnRangeOrigin(number, null, BoundaryMode.AUTO);
    }

    public void centerOnRangeOrigin(Number number, Number number2, BoundaryMode boundaryMode) {
        if (number != null) {
            this.constraints.setRangeFramingModel(XYFramingModel.ORIGIN);
            setUserRangeOrigin(number);
            this.rangeOriginExtent = number2;
            this.rangeOriginBoundaryMode = boundaryMode;
            Number[] originMinMax = getOriginMinMax(boundaryMode, this.userRangeOrigin, number2);
            this.constraints.setMinY(originMinMax[0]);
            this.constraints.setMaxY(originMinMax[1]);
            return;
        }
        throw new IllegalArgumentException("Origin param cannot be null.");
    }

    public boolean containsPoint(float f, float f2) {
        return getGraph().containsPoint(f, f2);
    }

    public boolean containsPoint(PointF pointF) {
        return containsPoint(pointF.x, pointF.y);
    }

    public RectRegion getBounds() {
        return this.bounds;
    }

    protected Number getCalculatedLowerBoundary(BoundaryMode boundaryMode, Number number, Number number2) {
        int i = C07851.$SwitchMap$com$androidplot$xy$BoundaryMode[boundaryMode.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                if (i != 4) {
                    throw new UnsupportedOperationException("BoundaryMode not supported: " + boundaryMode);
                } else if (number != null && number2.doubleValue() <= number.doubleValue()) {
                    return number;
                }
            } else if (number != null && number2.doubleValue() >= number.doubleValue()) {
                return number;
            }
        }
        return number2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        if (r8.doubleValue() >= r7.doubleValue()) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
        if (r8.doubleValue() <= r7.doubleValue()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Number getCalculatedUpperBoundary(com.androidplot.p008xy.BoundaryMode r6, java.lang.Number r7, java.lang.Number r8) {
        /*
            r5 = this;
            int[] r0 = com.androidplot.p008xy.XYPlot.C07851.$SwitchMap$com$androidplot$xy$BoundaryMode
            r1 = r6
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L6a
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L6a
            r0 = r9
            r1 = 3
            if (r0 == r1) goto L57
            r0 = r9
            r1 = 4
            if (r0 != r1) goto L35
            r0 = r7
            if (r0 == 0) goto L6a
            r0 = r8
            double r0 = r0.doubleValue()
            r1 = r7
            double r1 = r1.doubleValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L6a
            goto L6c
        L35:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "BoundaryMode not supported: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L57:
            r0 = r7
            if (r0 == 0) goto L6a
            r0 = r8
            double r0 = r0.doubleValue()
            r1 = r7
            double r1 = r1.doubleValue()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L6a
            goto L6c
        L6a:
            r0 = r8
            r7 = r0
        L6c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidplot.p008xy.XYPlot.getCalculatedUpperBoundary(com.androidplot.xy.BoundaryMode, java.lang.Number, java.lang.Number):java.lang.Number");
    }

    public Number getDomainOrigin() {
        return this.calculatedOrigin.f84x;
    }

    public StepMode getDomainStepMode() {
        return this.domainStepModel.getMode();
    }

    public StepModel getDomainStepModel() {
        return this.domainStepModel;
    }

    public double getDomainStepValue() {
        return this.domainStepModel.getValue();
    }

    public TextLabelWidget getDomainTitle() {
        return this.domainTitle;
    }

    public XYGraphWidget getGraph() {
        return this.graph;
    }

    public RectRegion getInnerLimits() {
        return this.innerLimits;
    }

    public XYLegendWidget getLegend() {
        return this.legend;
    }

    public int getLinesPerDomainLabel() {
        return this.graph.getLinesPerDomainLabel();
    }

    public int getLinesPerRangeLabel() {
        return this.graph.getLinesPerRangeLabel();
    }

    public XYCoords getOrigin() {
        return this.calculatedOrigin;
    }

    protected Number[] getOriginMinMax(BoundaryMode boundaryMode, Number number, Number number2) {
        if (boundaryMode == BoundaryMode.FIXED) {
            double doubleValue = number.doubleValue();
            double doubleValue2 = number2.doubleValue();
            return new Number[]{Double.valueOf(doubleValue - doubleValue2), Double.valueOf(doubleValue + doubleValue2)};
        }
        return new Number[]{null, null};
    }

    public RectRegion getOuterLimits() {
        return this.outerLimits;
    }

    public Number getRangeOrigin() {
        return this.calculatedOrigin.f85y;
    }

    public StepMode getRangeStepMode() {
        return this.rangeStepModel.getMode();
    }

    public StepModel getRangeStepModel() {
        return this.rangeStepModel;
    }

    public double getRangeStepValue() {
        return this.rangeStepModel.getValue();
    }

    public TextLabelWidget getRangeTitle() {
        return this.rangeTitle;
    }

    @Override // com.androidplot.Plot
    public XYSeriesRegistry getRegistryInstance() {
        return new XYSeriesRegistry();
    }

    @Deprecated
    public Number getXVal(float f) {
        return getGraph().screenToSeriesX(f);
    }

    @Deprecated
    public Number getXVal(PointF pointF) {
        return getGraph().screenToSeriesX(pointF);
    }

    public List<XValueMarker> getXValueMarkers() {
        return this.xValueMarkers;
    }

    public Number getYVal(float f) {
        return getGraph().screenToSeriesY(f);
    }

    @Deprecated
    public Number getYVal(PointF pointF) {
        return getGraph().screenToSeriesY(pointF);
    }

    public List<YValueMarker> getYValueMarkers() {
        return this.yValueMarkers;
    }

    @Override // com.androidplot.Plot
    public void notifyListenersBeforeDraw(Canvas canvas) {
        super.notifyListenersBeforeDraw(canvas);
        calculateMinMaxVals();
        getRegistry().estimate(this);
    }

    @Override // com.androidplot.Plot
    protected void onAfterConfig() {
        if (isInEditMode()) {
            int i = C07851.$SwitchMap$com$androidplot$xy$XYPlot$PreviewMode[this.previewMode.ordinal()];
            if (i == 1) {
                addSeries((XYPlot) new SimpleXYSeries(Arrays.asList(1, 2, 3, 3, 4), SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "Red"), (SimpleXYSeries) new LineAndPointFormatter(Integer.valueOf((int) SupportMenu.CATEGORY_MASK), null, null, null));
                addSeries((XYPlot) new SimpleXYSeries(Arrays.asList(2, 1, 4, 2, 5), SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "Green"), (SimpleXYSeries) new LineAndPointFormatter(-16711936, null, null, null));
                addSeries((XYPlot) new SimpleXYSeries(Arrays.asList(3, 3, 2, 3, 3), SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "Blue"), (SimpleXYSeries) new LineAndPointFormatter(-16776961, null, null, null));
            } else if (i == 2) {
                CandlestickMaker.make(this, new CandlestickFormatter(), new CandlestickSeries(new CandlestickSeries.Item(1.0d, 10.0d, 2.0d, 9.0d), new CandlestickSeries.Item(4.0d, 18.0d, 6.0d, 5.0d), new CandlestickSeries.Item(3.0d, 11.0d, 5.0d, 10.0d), new CandlestickSeries.Item(2.0d, 17.0d, 2.0d, 15.0d), new CandlestickSeries.Item(6.0d, 11.0d, 11.0d, 7.0d), new CandlestickSeries.Item(8.0d, 16.0d, 10.0d, 15.0d)));
            } else if (i == 3) {
                throw new UnsupportedOperationException("Not yet implemented.");
            } else {
                throw new UnsupportedOperationException("Unexpected preview mode: " + this.previewMode);
            }
        }
    }

    @Override // com.androidplot.Plot
    protected void onPreInit() {
        this.legend = new XYLegendWidget(getLayoutManager(), this, new Size(PixelUtils.dpToPix(10.0f), SizeMode.ABSOLUTE, 0.5f, SizeMode.RELATIVE), new DynamicTableModel(0, 1), new Size(PixelUtils.dpToPix(7.0f), SizeMode.ABSOLUTE, PixelUtils.dpToPix(7.0f), SizeMode.ABSOLUTE));
        this.graph = new XYGraphWidget(getLayoutManager(), this, new Size(PixelUtils.dpToPix(18.0f), SizeMode.FILL, PixelUtils.dpToPix(10.0f), SizeMode.FILL));
        Paint paint = new Paint();
        paint.setColor(-12303292);
        paint.setStyle(Paint.Style.FILL);
        this.graph.setBackgroundPaint(paint);
        this.domainTitle = new TextLabelWidget(getLayoutManager(), new Size(PixelUtils.dpToPix(10.0f), SizeMode.ABSOLUTE, PixelUtils.dpToPix(80.0f), SizeMode.ABSOLUTE), TextOrientation.HORIZONTAL);
        this.rangeTitle = new TextLabelWidget(getLayoutManager(), new Size(PixelUtils.dpToPix(50.0f), SizeMode.ABSOLUTE, PixelUtils.dpToPix(10.0f), SizeMode.ABSOLUTE), TextOrientation.VERTICAL_ASCENDING);
        this.legend.position(PixelUtils.dpToPix(40.0f), HorizontalPositioning.ABSOLUTE_FROM_RIGHT, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_BOTTOM, Anchor.RIGHT_BOTTOM);
        this.graph.position(PixelUtils.dpToPix(0.0f), HorizontalPositioning.ABSOLUTE_FROM_RIGHT, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_CENTER, Anchor.RIGHT_MIDDLE);
        this.domainTitle.position(PixelUtils.dpToPix(20.0f), HorizontalPositioning.ABSOLUTE_FROM_LEFT, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_BOTTOM, Anchor.LEFT_BOTTOM);
        this.rangeTitle.position(PixelUtils.dpToPix(0.0f), HorizontalPositioning.ABSOLUTE_FROM_LEFT, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_CENTER, Anchor.LEFT_MIDDLE);
        getLayoutManager().moveToTop(getTitle());
        getLayoutManager().moveToTop(getLegend());
        getDomainTitle().pack();
        getRangeTitle().pack();
        setPlotMarginLeft(PixelUtils.dpToPix(1.0f));
        setPlotMarginRight(PixelUtils.dpToPix(1.0f));
        setPlotMarginTop(PixelUtils.dpToPix(1.0f));
        setPlotMarginBottom(PixelUtils.dpToPix(1.0f));
        this.xValueMarkers = new ArrayList<>();
        this.yValueMarkers = new ArrayList<>();
        this.domainStepModel = new StepModel(StepMode.SUBDIVIDE, 10.0d);
        this.rangeStepModel = new StepModel(StepMode.SUBDIVIDE, 10.0d);
    }

    @Override // com.androidplot.Plot
    protected void processAttrs(TypedArray typedArray) {
        this.previewMode = PreviewMode.values()[typedArray.getInt(C0763R.styleable.xy_XYPlot_previewMode, PreviewMode.LineAndPoint.ordinal())];
        String string = typedArray.getString(C0763R.styleable.xy_XYPlot_domainTitle);
        if (string != null) {
            getDomainTitle().setText(string);
        }
        String string2 = typedArray.getString(C0763R.styleable.xy_XYPlot_rangeTitle);
        if (string2 != null) {
            getRangeTitle().setText(string2);
        }
        AttrUtils.configureStep(typedArray, getDomainStepModel(), C0763R.styleable.xy_XYPlot_domainStepMode, C0763R.styleable.xy_XYPlot_domainStep);
        AttrUtils.configureStep(typedArray, getRangeStepModel(), C0763R.styleable.xy_XYPlot_rangeStepMode, C0763R.styleable.xy_XYPlot_rangeStep);
        AttrUtils.configureTextPaint(typedArray, getDomainTitle().getLabelPaint(), C0763R.styleable.xy_XYPlot_domainTitleTextColor, C0763R.styleable.xy_XYPlot_domainTitleTextSize);
        AttrUtils.configureTextPaint(typedArray, getRangeTitle().getLabelPaint(), C0763R.styleable.xy_XYPlot_rangeTitleTextColor, C0763R.styleable.xy_XYPlot_rangeTitleTextSize);
        AttrUtils.configureTextPaint(typedArray, getLegend().getTextPaint(), C0763R.styleable.xy_XYPlot_legendTextColor, C0763R.styleable.xy_XYPlot_legendTextSize);
        AttrUtils.configureSize(typedArray, getLegend().getIconSize(), C0763R.styleable.xy_XYPlot_legendIconHeightMode, C0763R.styleable.xy_XYPlot_legendIconHeight, C0763R.styleable.xy_XYPlot_legendIconWidthMode, C0763R.styleable.xy_XYPlot_legendIconWidth);
        AttrUtils.configureWidget(typedArray, getLegend(), C0763R.styleable.xy_XYPlot_legendHeightMode, C0763R.styleable.xy_XYPlot_legendHeight, C0763R.styleable.xy_XYPlot_legendWidthMode, C0763R.styleable.xy_XYPlot_legendWidth, C0763R.styleable.xy_XYPlot_legendHorizontalPositioning, C0763R.styleable.xy_XYPlot_legendHorizontalPosition, C0763R.styleable.xy_XYPlot_legendVerticalPositioning, C0763R.styleable.xy_XYPlot_legendVerticalPosition, C0763R.styleable.xy_XYPlot_legendAnchor, C0763R.styleable.xy_XYPlot_legendVisible);
        getGraph().processAttrs(typedArray);
    }

    public XValueMarker removeMarker(XValueMarker xValueMarker) {
        int indexOf = this.xValueMarkers.indexOf(xValueMarker);
        if (indexOf == -1) {
            return null;
        }
        return this.xValueMarkers.remove(indexOf);
    }

    public YValueMarker removeMarker(YValueMarker yValueMarker) {
        int indexOf = this.yValueMarkers.indexOf(yValueMarker);
        if (indexOf == -1) {
            return null;
        }
        return this.yValueMarkers.remove(indexOf);
    }

    public int removeMarkers() {
        return removeXMarkers() + removeYMarkers();
    }

    public int removeXMarkers() {
        int size = this.xValueMarkers.size();
        this.xValueMarkers.clear();
        return size;
    }

    public int removeYMarkers() {
        int size = this.yValueMarkers.size();
        this.yValueMarkers.clear();
        return size;
    }

    public Number screenToSeriesX(float f) {
        return getGraph().screenToSeriesX(f);
    }

    public Number screenToSeriesY(float f) {
        return getGraph().screenToSeriesY(f);
    }

    public XYCoords screentoSeries(PointF pointF) {
        return getGraph().screenToSeries(pointF);
    }

    public PointF seriesToScreen(XYCoords xYCoords) {
        return getGraph().seriesToScreen(xYCoords);
    }

    public float seriesToScreenX(Number number) {
        return getGraph().seriesToScreenX(number);
    }

    public float seriesToScreenY(Number number) {
        return getGraph().seriesToScreenY(number);
    }

    public void setCursorPosition(float f, float f2) {
        getGraph().setCursorPosition(Float.valueOf(f), Float.valueOf(f2));
    }

    public void setCursorPosition(PointF pointF) {
        getGraph().setCursorPosition(pointF);
    }

    public void setDomainBoundaries(Number number, BoundaryMode boundaryMode, Number number2, BoundaryMode boundaryMode2) {
        synchronized (this) {
            setDomainLowerBoundary(number, boundaryMode);
            setDomainUpperBoundary(number2, boundaryMode2);
        }
    }

    public void setDomainBoundaries(Number number, Number number2, BoundaryMode boundaryMode) {
        synchronized (this) {
            setDomainBoundaries(number, boundaryMode, number2, boundaryMode);
        }
    }

    protected void setDomainFramingModel(XYFramingModel xYFramingModel) {
        this.constraints.setDomainFramingModel(xYFramingModel);
    }

    public void setDomainLabel(String str) {
        getDomainTitle().setText(str);
    }

    public void setDomainLowerBoundary(Number number, BoundaryMode boundaryMode) {
        synchronized (this) {
            if (boundaryMode != BoundaryMode.FIXED) {
                number = null;
            }
            setUserMinX(number);
            setDomainLowerBoundaryMode(boundaryMode);
            setDomainFramingModel(XYFramingModel.EDGE);
        }
    }

    protected void setDomainLowerBoundaryMode(BoundaryMode boundaryMode) {
        synchronized (this) {
            this.constraints.setDomainLowerBoundaryMode(boundaryMode);
        }
    }

    public void setDomainStep(StepMode stepMode, double d) {
        setDomainStepMode(stepMode);
        setDomainStepValue(d);
    }

    public void setDomainStepMode(StepMode stepMode) {
        this.domainStepModel.setMode(stepMode);
    }

    public void setDomainStepModel(StepModel stepModel) {
        this.domainStepModel = stepModel;
    }

    public void setDomainStepValue(double d) {
        this.domainStepModel.setValue(d);
    }

    public void setDomainTitle(TextLabelWidget textLabelWidget) {
        this.domainTitle = textLabelWidget;
    }

    public void setDomainUpperBoundary(Number number, BoundaryMode boundaryMode) {
        synchronized (this) {
            if (boundaryMode != BoundaryMode.FIXED) {
                number = null;
            }
            setUserMaxX(number);
            setDomainUpperBoundaryMode(boundaryMode);
            setDomainFramingModel(XYFramingModel.EDGE);
        }
    }

    protected void setDomainUpperBoundaryMode(BoundaryMode boundaryMode) {
        synchronized (this) {
            this.constraints.setDomainUpperBoundaryMode(boundaryMode);
        }
    }

    public void setGraph(XYGraphWidget xYGraphWidget) {
        this.graph = xYGraphWidget;
    }

    public void setLegend(XYLegendWidget xYLegendWidget) {
        this.legend = xYLegendWidget;
    }

    public void setLinesPerDomainLabel(int i) {
        this.graph.setLinesPerDomainLabel(i);
    }

    public void setLinesPerRangeLabel(int i) {
        this.graph.setLinesPerRangeLabel(i);
    }

    public void setRangeBoundaries(Number number, BoundaryMode boundaryMode, Number number2, BoundaryMode boundaryMode2) {
        synchronized (this) {
            setRangeLowerBoundary(number, boundaryMode);
            setRangeUpperBoundary(number2, boundaryMode2);
        }
    }

    public void setRangeBoundaries(Number number, Number number2, BoundaryMode boundaryMode) {
        synchronized (this) {
            setRangeBoundaries(number, boundaryMode, number2, boundaryMode);
        }
    }

    protected void setRangeFramingModel(XYFramingModel xYFramingModel) {
        this.constraints.setRangeFramingModel(xYFramingModel);
    }

    public void setRangeLabel(String str) {
        getRangeTitle().setText(str);
    }

    public void setRangeLowerBoundary(Number number, BoundaryMode boundaryMode) {
        synchronized (this) {
            if (boundaryMode != BoundaryMode.FIXED) {
                number = null;
            }
            setUserMinY(number);
            setRangeLowerBoundaryMode(boundaryMode);
            setRangeFramingModel(XYFramingModel.EDGE);
        }
    }

    protected void setRangeLowerBoundaryMode(BoundaryMode boundaryMode) {
        synchronized (this) {
            this.constraints.setRangeLowerBoundaryMode(boundaryMode);
        }
    }

    public void setRangeStep(StepMode stepMode, double d) {
        setRangeStepMode(stepMode);
        setRangeStepValue(d);
    }

    public void setRangeStepMode(StepMode stepMode) {
        this.rangeStepModel.setMode(stepMode);
    }

    public void setRangeStepModel(StepModel stepModel) {
        this.rangeStepModel = stepModel;
    }

    public void setRangeStepValue(double d) {
        this.rangeStepModel.setValue(d);
    }

    public void setRangeTitle(TextLabelWidget textLabelWidget) {
        this.rangeTitle = textLabelWidget;
    }

    public void setRangeUpperBoundary(Number number, BoundaryMode boundaryMode) {
        synchronized (this) {
            if (boundaryMode != BoundaryMode.FIXED) {
                number = null;
            }
            setUserMaxY(number);
            setRangeUpperBoundaryMode(boundaryMode);
            setRangeFramingModel(XYFramingModel.EDGE);
        }
    }

    protected void setRangeUpperBoundaryMode(BoundaryMode boundaryMode) {
        synchronized (this) {
            this.constraints.setRangeUpperBoundaryMode(boundaryMode);
        }
    }

    public void setUserDomainOrigin(Number number) {
        synchronized (this) {
            if (number == null) {
                throw new NullPointerException("Origin value cannot be null.");
            }
            this.userDomainOrigin = number;
        }
    }

    protected void setUserMaxX(Number number) {
        synchronized (this) {
            this.constraints.setMaxX(number);
        }
    }

    protected void setUserMaxY(Number number) {
        synchronized (this) {
            this.constraints.setMaxY(number);
        }
    }

    protected void setUserMinX(Number number) {
        synchronized (this) {
            this.constraints.setMinX(number);
        }
    }

    protected void setUserMinY(Number number) {
        synchronized (this) {
            this.constraints.setMinY(number);
        }
    }

    public void setUserRangeOrigin(Number number) {
        synchronized (this) {
            if (number == null) {
                throw new NullPointerException("Origin value cannot be null.");
            }
            this.userRangeOrigin = number;
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    public void updateDomainMinMaxForOriginModel() {
        double doubleValue = this.userDomainOrigin.doubleValue();
        ?? distance = distance(this.bounds.getMaxX().doubleValue(), doubleValue);
        char distance2 = distance(this.bounds.getMinX().doubleValue(), doubleValue);
        if (distance > distance2) {
            distance2 = distance;
        }
        double d = doubleValue - distance2;
        double d2 = doubleValue + distance2;
        int i = C07851.$SwitchMap$com$androidplot$xy$BoundaryMode[this.domainOriginBoundaryMode.ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.bounds.setMinX(Double.valueOf(d));
                this.bounds.setMaxX(Double.valueOf(d2));
            } else if (i == 3) {
                Number number = this.prevMinX;
                if (number == null || d < number.doubleValue()) {
                    this.bounds.setMinX(Double.valueOf(d));
                } else {
                    this.bounds.setMinX(this.prevMinX);
                }
                Number number2 = this.prevMaxX;
                if (number2 == null || d2 > number2.doubleValue()) {
                    this.bounds.setMaxX(Double.valueOf(d2));
                } else {
                    this.bounds.setMaxX(this.prevMaxX);
                }
            } else if (i != 4) {
                throw new UnsupportedOperationException("Domain Origin Boundary Mode not yet supported: " + this.domainOriginBoundaryMode);
            } else {
                Number number3 = this.prevMinX;
                if (number3 == null || d > number3.doubleValue()) {
                    this.bounds.setMinX(Double.valueOf(d));
                } else {
                    this.bounds.setMinX(this.prevMinX);
                }
                Number number4 = this.prevMaxX;
                if (number4 == null || d2 < number4.doubleValue()) {
                    this.bounds.setMaxX(Double.valueOf(d2));
                } else {
                    this.bounds.setMaxX(this.prevMaxX);
                }
            }
        }
    }

    public void updateRangeMinMaxForOriginModel() {
        if (C07851.$SwitchMap$com$androidplot$xy$BoundaryMode[this.rangeOriginBoundaryMode.ordinal()] != 2) {
            throw new UnsupportedOperationException("Range Origin Boundary Mode not yet supported: " + this.rangeOriginBoundaryMode);
        }
        double doubleValue = this.userRangeOrigin.doubleValue();
        double distance = distance(this.bounds.getMaxY().doubleValue(), doubleValue);
        double distance2 = distance(this.bounds.getMinY().doubleValue(), doubleValue);
        if (distance > distance2) {
            this.bounds.setMinY(Double.valueOf(doubleValue - distance));
            this.bounds.setMaxY(Double.valueOf(doubleValue + distance));
            return;
        }
        this.bounds.setMinY(Double.valueOf(doubleValue - distance2));
        this.bounds.setMaxY(Double.valueOf(doubleValue + distance2));
    }
}
