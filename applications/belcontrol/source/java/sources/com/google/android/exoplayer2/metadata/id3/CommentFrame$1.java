package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame$1.class */
public final class CommentFrame$1 implements Parcelable.Creator<CommentFrame> {
    @Override // android.os.Parcelable.Creator
    public CommentFrame createFromParcel(Parcel parcel) {
        return new CommentFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public CommentFrame[] newArray(int i) {
        return new CommentFrame[i];
    }
}
