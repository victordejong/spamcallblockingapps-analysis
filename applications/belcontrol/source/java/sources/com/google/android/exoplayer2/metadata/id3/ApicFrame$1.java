package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame$1.class */
public final class ApicFrame$1 implements Parcelable.Creator<ApicFrame> {
    @Override // android.os.Parcelable.Creator
    public ApicFrame createFromParcel(Parcel parcel) {
        return new ApicFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ApicFrame[] newArray(int i) {
        return new ApicFrame[i];
    }
}
