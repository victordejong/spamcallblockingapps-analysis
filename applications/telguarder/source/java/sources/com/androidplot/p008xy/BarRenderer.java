package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p008xy.BarFormatter;
import com.androidplot.util.PixelUtils;
import com.androidplot.util.RectFUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.androidplot.xy.BarRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer.class */
public class BarRenderer<FormatterType extends BarFormatter> extends GroupRenderer<FormatterType> {
    private BarOrientation barOrientation = BarOrientation.OVERLAID;
    private BarGroupWidthMode barGroupWidthMode = BarGroupWidthMode.FIXED_WIDTH;
    private float width = PixelUtils.dpToPix(3.0f);

    /* renamed from: com.androidplot.xy.BarRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$1.class */
    public static /* synthetic */ class C07751 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$BarRenderer$BarGroupWidthMode;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[BarOrientation.values().length];
            $SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation = iArr;
            try {
                iArr[BarOrientation.IN_ORDER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation[BarOrientation.OVERLAID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation[BarOrientation.SIDE_BY_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation[BarOrientation.STACKED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[BarGroupWidthMode.values().length];
            $SwitchMap$com$androidplot$xy$BarRenderer$BarGroupWidthMode = iArr2;
            try {
                iArr2[BarGroupWidthMode.FIXED_WIDTH.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$androidplot$xy$BarRenderer$BarGroupWidthMode[BarGroupWidthMode.FIXED_GAP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.androidplot.xy.BarRenderer$Bar */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$Bar.class */
    public static class Bar<FormatterType extends BarFormatter> {
        protected BarGroup barGroup;
        public final FormatterType formatter;

        /* renamed from: i */
        public final int f82i;
        public final XYSeries series;
        public final int seriesOrder;
        public final float xPix;
        public final float yPix;

        public Bar(XYPlot xYPlot, XYSeries xYSeries, FormatterType formattertype, int i, int i2, RectF rectF) {
            this.series = xYSeries;
            this.formatter = formattertype;
            this.f82i = i2;
            this.seriesOrder = i;
            this.xPix = (float) xYPlot.getBounds().getxRegion().transform(xYSeries.getX(i2).doubleValue(), rectF.left, rectF.right, false);
            if (xYSeries.getY(i2) == null) {
                this.yPix = 0.0f;
                return;
            }
            this.yPix = (float) xYPlot.getBounds().yRegion.transform(xYSeries.getY(i2).doubleValue(), rectF.top, rectF.bottom, true);
        }

        public Number getY() {
            return this.series.getY(this.f82i);
        }
    }

    /* renamed from: com.androidplot.xy.BarRenderer$BarComparator */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$BarComparator.class */
    public static class BarComparator implements Comparator<Bar> {
        private final BarOrientation barOrientation;
        private final float rangeOriginPx;

        public BarComparator(BarOrientation barOrientation, float f) {
            this.rangeOriginPx = f;
            this.barOrientation = barOrientation;
        }

        public int compare(Bar bar, Bar bar2) {
            return C07751.$SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation[this.barOrientation.ordinal()] != 2 ? Integer.valueOf(bar.seriesOrder).compareTo(Integer.valueOf(bar2.seriesOrder)) : (bar.yPix <= this.rangeOriginPx || bar2.yPix <= this.rangeOriginPx) ? Float.valueOf(bar.yPix).compareTo(Float.valueOf(bar2.yPix)) : Float.valueOf(bar2.yPix).compareTo(Float.valueOf(bar.yPix));
        }
    }

    /* renamed from: com.androidplot.xy.BarRenderer$BarGroup */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$BarGroup.class */
    private static class BarGroup {
        public ArrayList<Bar> bars = new ArrayList<>();
        public float centerPix;

        /* renamed from: i */
        public int f83i;
        public float leftPix;
        public RectF plotArea;
        public float rightPix;

        public BarGroup(int i, float f, RectF rectF) {
            this.centerPix = f;
            this.plotArea = rectF;
            this.f83i = i;
        }

        public void addBar(Bar bar) {
            bar.barGroup = this;
            this.bars.add(bar);
        }

        protected float getWidth() {
            return this.rightPix - this.leftPix;
        }
    }

    /* renamed from: com.androidplot.xy.BarRenderer$BarGroupWidthMode */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$BarGroupWidthMode.class */
    public enum BarGroupWidthMode {
        FIXED_WIDTH,
        FIXED_GAP
    }

    /* renamed from: com.androidplot.xy.BarRenderer$BarOrientation */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarRenderer$BarOrientation.class */
    public enum BarOrientation {
        IN_ORDER,
        OVERLAID,
        STACKED,
        SIDE_BY_SIDE
    }

    public BarRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    protected RectF createBarRect(float f, float f2, float f3, float f4, BarFormatter barFormatter) {
        RectF createFromEdges = RectFUtils.createFromEdges(f, f2, f3, f4);
        createFromEdges.left += barFormatter.getMarginLeft();
        createFromEdges.right -= barFormatter.getMarginRight();
        createFromEdges.top += barFormatter.getMarginTop();
        createFromEdges.bottom -= barFormatter.getMarginBottom();
        return createFromEdges;
    }

    public void doDrawLegendIcon(Canvas canvas, RectF rectF, BarFormatter barFormatter) {
        if (barFormatter.hasFillPaint()) {
            canvas.drawRect(rectF, barFormatter.getFillPaint());
        }
        canvas.drawRect(rectF, barFormatter.getBorderPaint());
    }

    protected void drawBar(Canvas canvas, Bar<FormatterType> bar, RectF rectF) {
        if (bar.getY() == null) {
            return;
        }
        FormatterType formatter = getFormatter(bar.f82i, bar.series);
        FormatterType formattertype = formatter;
        if (formatter == null) {
            formattertype = bar.formatter;
        }
        if (rectF.height() > 0.0f && rectF.width() > 0.0f) {
            if (formattertype.hasFillPaint()) {
                canvas.drawRect(rectF.left, rectF.top, rectF.right, rectF.bottom, formattertype.getFillPaint());
            }
            if (formattertype.hasLinePaint()) {
                canvas.drawRect(rectF.left, rectF.top, rectF.right, rectF.bottom, formattertype.getBorderPaint());
            }
        }
        PointLabeler pointLabeler = null;
        PointLabelFormatter pointLabelFormatter = formattertype.hasPointLabelFormatter() ? formattertype.getPointLabelFormatter() : null;
        if (formattertype != null) {
            pointLabeler = formattertype.getPointLabeler();
        }
        if (pointLabelFormatter == null || !pointLabelFormatter.hasTextPaint() || pointLabeler == null) {
            return;
        }
        canvas.drawText(pointLabeler.getLabel(bar.series, bar.f82i), rectF.centerX() + pointLabelFormatter.hOffset, bar.yPix + pointLabelFormatter.vOffset, pointLabelFormatter.getTextPaint());
    }

    protected BarComparator getBarComparator(float f) {
        return new BarComparator(getBarOrientation(), f);
    }

    public float getBarGroupWidth() {
        return this.width;
    }

    public BarGroupWidthMode getBarGroupWidthMode() {
        return this.barGroupWidthMode;
    }

    public BarOrientation getBarOrientation() {
        return this.barOrientation;
    }

    public FormatterType getFormatter(int i, XYSeries xYSeries) {
        return null;
    }

    @Override // com.androidplot.p008xy.GroupRenderer
    public void onRender(Canvas canvas, RectF rectF, List<SeriesBundle<XYSeries, ? extends FormatterType>> list, int i, RenderStack renderStack) {
        ArrayList<BarGroup> arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            BarGroup barGroup = new BarGroup(i2, 0.0f, rectF);
            int i3 = 0;
            for (SeriesBundle<XYSeries, ? extends FormatterType> seriesBundle : list) {
                if (seriesBundle.getSeries().getX(i2) != null) {
                    Bar bar = new Bar(getPlot(), seriesBundle.getSeries(), seriesBundle.getFormatter(), i3, i2, rectF);
                    barGroup.addBar(bar);
                    barGroup.centerPix = bar.xPix;
                }
                i3++;
            }
            arrayList.add(barGroup);
        }
        int size = arrayList.size();
        ArrayList arrayList2 = arrayList;
        for (BarGroup barGroup2 : arrayList) {
            int i4 = C07751.$SwitchMap$com$androidplot$xy$BarRenderer$BarGroupWidthMode[this.barGroupWidthMode.ordinal()];
            if (i4 == 1) {
                barGroup2.leftPix = barGroup2.centerPix - (this.width / 2.0f);
                barGroup2.rightPix = barGroup2.leftPix + this.width;
            } else if (i4 == 2) {
                float width = rectF.width();
                if (size > 1) {
                    width = (((BarGroup) arrayList2.get(1)).centerPix - ((BarGroup) arrayList2.get(0)).centerPix) - this.width;
                }
                float f = width / 2.0f;
                barGroup2.leftPix = barGroup2.centerPix - f;
                barGroup2.rightPix = barGroup2.centerPix + f;
            }
            float transform = (float) getPlot().getBounds().yRegion.transform(getPlot().getRangeOrigin().doubleValue(), rectF.top, rectF.bottom, true);
            BarComparator barComparator = getBarComparator(transform);
            int i5 = C07751.$SwitchMap$com$androidplot$xy$BarRenderer$BarOrientation[this.barOrientation.ordinal()];
            if (i5 == 1 || i5 == 2) {
                ArrayList arrayList3 = arrayList2;
                Collections.sort(barGroup2.bars, barComparator);
                Iterator<Bar> it = barGroup2.bars.iterator();
                while (true) {
                    arrayList2 = arrayList3;
                    if (it.hasNext()) {
                        Bar next = it.next();
                        drawBar(canvas, next, createBarRect(next.barGroup.leftPix, next.yPix, next.barGroup.rightPix, transform, next.formatter));
                    }
                }
            } else if (i5 == 3) {
                ArrayList arrayList4 = arrayList2;
                float width2 = barGroup2.getWidth() / barGroup2.bars.size();
                float f2 = barGroup2.leftPix;
                Collections.sort(barGroup2.bars, barComparator);
                Iterator<Bar> it2 = barGroup2.bars.iterator();
                while (true) {
                    arrayList2 = arrayList4;
                    if (it2.hasNext()) {
                        Bar next2 = it2.next();
                        float f3 = next2.yPix;
                        float f4 = f2 + width2;
                        drawBar(canvas, next2, createBarRect(f2, f3, f4, transform, next2.formatter));
                        f2 = f4;
                    }
                }
            } else if (i5 != 4) {
                throw new UnsupportedOperationException("Unexpected BarOrientation: " + this.barOrientation);
            } else {
                float f5 = (int) barGroup2.plotArea.bottom;
                Collections.sort(barGroup2.bars, barComparator);
                Iterator<Bar> it3 = barGroup2.bars.iterator();
                while (it3.hasNext()) {
                    Bar next3 = it3.next();
                    float f6 = f5 - (((int) next3.barGroup.plotArea.bottom) - next3.yPix);
                    drawBar(canvas, next3, createBarRect(next3.barGroup.leftPix, f6, next3.barGroup.rightPix, f5, next3.formatter));
                    f5 = f6;
                }
            }
        }
    }

    public void setBarGroupWidth(BarGroupWidthMode barGroupWidthMode, float f) {
        this.barGroupWidthMode = barGroupWidthMode;
        this.width = f;
    }

    public void setBarOrientation(BarOrientation barOrientation) {
        this.barOrientation = barOrientation;
    }
}
