package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/formatter/IValueFormatter.class */
public interface IValueFormatter {
    String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler);
}
