package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame.class */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new C7146a();

    /* renamed from: b */
    public final String f22160b;

    /* renamed from: c */
    public final String f22161c;

    /* renamed from: d */
    public final int f22162d;

    /* renamed from: e */
    public final byte[] f22163e;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ApicFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame$a.class */
    public static final class C7146a implements Parcelable.Creator<ApicFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    }

    public ApicFrame(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        C2885h0.m28670a(readString);
        this.f22160b = readString;
        this.f22161c = parcel.readString();
        this.f22162d = parcel.readInt();
        byte[] createByteArray = parcel.createByteArray();
        C2885h0.m28670a(createByteArray);
        this.f22163e = createByteArray;
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f22160b = str;
        this.f22161c = str2;
        this.f22162d = i;
        this.f22163e = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ApicFrame.class != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        if (this.f22162d != apicFrame.f22162d || !C2885h0.m28669a((Object) this.f22160b, (Object) apicFrame.f22160b) || !C2885h0.m28669a((Object) this.f22161c, (Object) apicFrame.f22161c) || !Arrays.equals(this.f22163e, apicFrame.f22163e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f22162d;
        String str = this.f22160b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22161c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((527 + i) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f22163e);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f22183a + ": mimeType=" + this.f22160b + ", description=" + this.f22161c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22160b);
        parcel.writeString(this.f22161c);
        parcel.writeInt(this.f22162d);
        parcel.writeByteArray(this.f22163e);
    }
}
