package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame.class */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new C5137a();

    /* renamed from: e */
    public final String f16136e;

    /* renamed from: f */
    public final int f16137f;

    /* renamed from: g */
    public final int f16138g;

    /* renamed from: h */
    public final long f16139h;

    /* renamed from: i */
    public final long f16140i;

    /* renamed from: j */
    private final Id3Frame[] f16141j;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame$a.class */
    static final class C5137a implements Parcelable.Creator<ChapterFrame> {
        C5137a() {
        }

        /* renamed from: a */
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        /* renamed from: b */
        public ChapterFrame[] newArray(int i) {
            return new ChapterFrame[i];
        }
    }

    ChapterFrame(Parcel parcel) {
        super("CHAP");
        this.f16136e = (String) C5515h0.m18833g(parcel.readString());
        this.f16137f = parcel.readInt();
        this.f16138g = parcel.readInt();
        this.f16139h = parcel.readLong();
        this.f16140i = parcel.readLong();
        int readInt = parcel.readInt();
        this.f16141j = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f16141j[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f16136e = str;
        this.f16137f = i;
        this.f16138g = i2;
        this.f16139h = j;
        this.f16140i = j2;
        this.f16141j = id3FrameArr;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterFrame.class != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        if (this.f16137f != chapterFrame.f16137f || this.f16138g != chapterFrame.f16138g || this.f16139h != chapterFrame.f16139h || this.f16140i != chapterFrame.f16140i || !C5515h0.m18843b(this.f16136e, chapterFrame.f16136e) || !Arrays.equals(this.f16141j, chapterFrame.f16141j)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f16137f;
        int i2 = this.f16138g;
        int i3 = (int) this.f16139h;
        int i4 = (int) this.f16140i;
        String str = this.f16136e;
        return ((((((((527 + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16136e);
        parcel.writeInt(this.f16137f);
        parcel.writeInt(this.f16138g);
        parcel.writeLong(this.f16139h);
        parcel.writeLong(this.f16140i);
        parcel.writeInt(this.f16141j.length);
        for (Id3Frame id3Frame : this.f16141j) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
