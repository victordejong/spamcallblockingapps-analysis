package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1.class */
public final class ChapterTocFrame$1 implements Parcelable.Creator<ChapterTocFrame> {
    @Override // android.os.Parcelable.Creator
    public ChapterTocFrame createFromParcel(Parcel parcel) {
        return new ChapterTocFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ChapterTocFrame[] newArray(int i) {
        return new ChapterTocFrame[i];
    }
}
