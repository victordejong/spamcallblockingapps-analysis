package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame.class */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new C5135a();

    /* renamed from: e */
    public final String f16131e;

    /* renamed from: f */
    public final String f16132f;

    /* renamed from: g */
    public final int f16133g;

    /* renamed from: h */
    public final byte[] f16134h;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.ApicFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/ApicFrame$a.class */
    static final class C5135a implements Parcelable.Creator<ApicFrame> {
        C5135a() {
        }

        /* renamed from: a */
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        /* renamed from: b */
        public ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    }

    ApicFrame(Parcel parcel) {
        super("APIC");
        this.f16131e = (String) C5515h0.m18833g(parcel.readString());
        this.f16132f = parcel.readString();
        this.f16133g = parcel.readInt();
        this.f16134h = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f16131e = str;
        this.f16132f = str2;
        this.f16133g = i;
        this.f16134h = bArr;
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
        if (this.f16133g != apicFrame.f16133g || !C5515h0.m18843b(this.f16131e, apicFrame.f16131e) || !C5515h0.m18843b(this.f16132f, apicFrame.f16132f) || !Arrays.equals(this.f16134h, apicFrame.f16134h)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f16133g;
        String str = this.f16131e;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16132f;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((527 + i) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.f16134h);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": mimeType=" + this.f16131e + ", description=" + this.f16132f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16131e);
        parcel.writeString(this.f16132f);
        parcel.writeInt(this.f16133g);
        parcel.writeByteArray(this.f16134h);
    }
}
