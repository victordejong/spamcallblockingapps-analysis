package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame.class */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new C5140a();

    /* renamed from: e */
    public final String f16150e;

    /* renamed from: f */
    public final String f16151f;

    /* renamed from: g */
    public final String f16152g;

    /* renamed from: h */
    public final byte[] f16153h;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.GeobFrame$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame$a.class */
    static final class C5140a implements Parcelable.Creator<GeobFrame> {
        C5140a() {
        }

        /* renamed from: a */
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        /* renamed from: b */
        public GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    }

    GeobFrame(Parcel parcel) {
        super("GEOB");
        this.f16150e = (String) C5515h0.m18833g(parcel.readString());
        this.f16151f = (String) C5515h0.m18833g(parcel.readString());
        this.f16152g = (String) C5515h0.m18833g(parcel.readString());
        this.f16153h = (byte[]) C5515h0.m18833g(parcel.createByteArray());
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f16150e = str;
        this.f16151f = str2;
        this.f16152g = str3;
        this.f16153h = bArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || GeobFrame.class != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        if (!C5515h0.m18843b(this.f16150e, geobFrame.f16150e) || !C5515h0.m18843b(this.f16151f, geobFrame.f16151f) || !C5515h0.m18843b(this.f16152g, geobFrame.f16152g) || !Arrays.equals(this.f16153h, geobFrame.f16153h)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f16150e;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16151f;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f16152g;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return ((((((527 + hashCode) * 31) + hashCode2) * 31) + i) * 31) + Arrays.hashCode(this.f16153h);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f16154d + ": mimeType=" + this.f16150e + ", filename=" + this.f16151f + ", description=" + this.f16152g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16150e);
        parcel.writeString(this.f16151f);
        parcel.writeString(this.f16152g);
        parcel.writeByteArray(this.f16153h);
    }
}
