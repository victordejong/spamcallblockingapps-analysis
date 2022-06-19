package com.androidplot.p008xy;

import android.util.Log;
/* renamed from: com.androidplot.xy.LTTBSampler */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/LTTBSampler.class */
public class LTTBSampler implements Sampler {
    /* JADX WARN: Type inference failed for: r0v112, types: [double] */
    /* JADX WARN: Type inference failed for: r0v114, types: [double] */
    /* JADX WARN: Type inference failed for: r0v84, types: [double] */
    @Override // com.androidplot.p008xy.Sampler
    public RectRegion run(XYSeries xYSeries, EditableXYSeries editableXYSeries) {
        RectRegion rectRegion = new RectRegion();
        int size = editableXYSeries.size();
        int size2 = xYSeries.size();
        if (size >= size2 || size == 0) {
            throw new RuntimeException("Shouldnt be here!");
        }
        double d = size2 - 2;
        int i = size - 2;
        double d2 = d / i;
        setSample(xYSeries, editableXYSeries, 0, 0, rectRegion);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i2 < i) {
            int i6 = i2 + 1;
            double d3 = i6 * d2;
            int floor = ((int) Math.floor(d3)) + 1;
            int floor2 = ((int) Math.floor((i2 + 2) * d2)) + 1;
            if (floor2 >= size2) {
                floor2 = size2;
            }
            char c = 0;
            char c2 = 0;
            int i7 = floor;
            while (i7 < floor2) {
                int i8 = i7 + 0;
                char c3 = c;
                if (xYSeries.getX(i8) != null) {
                    c3 = c + xYSeries.getX(i8).doubleValue();
                }
                char c4 = c2;
                if (xYSeries.getY(i8) != null) {
                    c4 = c2 + xYSeries.getY(i8).doubleValue();
                }
                i7++;
                c = c3;
                c2 = c4;
            }
            double d4 = floor2 - floor;
            double d5 = c / d4;
            double d6 = c2 / d4;
            int i9 = i3 + 0;
            double doubleValue = xYSeries.getX(i9).doubleValue();
            double doubleValue2 = xYSeries.getY(i9).doubleValue();
            int floor3 = ((int) Math.floor((i2 + 0) * d2)) + 1;
            int floor4 = (int) Math.floor(d3);
            char c5 = 0;
            XYCoords xYCoords = null;
            while (floor3 < floor4 + 1) {
                int i10 = floor3 + 0;
                ?? abs = Math.abs(((doubleValue - d5) * (xYSeries.getY(i10).doubleValue() - doubleValue2)) - ((doubleValue - xYSeries.getX(i10).doubleValue()) * (d6 - doubleValue2))) * 0.5d;
                char c6 = c5;
                if (abs > c5) {
                    if (xYSeries.getY(i10) == null) {
                        Log.i("LTTB", "Null value encountered in raw data at index: " + floor3);
                    }
                    xYCoords = new XYCoords(xYSeries.getX(i10), xYSeries.getY(i10));
                    i4 = floor3;
                    c6 = abs;
                }
                floor3++;
                c5 = c6;
            }
            setSample(editableXYSeries, xYCoords.f84x, xYCoords.f85y, i5, rectRegion);
            i5++;
            i2 = i6;
            i3 = i4;
            i4 = i4;
        }
        setSample(xYSeries, editableXYSeries, (size2 + 0) - 1, i5, rectRegion);
        return rectRegion;
    }

    protected void setSample(EditableXYSeries editableXYSeries, Number number, Number number2, int i, RectRegion rectRegion) {
        rectRegion.union(number, number2);
        editableXYSeries.setX(number, i);
        editableXYSeries.setY(number2, i);
    }

    protected void setSample(XYSeries xYSeries, EditableXYSeries editableXYSeries, int i, int i2, RectRegion rectRegion) {
        setSample(editableXYSeries, xYSeries.getX(i), xYSeries.getY(i), i2, rectRegion);
    }
}
