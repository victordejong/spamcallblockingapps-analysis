package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.highlight.BarHighlighter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.renderer.BarChartRenderer;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/charts/BarChart.class */
public class BarChart extends BarLineChartBase<BarData> implements BarDataProvider {
    protected boolean mHighlightFullBarEnabled = false;
    private boolean mDrawValueAboveBar = true;
    private boolean mDrawBarShadow = false;
    private boolean mFitBars = false;

    public BarChart(Context context) {
        super(context);
    }

    public BarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    protected void calcMinMax() {
        if (this.mFitBars) {
            this.mXAxis.calculate(((BarData) this.mData).getXMin() - (((BarData) this.mData).getBarWidth() / 2.0f), ((BarData) this.mData).getXMax() + (((BarData) this.mData).getBarWidth() / 2.0f));
        } else {
            this.mXAxis.calculate(((BarData) this.mData).getXMin(), ((BarData) this.mData).getXMax());
        }
        this.mAxisLeft.calculate(((BarData) this.mData).getYMin(YAxis.AxisDependency.LEFT), ((BarData) this.mData).getYMax(YAxis.AxisDependency.LEFT));
        this.mAxisRight.calculate(((BarData) this.mData).getYMin(YAxis.AxisDependency.RIGHT), ((BarData) this.mData).getYMax(YAxis.AxisDependency.RIGHT));
    }

    public RectF getBarBounds(BarEntry barEntry) {
        RectF rectF = new RectF();
        getBarBounds(barEntry, rectF);
        return rectF;
    }

    public void getBarBounds(BarEntry barEntry, RectF rectF) {
        IBarDataSet iBarDataSet = (IBarDataSet) ((BarData) this.mData).getDataSetForEntry(barEntry);
        if (iBarDataSet == null) {
            rectF.set(Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE);
            return;
        }
        float y = barEntry.getY();
        float x = barEntry.getX();
        float barWidth = ((BarData) this.mData).getBarWidth() / 2.0f;
        float f = y >= 0.0f ? y : 0.0f;
        if (y > 0.0f) {
            y = 0.0f;
        }
        rectF.set(x - barWidth, f, x + barWidth, y);
        getTransformer(iBarDataSet.getAxisDependency()).rectValueToPixel(rectF);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public BarData getBarData() {
        return (BarData) this.mData;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public Highlight getHighlightByTouchPoint(float f, float f2) {
        if (this.mData == 0) {
            Log.e(Chart.LOG_TAG, "Can't select by touch. No data set.");
            return null;
        }
        Highlight highlight = getHighlighter().getHighlight(f, f2);
        return (highlight == null || !isHighlightFullBarEnabled()) ? highlight : new Highlight(highlight.getX(), highlight.getY(), highlight.getXPx(), highlight.getYPx(), highlight.getDataSetIndex(), -1, highlight.getAxis());
    }

    public void groupBars(float f, float f2, float f3) {
        if (getBarData() == null) {
            throw new RuntimeException("You need to set data for the chart before grouping bars.");
        }
        getBarData().groupBars(f, f2, f3);
        notifyDataSetChanged();
    }

    public void highlightValue(float f, int i, int i2) {
        highlightValue(new Highlight(f, i, i2), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mRenderer = new BarChartRenderer(this, this.mAnimator, this.mViewPortHandler);
        setHighlighter(new BarHighlighter(this));
        getXAxis().setSpaceMin(0.5f);
        getXAxis().setSpaceMax(0.5f);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawBarShadowEnabled() {
        return this.mDrawBarShadow;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawValueAboveBarEnabled() {
        return this.mDrawValueAboveBar;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isHighlightFullBarEnabled() {
        return this.mHighlightFullBarEnabled;
    }

    public void setDrawBarShadow(boolean z) {
        this.mDrawBarShadow = z;
    }

    public void setDrawValueAboveBar(boolean z) {
        this.mDrawValueAboveBar = z;
    }

    public void setFitBars(boolean z) {
        this.mFitBars = z;
    }

    public void setHighlightFullBarEnabled(boolean z) {
        this.mHighlightFullBarEnabled = z;
    }
}
