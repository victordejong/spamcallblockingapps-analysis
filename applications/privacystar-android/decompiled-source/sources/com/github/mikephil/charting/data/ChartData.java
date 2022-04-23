package com.github.mikephil.charting.data;

import android.graphics.Typeface;
import android.util.Log;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/ChartData.class */
public abstract class ChartData<T extends IDataSet<? extends Entry>> {
    protected List<T> mDataSets;
    protected float mLeftAxisMax;
    protected float mLeftAxisMin;
    protected float mRightAxisMax;
    protected float mRightAxisMin;
    protected float mXMax;
    protected float mXMin;
    protected float mYMax;
    protected float mYMin;

    public ChartData() {
        this.mYMax = -3.4028235E38f;
        this.mYMin = Float.MAX_VALUE;
        this.mXMax = -3.4028235E38f;
        this.mXMin = Float.MAX_VALUE;
        this.mLeftAxisMax = -3.4028235E38f;
        this.mLeftAxisMin = Float.MAX_VALUE;
        this.mRightAxisMax = -3.4028235E38f;
        this.mRightAxisMin = Float.MAX_VALUE;
        this.mDataSets = new ArrayList();
    }

    public ChartData(List<T> list) {
        this.mYMax = -3.4028235E38f;
        this.mYMin = Float.MAX_VALUE;
        this.mXMax = -3.4028235E38f;
        this.mXMin = Float.MAX_VALUE;
        this.mLeftAxisMax = -3.4028235E38f;
        this.mLeftAxisMin = Float.MAX_VALUE;
        this.mRightAxisMax = -3.4028235E38f;
        this.mRightAxisMin = Float.MAX_VALUE;
        this.mDataSets = list;
        notifyDataChanged();
    }

    public ChartData(T... tArr) {
        this.mYMax = -3.4028235E38f;
        this.mYMin = Float.MAX_VALUE;
        this.mXMax = -3.4028235E38f;
        this.mXMin = Float.MAX_VALUE;
        this.mLeftAxisMax = -3.4028235E38f;
        this.mLeftAxisMin = Float.MAX_VALUE;
        this.mRightAxisMax = -3.4028235E38f;
        this.mRightAxisMin = Float.MAX_VALUE;
        this.mDataSets = arrayToList(tArr);
        notifyDataChanged();
    }

