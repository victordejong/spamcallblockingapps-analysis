package com.github.mikephil.charting.data;

import com.github.mikephil.charting.interfaces.datasets.IRadarDataSet;
import com.github.mikephil.charting.utils.ColorTemplate;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/RadarDataSet.class */
public class RadarDataSet extends LineRadarDataSet<RadarEntry> implements IRadarDataSet {
    protected boolean mDrawHighlightCircleEnabled = false;
    protected int mHighlightCircleFillColor = -1;
    protected int mHighlightCircleStrokeColor = ColorTemplate.COLOR_NONE;
    protected int mHighlightCircleStrokeAlpha = 76;
    protected float mHighlightCircleInnerRadius = 3.0f;
    protected float mHighlightCircleOuterRadius = 4.0f;
    protected float mHighlightCircleStrokeWidth = 2.0f;

    public RadarDataSet(List<RadarEntry> list, String str) {
        super(list, str);
    }

    @Override // com.github.mikephil.charting.data.DataSet
    public DataSet<RadarEntry> copy() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.mValues.size(); i++) {
            arrayList.add(((RadarEntry) this.mValues.get(i)).copy());
        }
        RadarDataSet radarDataSet = new RadarDataSet(arrayList, getLabel());
        radarDataSet.mColors = this.mColors;
        radarDataSet.mHighLightColor = this.mHighLightColor;
        return radarDataSet;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public int getHighlightCircleFillColor() {
        return this.mHighlightCircleFillColor;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public float getHighlightCircleInnerRadius() {
        return this.mHighlightCircleInnerRadius;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public float getHighlightCircleOuterRadius() {
        return this.mHighlightCircleOuterRadius;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public int getHighlightCircleStrokeAlpha() {
        return this.mHighlightCircleStrokeAlpha;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public int getHighlightCircleStrokeColor() {
        return this.mHighlightCircleStrokeColor;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public float getHighlightCircleStrokeWidth() {
        return this.mHighlightCircleStrokeWidth;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public boolean isDrawHighlightCircleEnabled() {
        return this.mDrawHighlightCircleEnabled;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IRadarDataSet
    public void setDrawHighlightCircleEnabled(boolean z) {
        this.mDrawHighlightCircleEnabled = z;
    }

    public void setHighlightCircleFillColor(int i) {
        this.mHighlightCircleFillColor = i;
    }

    public void setHighlightCircleInnerRadius(float f) {
        this.mHighlightCircleInnerRadius = f;
    }

    public void setHighlightCircleOuterRadius(float f) {
        this.mHighlightCircleOuterRadius = f;
    }

    public void setHighlightCircleStrokeAlpha(int i) {
        this.mHighlightCircleStrokeAlpha = i;
    }

    public void setHighlightCircleStrokeColor(int i) {
        this.mHighlightCircleStrokeColor = i;
    }

    public void setHighlightCircleStrokeWidth(float f) {
        this.mHighlightCircleStrokeWidth = f;
    }
}
