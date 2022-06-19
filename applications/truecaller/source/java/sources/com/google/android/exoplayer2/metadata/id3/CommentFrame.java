package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new C1981a();

    /* renamed from: b */
    public final String f4932b;

    /* renamed from: c */
    public final String f4933c;

    /* renamed from: d */
    public final String f4934d;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.CommentFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame$a.class */
    public static final class C1981a implements Parcelable.Creator<CommentFrame> {
        @Override // android.os.Parcelable.Creator
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    }

    public CommentFrame(Parcel parcel) {
        super("COMM");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4932b = readString;
        this.f4933c = parcel.readString();
        this.f4934d = parcel.readString();
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f4932b = str;
        this.f4933c = str2;
        this.f4934d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CommentFrame.class != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        if (!C24773d0.m4623a(this.f4933c, commentFrame.f4933c) || !C24773d0.m4623a(this.f4932b, commentFrame.f4932b) || !C24773d0.m4623a(this.f4934d, commentFrame.f4934d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f4932b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4933c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4934d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": language=" + this.f4932b + ", description=" + this.f4933c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4939a);
        parcel.writeString(this.f4932b);
        parcel.writeString(this.f4934d);
    }
}
