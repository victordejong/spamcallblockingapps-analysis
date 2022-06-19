package com.androidplot.p008xy;
/* renamed from: com.androidplot.xy.OrderedXYSeries */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/OrderedXYSeries.class */
public interface OrderedXYSeries extends XYSeries {

    /* renamed from: com.androidplot.xy.OrderedXYSeries$XOrder */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/OrderedXYSeries$XOrder.class */
    public enum XOrder {
        ASCENDING,
        DESCENDING,
        NONE
    }

    XOrder getXOrder();
}
