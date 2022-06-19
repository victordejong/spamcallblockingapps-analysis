package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/TextInformationFrame$1.class */
public final class TextInformationFrame$1 implements Parcelable.Creator<TextInformationFrame> {
    @Override // android.os.Parcelable.Creator
    public TextInformationFrame createFromParcel(Parcel parcel) {
        return new TextInformationFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public TextInformationFrame[] newArray(int i) {
        return new TextInformationFrame[i];
    }
}
