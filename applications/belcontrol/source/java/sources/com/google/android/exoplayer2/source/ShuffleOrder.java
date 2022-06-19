package com.google.android.exoplayer2.source;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ShuffleOrder.class */
public interface ShuffleOrder {
    ShuffleOrder cloneAndClear();

    ShuffleOrder cloneAndInsert(int i, int i2);

    ShuffleOrder cloneAndRemove(int i);

    int getFirstIndex();

    int getLastIndex();

    int getLength();

    int getNextIndex(int i);

    int getPreviousIndex(int i);
}
