package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1.class */
public final class SpliceScheduleCommand$1 implements Parcelable.Creator<SpliceScheduleCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceScheduleCommand createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand(parcel, (SpliceScheduleCommand$1) null);
    }

    @Override // android.os.Parcelable.Creator
    public SpliceScheduleCommand[] newArray(int i) {
        return new SpliceScheduleCommand[i];
    }
}
