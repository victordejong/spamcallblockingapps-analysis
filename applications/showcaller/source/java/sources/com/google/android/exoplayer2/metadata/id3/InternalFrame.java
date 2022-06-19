package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new C5141a();

    /* renamed from: e */
    public final String f16155e;

    /* renamed from: f */
    public final String f16156f;

    /* renamed from: g */
    public final String f16157g;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.InternalFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame$a.class */
    static final class C5141a implements Parcelable.Creator<InternalFrame> {
        C5141a() {
        }

        /* renamed from: a */
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        /* renamed from: b */
        public InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    }

    InternalFrame(Parcel parcel) {
        super("----");
        this.f16155e = (String) C5515h0.m18833g(parcel.readString());
        this.f16156f = (String) C5515h0.m18833g(parcel.readString());
        this.f16157g = (String) C5515h0.m18833g(parcel.readString());
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f16155e = str;
        this.f16156f = str2;
        this.f16157g = str3;
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
        if (!C5515h0.m18843b(this.f16156f, internalFrame.f16156f) || !C5515h0.m18843b(this.f16155e, internalFrame.f16155e) || !C5515h0.m18843b(this.f16157g, internalFrame.f16157g)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f16155e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16156f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16157g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": domain=" + this.f16155e + ", description=" + this.f16156f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16154d);
        parcel.writeString(this.f16155e);
        parcel.writeString(this.f16157g);
    }
}
