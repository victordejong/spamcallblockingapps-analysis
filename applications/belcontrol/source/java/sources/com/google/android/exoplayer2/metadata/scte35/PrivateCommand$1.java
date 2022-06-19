package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/PrivateCommand$1.class */
public final class PrivateCommand$1 implements Parcelable.Creator<PrivateCommand> {
    @Override // android.os.Parcelable.Creator
    public PrivateCommand createFromParcel(Parcel parcel) {
        return new PrivateCommand(parcel, (PrivateCommand$1) null);
    }

    @Override // android.os.Parcelable.Creator
    public PrivateCommand[] newArray(int i) {
        return new PrivateCommand[i];
    }
}
