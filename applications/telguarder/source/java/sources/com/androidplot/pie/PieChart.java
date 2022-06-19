package com.androidplot.pie;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.androidplot.C0763R;
import com.androidplot.Plot;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.DynamicTableModel;
import com.androidplot.p007ui.HorizontalPositioning;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.VerticalPositioning;
import com.androidplot.util.AttrUtils;
import com.androidplot.util.PixelUtils;
/* loaded from: classes-dex2jar.jar:com/androidplot/pie/PieChart.class */
public class PieChart extends Plot<Segment, SegmentFormatter, PieRenderer, SegmentBundle, SegmentRegistry> {
    private static final int DEFAULT_LEGEND_WIDGET_H_DP = 30;
    private static final int DEFAULT_LEGEND_WIDGET_ICON_SIZE_DP = 18;
    private static final int DEFAULT_LEGEND_WIDGET_X_OFFSET_DP = 40;
    private static final int DEFAULT_LEGEND_WIDGET_Y_OFFSET_DP = 0;
    private static final int DEFAULT_PADDING_DP = 5;
    private static final int DEFAULT_PIE_WIDGET_H_DP = 18;
    private static final int DEFAULT_PIE_WIDGET_W_DP = 10;
    private static final int DEFAULT_PIE_WIDGET_X_OFFSET_DP = 0;
    private static final int DEFAULT_PIE_WIDGET_Y_OFFSET_DP = 0;
    private PieLegendWidget legend;
    private PieWidget pie;

    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PieChart(Context context, String str) {
        super(context, str);
    }

    public PieChart(Context context, String str, Plot.RenderMode renderMode) {
        super(context, str, renderMode);
    }

    public void addSegment(Segment segment, SegmentFormatter segmentFormatter) {
        addSeries((PieChart) segment, (Segment) segmentFormatter);
    }

    public PieLegendWidget getLegend() {
        return this.legend;
    }

    public PieWidget getPie() {
        return this.pie;
    }

    @Override // com.androidplot.Plot
    public SegmentRegistry getRegistryInstance() {
        return new SegmentRegistry();
    }

    @Override // com.androidplot.Plot
    protected void onPreInit() {
        PieWidget pieWidget = new PieWidget(getLayoutManager(), this, new Size(PixelUtils.dpToPix(18.0f), SizeMode.FILL, PixelUtils.dpToPix(10.0f), SizeMode.FILL));
        this.pie = pieWidget;
        pieWidget.position(PixelUtils.dpToPix(0.0f), HorizontalPositioning.ABSOLUTE_FROM_CENTER, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_CENTER, Anchor.CENTER);
        PieLegendWidget pieLegendWidget = new PieLegendWidget(getLayoutManager(), this, new Size(PixelUtils.dpToPix(30.0f), SizeMode.ABSOLUTE, 0.5f, SizeMode.RELATIVE), new DynamicTableModel(0, 1), new Size(PixelUtils.dpToPix(18.0f), SizeMode.ABSOLUTE, PixelUtils.dpToPix(18.0f), SizeMode.ABSOLUTE));
        this.legend = pieLegendWidget;
        pieLegendWidget.position(PixelUtils.dpToPix(40.0f), HorizontalPositioning.ABSOLUTE_FROM_RIGHT, PixelUtils.dpToPix(0.0f), VerticalPositioning.ABSOLUTE_FROM_BOTTOM, Anchor.RIGHT_BOTTOM);
        this.legend.setVisible(false);
        float dpToPix = PixelUtils.dpToPix(5.0f);
        this.pie.setPadding(dpToPix, dpToPix, dpToPix, dpToPix);
    }

    @Override // com.androidplot.Plot
    protected void processAttrs(TypedArray typedArray) {
        AttrUtils.configureLinePaint(typedArray, getBorderPaint(), C0763R.styleable.pie_PieChart_pieBorderColor, C0763R.styleable.pie_PieChart_pieBorderThickness);
    }

    public void removeSegment(Segment segment) {
        removeSeries(segment);
    }

    public void setLegend(PieLegendWidget pieLegendWidget) {
        this.legend = pieLegendWidget;
    }

    public void setPie(PieWidget pieWidget) {
        this.pie = pieWidget;
    }
}
