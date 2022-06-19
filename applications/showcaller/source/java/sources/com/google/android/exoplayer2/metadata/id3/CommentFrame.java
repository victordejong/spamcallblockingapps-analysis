package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame.class */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new C5139a();

    /* renamed from: e */
    public final String f16147e;

    /* renamed from: f */
    public final String f16148f;

    /* renamed from: g */
    public final String f16149g;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.CommentFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/CommentFrame$a.class */
    static final class C5139a implements Parcelable.Creator<CommentFrame> {
        C5139a() {
        }

        /* renamed from: a */
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        /* renamed from: b */
        public CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    }

    CommentFrame(Parcel parcel) {
        super("COMM");
        this.f16147e = (String) C5515h0.m18833g(parcel.readString());
        this.f16148f = (String) C5515h0.m18833g(parcel.readString());
        this.f16149g = (String) C5515h0.m18833g(parcel.readString());
    }

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f16147e = str;
        this.f16148f = str2;
        this.f16149g = str3;
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
        if (!C5515h0.m18843b(this.f16148f, commentFrame.f16148f) || !C5515h0.m18843b(this.f16147e, commentFrame.f16147e) || !C5515h0.m18843b(this.f16149g, commentFrame.f16149g)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f16147e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16148f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16149g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": language=" + this.f16147e + ", description=" + this.f16148f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16154d);
        parcel.writeString(this.f16147e);
        parcel.writeString(this.f16149g);
    }
}
