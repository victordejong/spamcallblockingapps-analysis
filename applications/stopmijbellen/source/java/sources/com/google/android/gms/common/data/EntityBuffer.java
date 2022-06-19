package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/EntityBuffer.class */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    private boolean zaa = false;
    private ArrayList<Integer> zab;

    @KeepForSdk
    public EntityBuffer(@RecentlyNonNull DataHolder dataHolder) {
        super(dataHolder);
    }

    private final void zab() {
        synchronized (this) {
            if (!this.zaa) {
                int count = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount();
                ArrayList<Integer> arrayList = new ArrayList<>();
                this.zab = arrayList;
                if (count > 0) {
                    arrayList.add(0);
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
                            this.zab.add(Integer.valueOf(i));
                            str = string2;
                        }
                        i++;
                        string = str;
                    }
                }
                this.zaa = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @RecentlyNonNull
    @KeepForSdk
    public final T get(int i) {
        int i2;
        int i3;
        zab();
        int zaa = zaa(i);
        int i4 = 0;
        if (i >= 0) {
            if (i == this.zab.size()) {
                i4 = 0;
            } else {
                if (i == this.zab.size() - 1) {
                    i3 = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getCount();
                    i2 = this.zab.get(i).intValue();
                } else {
                    i3 = this.zab.get(i + 1).intValue();
                    i2 = this.zab.get(i).intValue();
                }
                i4 = i3 - i2;
                if (i4 == 1) {
                    int zaa2 = zaa(i);
                    int windowIndex = ((DataHolder) Preconditions.checkNotNull(this.mDataHolder)).getWindowIndex(zaa2);
                    String childDataMarkerColumn = getChildDataMarkerColumn();
                    i4 = (childDataMarkerColumn == null || this.mDataHolder.getString(childDataMarkerColumn, zaa2, windowIndex) != null) ? 1 : 0;
                }
            }
        }
        return getEntry(zaa, i4);
    }

    @RecentlyNullable
    @KeepForSdk
    public String getChildDataMarkerColumn() {
        return null;
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    @KeepForSdk
    public int getCount() {
        zab();
        return this.zab.size();
    }

    @RecentlyNonNull
    @KeepForSdk
    public abstract T getEntry(int i, int i2);

    @RecentlyNonNull
    @KeepForSdk
    public abstract String getPrimaryDataMarkerColumn();

    public final int zaa(int i) {
        if (i < 0 || i >= this.zab.size()) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("Position ");
            sb.append(i);
            sb.append(" is out of bounds for this buffer");
            throw new IllegalArgumentException(sb.toString());
        }
        return this.zab.get(i).intValue();
    }
}