    private List<T> arrayToList(T[] tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            arrayList.add(t);
        }
        return arrayList;
    }

    public void addDataSet(T t) {
        if (t != null) {
            calcMinMax(t);
            this.mDataSets.add(t);
        }
    }

    public void addEntry(Entry entry, int i) {
        if (this.mDataSets.size() <= i || i < 0) {
            Log.e("addEntry", "Cannot add Entry because dataSetIndex too high or too low.");
            return;
        }
        T t = this.mDataSets.get(i);
        if (t.addEntry(entry)) {
            calcMinMax(entry, t.getAxisDependency());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calcMinMax() {
        if (this.mDataSets != null) {
            this.mYMax = -3.4028235E38f;
            this.mYMin = Float.MAX_VALUE;
            this.mXMax = -3.4028235E38f;
            this.mXMin = Float.MAX_VALUE;
            for (T t : this.mDataSets) {
                calcMinMax(t);
            }
            this.mLeftAxisMax = -3.4028235E38f;
            this.mLeftAxisMin = Float.MAX_VALUE;
            this.mRightAxisMax = -3.4028235E38f;
            this.mRightAxisMin = Float.MAX_VALUE;
            T firstLeft = getFirstLeft(this.mDataSets);
            if (firstLeft != null) {
                this.mLeftAxisMax = firstLeft.getYMax();
                this.mLeftAxisMin = firstLeft.getYMin();
                for (T t2 : this.mDataSets) {
                    if (t2.getAxisDependency() == YAxis.AxisDependency.LEFT) {
                        if (t2.getYMin() < this.mLeftAxisMin) {
                            this.mLeftAxisMin = t2.getYMin();
                        }
                        if (t2.getYMax() > this.mLeftAxisMax) {
                            this.mLeftAxisMax = t2.getYMax();
                        }
                    }
                }
            }
            T firstRight = getFirstRight(this.mDataSets);
            if (firstRight != null) {
                this.mRightAxisMax = firstRight.getYMax();
                this.mRightAxisMin = firstRight.getYMin();
                for (T t3 : this.mDataSets) {
                    if (t3.getAxisDependency() == YAxis.AxisDependency.RIGHT) {
                        if (t3.getYMin() < this.mRightAxisMin) {
                            this.mRightAxisMin = t3.getYMin();
                        }
                        if (t3.getYMax() > this.mRightAxisMax) {
                            this.mRightAxisMax = t3.getYMax();
                        }
                    }
                }
            }
        }
    }

    protected void calcMinMax(Entry entry, YAxis.AxisDependency axisDependency) {
        if (this.mYMax < entry.getY()) {
            this.mYMax = entry.getY();
        }
        if (this.mYMin > entry.getY()) {
            this.mYMin = entry.getY();
        }
        if (this.mXMax < entry.getX()) {
            this.mXMax = entry.getX();
        }
        if (this.mXMin > entry.getX()) {
            this.mXMin = entry.getX();
        }
        if (axisDependency == YAxis.AxisDependency.LEFT) {
            if (this.mLeftAxisMax < entry.getY()) {
                this.mLeftAxisMax = entry.getY();
            }
            if (this.mLeftAxisMin > entry.getY()) {
                this.mLeftAxisMin = entry.getY();
                return;
            }
            return;
        }
        if (this.mRightAxisMax < entry.getY()) {
            this.mRightAxisMax = entry.getY();
        }
        if (this.mRightAxisMin > entry.getY()) {
            this.mRightAxisMin = entry.getY();
        }
    }

    protected void calcMinMax(T t) {
        if (this.mYMax < t.getYMax()) {
            this.mYMax = t.getYMax();
        }
        if (this.mYMin > t.getYMin()) {
            this.mYMin = t.getYMin();
        }
        if (this.mXMax < t.getXMax()) {
            this.mXMax = t.getXMax();
        }
        if (this.mXMin > t.getXMin()) {
            this.mXMin = t.getXMin();
        }
        if (t.getAxisDependency() == YAxis.AxisDependency.LEFT) {
            if (this.mLeftAxisMax < t.getYMax()) {
                this.mLeftAxisMax = t.getYMax();
            }
            if (this.mLeftAxisMin > t.getYMin()) {
                this.mLeftAxisMin = t.getYMin();
                return;
            }
            return;
        }
        if (this.mRightAxisMax < t.getYMax()) {
            this.mRightAxisMax = t.getYMax();
        }
        if (this.mRightAxisMin > t.getYMin()) {
            this.mRightAxisMin = t.getYMin();
        }
    }

    public void calcMinMaxY(float f, float f2) {
        for (T t : this.mDataSets) {
            t.calcMinMaxY(f, f2);
        }
        calcMinMax();
    }

    public void clearValues() {
        if (this.mDataSets != null) {
            this.mDataSets.clear();
        }
        notifyDataChanged();
    }

    public boolean contains(T t) {
        for (T t2 : this.mDataSets) {
            if (t2.equals(t)) {
                return true;
            }
        }
        return false;
    }

    public int[] getColors() {
        if (this.mDataSets == null) {
            return null;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.mDataSets.size(); i2++) {
            i += this.mDataSets.get(i2).getColors().size();
        }
        int[] iArr = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.mDataSets.size(); i4++) {
            for (Integer num : this.mDataSets.get(i4).getColors()) {
                iArr[i3] = num.intValue();
                i3++;
            }
        }
        return iArr;
    }

    public T getDataSetByIndex(int i) {
        if (this.mDataSets == null || i < 0 || i >= this.mDataSets.size()) {
            return null;
        }
        return this.mDataSets.get(i);
    }

    public T getDataSetByLabel(String str, boolean z) {
        int dataSetIndexByLabel = getDataSetIndexByLabel(this.mDataSets, str, z);
        if (dataSetIndexByLabel < 0 || dataSetIndexByLabel >= this.mDataSets.size()) {
            return null;
        }
        return this.mDataSets.get(dataSetIndexByLabel);
    }

    public int getDataSetCount() {
        if (this.mDataSets == null) {
            return 0;
        }
        return this.mDataSets.size();
    }

    public T getDataSetForEntry(Entry entry) {
        if (entry == null) {
            return null;
        }
        for (int i = 0; i < this.mDataSets.size(); i++) {
            T t = this.mDataSets.get(i);
            for (int i2 = 0; i2 < t.getEntryCount(); i2++) {
                if (entry.equalTo(t.getEntryForXValue(entry.getX(), entry.getY()))) {
                    return t;
                }
            }
        }
        return null;
    }

    protected int getDataSetIndexByLabel(List<T> list, String str, boolean z) {
        if (z) {
            for (int i = 0; i < list.size(); i++) {
                if (str.equalsIgnoreCase(list.get(i).getLabel())) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (str.equals(list.get(i2).getLabel())) {
                return i2;
            }
        }
        return -1;
    }

    public String[] getDataSetLabels() {
        String[] strArr = new String[this.mDataSets.size()];
        for (int i = 0; i < this.mDataSets.size(); i++) {
            strArr[i] = this.mDataSets.get(i).getLabel();
        }
        return strArr;
    }

    public List<T> getDataSets() {
        return this.mDataSets;
    }

    public int getEntryCount() {
        int i = 0;
        for (T t : this.mDataSets) {
            i += t.getEntryCount();
        }
        return i;
    }

    public Entry getEntryForHighlight(Highlight highlight) {
        if (highlight.getDataSetIndex() >= this.mDataSets.size()) {
            return null;
        }
        return this.mDataSets.get(highlight.getDataSetIndex()).getEntryForXValue(highlight.getX(), highlight.getY());
    }

    protected T getFirstLeft(List<T> list) {
        for (T t : list) {
            if (t.getAxisDependency() == YAxis.AxisDependency.LEFT) {
                return t;
            }
        }
        return null;
    }

    public T getFirstRight(List<T> list) {
        for (T t : list) {
            if (t.getAxisDependency() == YAxis.AxisDependency.RIGHT) {
                return t;
            }
        }
        return null;
    }

    public int getIndexOfDataSet(T t) {
        return this.mDataSets.indexOf(t);
    }

    public T getMaxEntryCountSet() {
        if (this.mDataSets == null || this.mDataSets.isEmpty()) {
            return null;
        }
        T t = this.mDataSets.get(0);
        for (T t2 : this.mDataSets) {
            if (t2.getEntryCount() > t.getEntryCount()) {
                t = t2;
            }
        }
        return t;
    }

    public float getXMax() {
        return this.mXMax;
    }

    public float getXMin() {
        return this.mXMin;
    }

    public float getYMax() {
        return this.mYMax;
    }

    public float getYMax(YAxis.AxisDependency axisDependency) {
        return axisDependency == YAxis.AxisDependency.LEFT ? this.mLeftAxisMax == -3.4028235E38f ? this.mRightAxisMax : this.mLeftAxisMax : this.mRightAxisMax == -3.4028235E38f ? this.mLeftAxisMax : this.mRightAxisMax;
    }

    public float getYMin() {
        return this.mYMin;
    }

    public float getYMin(YAxis.AxisDependency axisDependency) {
        return axisDependency == YAxis.AxisDependency.LEFT ? this.mLeftAxisMin == Float.MAX_VALUE ? this.mRightAxisMin : this.mLeftAxisMin : this.mRightAxisMin == Float.MAX_VALUE ? this.mLeftAxisMin : this.mRightAxisMin;
    }

    public boolean isHighlightEnabled() {
        for (T t : this.mDataSets) {
            if (!t.isHighlightEnabled()) {
                return false;
            }
        }
        return true;
    }

    public void notifyDataChanged() {
        calcMinMax();
    }

    public boolean removeDataSet(int i) {
        if (i >= this.mDataSets.size() || i < 0) {
            return false;
        }
        return removeDataSet((ChartData<T>) this.mDataSets.get(i));
    }

    public boolean removeDataSet(T t) {
        if (t == null) {
            return false;
        }
        boolean remove = this.mDataSets.remove(t);
        if (remove) {
            calcMinMax();
        }
        return remove;
    }

    public boolean removeEntry(float f, int i) {
        Entry entryForXValue;
        if (i < this.mDataSets.size() && (entryForXValue = this.mDataSets.get(i).getEntryForXValue(f, Float.NaN)) != null) {
            return removeEntry(entryForXValue, i);
        }
        return false;
    }

    public boolean removeEntry(Entry entry, int i) {
        T t;
        if (entry == null || i >= this.mDataSets.size() || (t = this.mDataSets.get(i)) == null) {
            return false;
        }
        boolean removeEntry = t.removeEntry(entry);
        if (removeEntry) {
            calcMinMax();
        }
        return removeEntry;
    }

    public void setDrawValues(boolean z) {
        for (T t : this.mDataSets) {
            t.setDrawValues(z);
        }
    }

    public void setHighlightEnabled(boolean z) {
        for (T t : this.mDataSets) {
            t.setHighlightEnabled(z);
        }
    }

    public void setValueFormatter(IValueFormatter iValueFormatter) {
        if (iValueFormatter != null) {
            for (T t : this.mDataSets) {
                t.setValueFormatter(iValueFormatter);
            }
        }
    }

    public void setValueTextColor(int i) {
        for (T t : this.mDataSets) {
            t.setValueTextColor(i);
        }
    }

    public void setValueTextColors(List<Integer> list) {
        for (T t : this.mDataSets) {
            t.setValueTextColors(list);
        }
    }

    public void setValueTextSize(float f) {
        for (T t : this.mDataSets) {
            t.setValueTextSize(f);
        }
    }

    public void setValueTypeface(Typeface typeface) {
        for (T t : this.mDataSets) {
            t.setValueTypeface(typeface);
        }
    }
}
