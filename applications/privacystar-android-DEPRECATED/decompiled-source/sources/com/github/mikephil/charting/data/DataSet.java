package com.github.mikephil.charting.data;

import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/DataSet.class */
public abstract class DataSet<T extends Entry> extends BaseDataSet<T> {
    protected List<T> mValues;
    protected float mYMax = -3.4028235E38f;
    protected float mYMin = Float.MAX_VALUE;
    protected float mXMax = -3.4028235E38f;
    protected float mXMin = Float.MAX_VALUE;

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/DataSet$Rounding.class */
    public enum Rounding {
        UP,
        DOWN,
        CLOSEST
    }

    public DataSet(List<T> list, String str) {
        super(str);
        this.mValues = null;
        this.mValues = list;
        if (this.mValues == null) {
            this.mValues = new ArrayList();
        }
        calcMinMax();
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public boolean addEntry(T t) {
        if (t == null) {
            return false;
        }
        List<T> values = getValues();
        List<T> list = values;
        if (values == null) {
            list = new ArrayList<>();
        }
        calcMinMax(t);
        return list.add(t);
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public void addEntryOrdered(T t) {
        if (t != null) {
            if (this.mValues == null) {
                this.mValues = new ArrayList();
            }
            calcMinMax(t);
            if (this.mValues.size() <= 0 || this.mValues.get(this.mValues.size() - 1).getX() <= t.getX()) {
                this.mValues.add(t);
                return;
            }
            this.mValues.add(getEntryIndex(t.getX(), t.getY(), Rounding.UP), t);
        }
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public void calcMinMax() {
        if (!(this.mValues == null || this.mValues.isEmpty())) {
            this.mYMax = -3.4028235E38f;
            this.mYMin = Float.MAX_VALUE;
            this.mXMax = -3.4028235E38f;
            this.mXMin = Float.MAX_VALUE;
            for (T t : this.mValues) {
                calcMinMax(t);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calcMinMax(T t) {
        if (t != null) {
            calcMinMaxX(t);
            calcMinMaxY(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calcMinMaxX(T t) {
        if (t.getX() < this.mXMin) {
            this.mXMin = t.getX();
        }
        if (t.getX() > this.mXMax) {
            this.mXMax = t.getX();
        }
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public void calcMinMaxY(float f, float f2) {
        if (!(this.mValues == null || this.mValues.isEmpty())) {
            this.mYMax = -3.4028235E38f;
            this.mYMin = Float.MAX_VALUE;
            int entryIndex = getEntryIndex(f2, Float.NaN, Rounding.UP);
            for (int entryIndex2 = getEntryIndex(f, Float.NaN, Rounding.DOWN); entryIndex2 <= entryIndex; entryIndex2++) {
                calcMinMaxY(this.mValues.get(entryIndex2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calcMinMaxY(T t) {
        if (t.getY() < this.mYMin) {
            this.mYMin = t.getY();
        }
        if (t.getY() > this.mYMax) {
            this.mYMax = t.getY();
        }
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public void clear() {
        this.mValues.clear();
        notifyDataSetChanged();
    }

    public abstract DataSet<T> copy();

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public List<T> getEntriesForXValue(float f) {
        ArrayList arrayList = new ArrayList();
        int size = this.mValues.size() - 1;
        int i = 0;
        while (true) {
            if (i > size) {
                break;
            }
            int i2 = (size + i) / 2;
            T t = this.mValues.get(i2);
            if (f == t.getX()) {
                int i3 = i2;
                while (i3 > 0 && this.mValues.get(i3 - 1).getX() == f) {
                    i3--;
                }
                int size2 = this.mValues.size();
                while (i3 < size2) {
                    T t2 = this.mValues.get(i3);
                    if (t2.getX() != f) {
                        break;
                    }
                    arrayList.add(t2);
                    i3++;
                }
            } else if (f > t.getX()) {
                i = i2 + 1;
            } else {
                size = i2 - 1;
            }
        }
        return arrayList;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public int getEntryCount() {
        return this.mValues.size();
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public T getEntryForIndex(int i) {
        return this.mValues.get(i);
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public T getEntryForXValue(float f, float f2) {
        return getEntryForXValue(f, f2, Rounding.CLOSEST);
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public T getEntryForXValue(float f, float f2, Rounding rounding) {
        int entryIndex = getEntryIndex(f, f2, rounding);
        if (entryIndex > -1) {
            return this.mValues.get(entryIndex);
        }
        return null;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public int getEntryIndex(float f, float f2, Rounding rounding) {
        int i;
        int i2;
        T t;
        if (this.mValues == null || this.mValues.isEmpty()) {
            return -1;
        }
        int i3 = 0;
        int size = this.mValues.size() - 1;
        while (i3 < size) {
            int i4 = (i3 + size) / 2;
            float x = this.mValues.get(i4).getX() - f;
            int i5 = i4 + 1;
            float x2 = this.mValues.get(i5).getX();
            float abs = Math.abs(x);
            float abs2 = Math.abs(x2 - f);
            if (abs2 >= abs) {
                if (abs >= abs2) {
                    double d = x;
                    if (d < 0.0d) {
                        if (d < 0.0d) {
                        }
                    }
                }
                size = i4;
            }
            i3 = i5;
        }
        int i6 = size;
        if (size != -1) {
            float x3 = this.mValues.get(size).getX();
            if (rounding == Rounding.UP) {
                i = size;
                if (x3 < f) {
                    i = size;
                    if (size < this.mValues.size() - 1) {
                        i = size + 1;
                    }
                }
            } else {
                i = size;
                if (rounding == Rounding.DOWN) {
                    i = size;
                    if (x3 > f) {
                        i = size;
                        if (size > 0) {
                            i = size - 1;
                        }
                    }
                }
            }
            i6 = i;
            if (!Float.isNaN(f2)) {
                while (i > 0 && this.mValues.get(i - 1).getX() == x3) {
                    i--;
                }
                float y = this.mValues.get(i).getY();
                loop2: while (true) {
                    int i7 = i;
                    do {
                        i2 = i7 + 1;
                        if (i2 >= this.mValues.size()) {
                            break loop2;
                        }
                        t = this.mValues.get(i2);
                        if (t.getX() != x3) {
                            break loop2;
                        }
                        i7 = i2;
                    } while (Math.abs(t.getY() - f2) >= Math.abs(y - f2));
                    y = f2;
                    i = i2;
                }
                i6 = i;
            }
        }
        return i6;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public int getEntryIndex(Entry entry) {
        return this.mValues.indexOf(entry);
    }

    public List<T> getValues() {
        return this.mValues;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public float getXMax() {
        return this.mXMax;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public float getXMin() {
        return this.mXMin;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public float getYMax() {
        return this.mYMax;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public float getYMin() {
        return this.mYMin;
    }

    @Override // com.github.mikephil.charting.interfaces.datasets.IDataSet
    public boolean removeEntry(T t) {
        if (t == null || this.mValues == null) {
            return false;
        }
        boolean remove = this.mValues.remove(t);
        if (remove) {
            calcMinMax();
        }
        return remove;
    }

    public void setValues(List<T> list) {
        this.mValues = list;
        notifyDataSetChanged();
    }

    public String toSimpleString() {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuilder sb = new StringBuilder();
        sb.append("DataSet, label: ");
        sb.append(getLabel() == null ? "" : getLabel());
        sb.append(", entries: ");
        sb.append(this.mValues.size());
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        stringBuffer.append(sb.toString());
        return stringBuffer.toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(toSimpleString());
        for (int i = 0; i < this.mValues.size(); i++) {
            stringBuffer.append(this.mValues.get(i).toString() + " ");
        }
        return stringBuffer.toString();
    }
}
