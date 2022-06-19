package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame$1.class */
public final class GeobFrame$1 implements Parcelable.Creator<GeobFrame> {
    @Override // android.os.Parcelable.Creator
    public GeobFrame createFromParcel(Parcel parcel) {
        return new GeobFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public GeobFrame[] newArray(int i) {
        return new GeobFrame[i];
    }
}
