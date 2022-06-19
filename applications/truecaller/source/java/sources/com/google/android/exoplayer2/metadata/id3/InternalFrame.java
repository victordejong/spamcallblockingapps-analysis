package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new C1983a();

    /* renamed from: b */
    public final String f4940b;

    /* renamed from: c */
    public final String f4941c;

    /* renamed from: d */
    public final String f4942d;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.InternalFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame$a.class */
    public static final class C1983a implements Parcelable.Creator<InternalFrame> {
        @Override // android.os.Parcelable.Creator
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    }

    public InternalFrame(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4940b = readString;
        this.f4941c = parcel.readString();
        this.f4942d = parcel.readString();
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f4940b = str;
        this.f4941c = str2;
        this.f4942d = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || InternalFrame.class != obj.getClass()) {
            return false;
        }
        InternalFrame internalFrame = (InternalFrame) obj;
        if (!C24773d0.m4623a(this.f4941c, internalFrame.f4941c) || !C24773d0.m4623a(this.f4940b, internalFrame.f4940b) || !C24773d0.m4623a(this.f4942d, internalFrame.f4942d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f4940b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4941c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4942d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": domain=" + this.f4940b + ", description=" + this.f4941c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4939a);
        parcel.writeString(this.f4940b);
        parcel.writeString(this.f4942d);
    }
}
