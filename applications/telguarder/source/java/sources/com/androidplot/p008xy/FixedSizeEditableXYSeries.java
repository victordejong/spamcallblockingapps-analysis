package com.androidplot.p008xy;

import com.androidplot.util.FastNumber;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.androidplot.xy.FixedSizeEditableXYSeries */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/FixedSizeEditableXYSeries.class */
public class FixedSizeEditableXYSeries implements EditableXYSeries {
    private String title;
    private List<FastNumber> xVals = new ArrayList();
    private List<FastNumber> yVals = new ArrayList();

    public FixedSizeEditableXYSeries(String str, int i) {
        setTitle(str);
        resize(i);
    }

    @Override // com.androidplot.Series
    public String getTitle() {
        return this.title;
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getX(int i) {
        return this.xVals.get(i);
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getY(int i) {
        return this.yVals.get(i);
    }

    @Override // com.androidplot.p008xy.EditableXYSeries
    public void resize(int i) {
        resize(this.xVals, i);
        resize(this.yVals, i);
    }

    protected void resize(List list, int i) {
        if (i > list.size()) {
            while (list.size() < i) {
                list.add(null);
            }
        } else if (i >= list.size()) {
        } else {
            while (list.size() > i) {
                list.remove(list.size() - 1);
            }
        }
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // com.androidplot.p008xy.EditableXYSeries
    public void setX(Number number, int i) {
        this.xVals.set(i, FastNumber.orNull(number));
    }

    @Override // com.androidplot.p008xy.EditableXYSeries
    public void setY(Number number, int i) {
        this.yVals.set(i, FastNumber.orNull(number));
    }

    @Override // com.androidplot.p008xy.XYSeries
    public int size() {
        return this.xVals.size();
    }
}
