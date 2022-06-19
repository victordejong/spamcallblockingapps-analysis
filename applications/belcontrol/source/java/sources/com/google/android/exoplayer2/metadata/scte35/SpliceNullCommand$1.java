package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceNullCommand$1.class */
public final class SpliceNullCommand$1 implements Parcelable.Creator<SpliceNullCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceNullCommand createFromParcel(Parcel parcel) {
        return new SpliceNullCommand();
    }

    @Override // android.os.Parcelable.Creator
    public SpliceNullCommand[] newArray(int i) {
        return new SpliceNullCommand[i];
    }
}
