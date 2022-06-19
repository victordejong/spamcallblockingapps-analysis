package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice.class */
public final class SpliceInsertCommand$ComponentSplice {
    public final long componentSplicePlaybackPositionUs;
    public final long componentSplicePts;
    public final int componentTag;

    private SpliceInsertCommand$ComponentSplice(int i, long j, long j2) {
        this.componentTag = i;
        this.componentSplicePts = j;
        this.componentSplicePlaybackPositionUs = j2;
    }

    public /* synthetic */ SpliceInsertCommand$ComponentSplice(int i, long j, long j2, SpliceInsertCommand$1 spliceInsertCommand$1) {
        this(i, j, j2);
    }

    public static SpliceInsertCommand$ComponentSplice createFromParcel(Parcel parcel) {
        return new SpliceInsertCommand$ComponentSplice(parcel.readInt(), parcel.readLong(), parcel.readLong());
    }

    public void writeToParcel(Parcel parcel) {
        parcel.writeInt(this.componentTag);
        parcel.writeLong(this.componentSplicePts);
        parcel.writeLong(this.componentSplicePlaybackPositionUs);
    }
}
