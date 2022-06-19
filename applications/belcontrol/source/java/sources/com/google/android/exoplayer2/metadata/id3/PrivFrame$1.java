package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/PrivFrame$1.class */
public final class PrivFrame$1 implements Parcelable.Creator<PrivFrame> {
    @Override // android.os.Parcelable.Creator
    public PrivFrame createFromParcel(Parcel parcel) {
        return new PrivFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public PrivFrame[] newArray(int i) {
        return new PrivFrame[i];
    }
}
