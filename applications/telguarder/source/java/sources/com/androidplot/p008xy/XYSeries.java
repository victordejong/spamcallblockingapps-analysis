package com.androidplot.p008xy;

import com.androidplot.Series;
/* renamed from: com.androidplot.xy.XYSeries */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYSeries.class */
public interface XYSeries extends Series {
    Number getX(int i);

    Number getY(int i);

    int size();
}
