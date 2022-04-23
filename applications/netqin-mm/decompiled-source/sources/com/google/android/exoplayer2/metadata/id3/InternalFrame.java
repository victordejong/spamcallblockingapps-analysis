package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame.class */
public final class InternalFrame extends Id3Frame {
    public static final Parcelable.Creator<InternalFrame> CREATOR = new C7152a();

    /* renamed from: b */
    public final String f22184b;

    /* renamed from: c */
    public final String f22185c;

    /* renamed from: d */
    public final String f22186d;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.InternalFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/InternalFrame$a.class */
    public static final class C7152a implements Parcelable.Creator<InternalFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InternalFrame createFromParcel(Parcel parcel) {
            return new InternalFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public InternalFrame[] newArray(int i) {
            return new InternalFrame[i];
        }
    }

    public InternalFrame(Parcel parcel) {
        super("----");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22184b = readString;
        String readString2 = parcel.readString();
        C2885h0.m28670a(readString2);
        this.f22185c = readString2;
        String readString3 = parcel.readString();
        C2885h0.m28670a(readString3);
        this.f22186d = readString3;
    }

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.f22184b = str;
        this.f22185c = str2;
        this.f22186d = str3;
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
        if (!C2885h0.m28669a((Object) this.f22185c, (Object) internalFrame.f22185c) || !C2885h0.m28669a((Object) this.f22184b, (Object) internalFrame.f22184b) || !C2885h0.m28669a((Object) this.f22186d, (Object) internalFrame.f22186d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22184b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22185c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f22186d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((527 + hashCode) * 31) + hashCode2) * 31) + i;
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": domain=" + this.f22184b + ", description=" + this.f22185c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22183a);
        parcel.writeString(this.f22184b);
        parcel.writeString(this.f22186d);
    }
}
