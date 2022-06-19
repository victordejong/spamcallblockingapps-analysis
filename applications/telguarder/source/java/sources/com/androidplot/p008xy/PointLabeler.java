package com.androidplot.p008xy;

import com.androidplot.p008xy.XYSeries;
/* renamed from: com.androidplot.xy.PointLabeler */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/PointLabeler.class */
public interface PointLabeler<SeriesType extends XYSeries> {
    String getLabel(SeriesType seriestype, int i);
}
