package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame.class */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new C5138a();

    /* renamed from: e */
    public final String f16142e;

    /* renamed from: f */
    public final boolean f16143f;

    /* renamed from: g */
    public final boolean f16144g;

    /* renamed from: h */
    public final String[] f16145h;

    /* renamed from: i */
    private final Id3Frame[] f16146i;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterTocFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame$a.class */
    static final class C5138a implements Parcelable.Creator<ChapterTocFrame> {
        C5138a() {
        }

        /* renamed from: a */
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        /* renamed from: b */
        public ChapterTocFrame[] newArray(int i) {
            return new ChapterTocFrame[i];
        }
    }

    ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        this.f16142e = (String) C5515h0.m18833g(parcel.readString());
        this.f16143f = parcel.readByte() != 0;
        this.f16144g = parcel.readByte() != 0;
        this.f16145h = (String[]) C5515h0.m18833g(parcel.createStringArray());
        int readInt = parcel.readInt();
        this.f16146i = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f16146i[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f16142e = str;
        this.f16143f = z;
        this.f16144g = z2;
        this.f16145h = strArr;
        this.f16146i = id3FrameArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        if (this.f16143f != chapterTocFrame.f16143f || this.f16144g != chapterTocFrame.f16144g || !C5515h0.m18843b(this.f16142e, chapterTocFrame.f16142e) || !Arrays.equals(this.f16145h, chapterTocFrame.f16145h) || !Arrays.equals(this.f16146i, chapterTocFrame.f16146i)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        boolean z = this.f16143f;
        boolean z2 = this.f16144g;
        String str = this.f16142e;
        return ((((527 + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16142e);
        parcel.writeByte(this.f16143f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f16144g ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f16145h);
        parcel.writeInt(this.f16146i.length);
        for (Id3Frame id3Frame : this.f16146i) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
