package com.google.android.exoplayer2.metadata.id3;

import com.google.android.exoplayer2.metadata.Metadata;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a */
    public final String f22183a;

    public Id3Frame(String str) {
        this.f22183a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f22183a;
    }
}
