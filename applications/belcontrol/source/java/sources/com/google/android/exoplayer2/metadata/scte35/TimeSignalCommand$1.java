package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1.class */
public final class TimeSignalCommand$1 implements Parcelable.Creator<TimeSignalCommand> {
    @Override // android.os.Parcelable.Creator
    public TimeSignalCommand createFromParcel(Parcel parcel) {
        return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), (TimeSignalCommand$1) null);
    }

    @Override // android.os.Parcelable.Creator
    public TimeSignalCommand[] newArray(int i) {
        return new TimeSignalCommand[i];
    }
}
