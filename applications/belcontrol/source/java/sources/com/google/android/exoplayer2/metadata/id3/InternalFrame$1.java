package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame$1.class */
public final class InternalFrame$1 implements Parcelable.Creator<InternalFrame> {
    @Override // android.os.Parcelable.Creator
    public InternalFrame createFromParcel(Parcel parcel) {
        return new InternalFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public InternalFrame[] newArray(int i) {
        return new InternalFrame[i];
    }
}
