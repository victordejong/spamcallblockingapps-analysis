package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/BinaryFrame$1.class */
public final class BinaryFrame$1 implements Parcelable.Creator<BinaryFrame> {
    @Override // android.os.Parcelable.Creator
    public BinaryFrame createFromParcel(Parcel parcel) {
        return new BinaryFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public BinaryFrame[] newArray(int i) {
        return new BinaryFrame[i];
    }
}
