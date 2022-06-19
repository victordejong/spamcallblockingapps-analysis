package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame.class */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new C1979a();

    /* renamed from: b */
    public final String f4921b;

    /* renamed from: c */
    public final int f4922c;

    /* renamed from: d */
    public final int f4923d;

    /* renamed from: e */
    public final long f4924e;

    /* renamed from: f */
    public final long f4925f;

    /* renamed from: g */
    public final Id3Frame[] f4926g;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterFrame$a.class */
    public static final class C1979a implements Parcelable.Creator<ChapterFrame> {
        @Override // android.os.Parcelable.Creator
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ChapterFrame[] newArray(int i) {
            return new ChapterFrame[i];
        }
    }

    public ChapterFrame(Parcel parcel) {
        super("CHAP");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4921b = readString;
        this.f4922c = parcel.readInt();
        this.f4923d = parcel.readInt();
        this.f4924e = parcel.readLong();
        this.f4925f = parcel.readLong();
        int readInt = parcel.readInt();
        this.f4926g = new Id3Frame[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4926g[i2] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f4921b = str;
        this.f4922c = i;
        this.f4923d = i2;
        this.f4924e = j;
        this.f4925f = j2;
        this.f4926g = id3FrameArr;
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
        if (this.f4922c != chapterFrame.f4922c || this.f4923d != chapterFrame.f4923d || this.f4924e != chapterFrame.f4924e || this.f4925f != chapterFrame.f4925f || !C24773d0.m4623a(this.f4921b, chapterFrame.f4921b) || !Arrays.equals(this.f4926g, chapterFrame.f4926g)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f4922c;
        int i2 = this.f4923d;
        int i3 = (int) this.f4924e;
        int i4 = (int) this.f4925f;
        String str = this.f4921b;
        return ((((((((527 + i) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4921b);
        parcel.writeInt(this.f4922c);
        parcel.writeInt(this.f4923d);
        parcel.writeLong(this.f4924e);
        parcel.writeLong(this.f4925f);
        parcel.writeInt(this.f4926g.length);
        for (Id3Frame id3Frame : this.f4926g) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
