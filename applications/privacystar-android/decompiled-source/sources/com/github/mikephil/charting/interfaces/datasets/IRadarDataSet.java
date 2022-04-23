package com.github.mikephil.charting.interfaces.datasets;

import com.github.mikephil.charting.data.RadarEntry;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/interfaces/datasets/IRadarDataSet.class */
public interface IRadarDataSet extends ILineRadarDataSet<RadarEntry> {
    int getHighlightCircleFillColor();

    float getHighlightCircleInnerRadius();

    float getHighlightCircleOuterRadius();

    int getHighlightCircleStrokeAlpha();

    int getHighlightCircleStrokeColor();

    float getHighlightCircleStrokeWidth();

    boolean isDrawHighlightCircleEnabled();

    void setDrawHighlightCircleEnabled(boolean z);
}
