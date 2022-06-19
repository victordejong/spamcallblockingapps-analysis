package com.androidplot.p008xy;

import com.androidplot.p007ui.widget.LegendItem;
/* renamed from: com.androidplot.xy.XYLegendItem */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYLegendItem.class */
public class XYLegendItem implements LegendItem {
    public final Object item;
    private final String text;
    public final Type type;

    /* renamed from: com.androidplot.xy.XYLegendItem$Type */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/XYLegendItem$Type.class */
    public enum Type {
        SERIES,
        REGION
    }

    public XYLegendItem(Type type, Object obj, String str) {
        this.type = type;
        this.item = obj;
        this.text = str;
    }

    @Override // com.androidplot.p007ui.widget.LegendItem
    public String getTitle() {
        return this.text;
    }
}
