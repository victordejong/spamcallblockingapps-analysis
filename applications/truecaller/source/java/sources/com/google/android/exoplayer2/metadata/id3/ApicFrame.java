package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame.class */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new C1977a();

    /* renamed from: b */
    public final String f4916b;

    /* renamed from: c */
    public final String f4917c;

    /* renamed from: d */
    public final int f4918d;

    /* renamed from: e */
    public final byte[] f4919e;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ApicFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame$a.class */
    public static final class C1977a implements Parcelable.Creator<ApicFrame> {
        @Override // android.os.Parcelable.Creator
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    }

    public ApicFrame(Parcel parcel) {
        super("APIC");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4916b = readString;
        this.f4917c = parcel.readString();
        this.f4918d = parcel.readInt();
        this.f4919e = parcel.createByteArray();
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f4916b = str;
        this.f4917c = str2;
        this.f4918d = i;
        this.f4919e = bArr;
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
        if (this.f4918d != apicFrame.f4918d || !C24773d0.m4623a(this.f4916b, apicFrame.f4916b) || !C24773d0.m4623a(this.f4917c, apicFrame.f4917c) || !Arrays.equals(this.f4919e, apicFrame.f4919e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f4918d;
        String str = this.f4916b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4917c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return Arrays.hashCode(this.f4919e) + ((((((527 + i) * 31) + hashCode) * 31) + i2) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": mimeType=" + this.f4916b + ", description=" + this.f4917c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4916b);
        parcel.writeString(this.f4917c);
        parcel.writeInt(this.f4918d);
        parcel.writeByteArray(this.f4919e);
    }
}
