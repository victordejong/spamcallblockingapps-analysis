package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame.class */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new C1980a();

    /* renamed from: b */
    public final String f4927b;

    /* renamed from: c */
    public final boolean f4928c;

    /* renamed from: d */
    public final boolean f4929d;

    /* renamed from: e */
    public final String[] f4930e;

    /* renamed from: f */
    public final Id3Frame[] f4931f;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ChapterTocFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ChapterTocFrame$a.class */
    public static final class C1980a implements Parcelable.Creator<ChapterTocFrame> {
        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame[] newArray(int i) {
            return new ChapterTocFrame[i];
        }
    }

    public ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4927b = readString;
        this.f4928c = parcel.readByte() != 0;
        this.f4929d = parcel.readByte() != 0;
        this.f4930e = parcel.createStringArray();
        int readInt = parcel.readInt();
        this.f4931f = new Id3Frame[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4931f[i2] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f4927b = str;
        this.f4928c = z;
        this.f4929d = z2;
        this.f4930e = strArr;
        this.f4931f = id3FrameArr;
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
        if (this.f4928c != chapterTocFrame.f4928c || this.f4929d != chapterTocFrame.f4929d || !C24773d0.m4623a(this.f4927b, chapterTocFrame.f4927b) || !Arrays.equals(this.f4930e, chapterTocFrame.f4930e) || !Arrays.equals(this.f4931f, chapterTocFrame.f4931f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        boolean z = this.f4928c;
        boolean z2 = this.f4929d;
        String str = this.f4927b;
        return ((((527 + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4927b);
        parcel.writeByte(this.f4928c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4929d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f4930e);
        parcel.writeInt(this.f4931f.length);
        for (Id3Frame id3Frame : this.f4931f) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
