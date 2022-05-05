package com.google.android.gms.common.data;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferObserver.class */
public interface DataBufferObserver {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataBufferObserver$Observable.class */
    public interface Observable {
        void addObserver(DataBufferObserver dataBufferObserver);

        void removeObserver(DataBufferObserver dataBufferObserver);
    }

    void onDataChanged();

    void onDataRangeChanged(int i, int i2);

    void onDataRangeInserted(int i, int i2);

    void onDataRangeMoved(int i, int i2, int i3);

    void onDataRangeRemoved(int i, int i2);
}
