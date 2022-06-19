package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1.class */
public final class SpliceInsertCommand$1 implements Parcelable.Creator<SpliceInsertCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceInsertCommand createFromParcel(Parcel parcel) {
        return new SpliceInsertCommand(parcel, (SpliceInsertCommand$1) null);
    }

    @Override // android.os.Parcelable.Creator
    public SpliceInsertCommand[] newArray(int i) {
        return new SpliceInsertCommand[i];
    }
}
