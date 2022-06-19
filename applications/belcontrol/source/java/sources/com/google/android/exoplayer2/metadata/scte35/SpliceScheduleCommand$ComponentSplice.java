package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice.class */
public final class SpliceScheduleCommand$ComponentSplice {
    public final int componentTag;
    public final long utcSpliceTime;

    private SpliceScheduleCommand$ComponentSplice(int i, long j) {
        this.componentTag = i;
        this.utcSpliceTime = j;
    }

    public /* synthetic */ SpliceScheduleCommand$ComponentSplice(int i, long j, SpliceScheduleCommand$1 spliceScheduleCommand$1) {
        this(i, j);
    }

    public static SpliceScheduleCommand$ComponentSplice createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand$ComponentSplice(parcel.readInt(), parcel.readLong());
    }

    public void writeToParcel(Parcel parcel) {
        parcel.writeInt(this.componentTag);
        parcel.writeLong(this.utcSpliceTime);
    }
}
