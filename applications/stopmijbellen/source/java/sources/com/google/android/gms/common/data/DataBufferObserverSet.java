package com.google.android.gms.common.data;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.data.DataBufferObserver;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferObserverSet.class */
public final class DataBufferObserverSet implements DataBufferObserver, DataBufferObserver.Observable {
    private HashSet<DataBufferObserver> zaa = new HashSet<>();

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void addObserver(@RecentlyNonNull DataBufferObserver dataBufferObserver) {
        this.zaa.add(dataBufferObserver);
    }

    public void clear() {
        this.zaa.clear();
    }

    public boolean hasObservers() {
        return !this.zaa.isEmpty();
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataChanged() {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataChanged();
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeChanged(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeChanged(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeInserted(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeInserted(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeMoved(int i, int i2, int i3) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeMoved(i, i2, i3);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver
    public void onDataRangeRemoved(int i, int i2) {
        Iterator<DataBufferObserver> it2 = this.zaa.iterator();
        while (it2.hasNext()) {
            it2.next().onDataRangeRemoved(i, i2);
        }
    }

    @Override // com.google.android.gms.common.data.DataBufferObserver.Observable
    public void removeObserver(@RecentlyNonNull DataBufferObserver dataBufferObserver) {
        this.zaa.remove(dataBufferObserver);
    }
}
