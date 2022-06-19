package com.google.android.gms.common.data;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    private boolean zame = false;
    private ArrayList<Integer> zamf;

    protected EntityBuffer(DataHolder dataHolder) {
        super(dataHolder);
    }

    private final void zacb() {
        synchronized (this) {
            if (!this.zame) {
                int count = this.mDataHolder.getCount();
                this.zamf = new ArrayList<>();
                if (count > 0) {
                    this.zamf.add(0);
                    String primaryDataMarkerColumn = getPrimaryDataMarkerColumn();
                    String string = this.mDataHolder.getString(primaryDataMarkerColumn, 0, this.mDataHolder.getWindowIndex(0));
                    int i = 1;
                    while (i < count) {
                        int windowIndex = this.mDataHolder.getWindowIndex(i);
                        String string2 = this.mDataHolder.getString(primaryDataMarkerColumn, i, windowIndex);
                        if (string2 == null) {
                            StringBuilder sb = new StringBuilder(String.valueOf(primaryDataMarkerColumn).length() + 78);
                            sb.append("Missing value for markerColumn: ");
                            sb.append(primaryDataMarkerColumn);
                            sb.append(", at row: ");
                            sb.append(i);
                            sb.append(", for window: ");
                            sb.append(windowIndex);
                            throw new NullPointerException(sb.toString());
                        }
                        String str = string;
                        if (!string2.equals(string)) {
                            this.zamf.add(Integer.valueOf(i));
                            str = string2;
                        }
                        i++;
                        string = str;
                    }
                }
                this.zame = true;
            }
        }
    }

    private final int zah(int i) {
        if (i < 0 || i >= this.zamf.size()) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is out of bounds for this buffer");
            throw new IllegalArgumentException(sb.toString());
        }
        return this.zamf.get(i).intValue();
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        int i2;
        int i3;
        zacb();
        int zah = zah(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.zamf.size()) {
                i4 = 0;
            } else {
                if (i == this.zamf.size() - 1) {
                    i3 = this.mDataHolder.getCount();
                    i2 = this.zamf.get(i).intValue();
                } else {
                    i3 = this.zamf.get(i + 1).intValue();
                    i2 = this.zamf.get(i).intValue();
                }
                i4 = i3 - i2;
                if (i4 == 1) {
                    int zah2 = zah(i);
                    int windowIndex = this.mDataHolder.getWindowIndex(zah2);
                    String childDataMarkerColumn = getChildDataMarkerColumn();
                    if (childDataMarkerColumn != null && this.mDataHolder.getString(childDataMarkerColumn, zah2, windowIndex) == null) {
                        i4 = 0;
                    }
                }
            }
        }
        return getEntry(zah, i4);
    }

    protected String getChildDataMarkerColumn() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zacb();
        return this.zamf.size();
    }

    protected abstract T getEntry(int i, int i2);

    protected abstract String getPrimaryDataMarkerColumn();
}
