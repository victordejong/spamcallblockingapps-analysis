package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame.class */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new C1982a();

    /* renamed from: b */
    public final String f4935b;

    /* renamed from: c */
    public final String f4936c;

    /* renamed from: d */
    public final String f4937d;

    /* renamed from: e */
    public final byte[] f4938e;

    /* renamed from: com.google.android.exoplayer2.metadata.id3.GeobFrame$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/id3/GeobFrame$a.class */
    public static final class C1982a implements Parcelable.Creator<GeobFrame> {
        @Override // android.os.Parcelable.Creator
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    }

    public GeobFrame(Parcel parcel) {
        super("GEOB");
        String readString = parcel.readString();
        int i = C24773d0.f69427a;
        this.f4935b = readString;
        this.f4936c = parcel.readString();
        this.f4937d = parcel.readString();
        this.f4938e = parcel.createByteArray();
    }

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f4935b = str;
        this.f4936c = str2;
        this.f4937d = str3;
        this.f4938e = bArr;
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
        if (!C24773d0.m4623a(this.f4935b, geobFrame.f4935b) || !C24773d0.m4623a(this.f4936c, geobFrame.f4936c) || !C24773d0.m4623a(this.f4937d, geobFrame.f4937d) || !Arrays.equals(this.f4938e, geobFrame.f4938e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f4935b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f4936c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f4937d;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return Arrays.hashCode(this.f4938e) + ((((((527 + hashCode) * 31) + hashCode2) * 31) + i) * 31);
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame
    public String toString() {
        return this.f4939a + ": mimeType=" + this.f4935b + ", filename=" + this.f4936c + ", description=" + this.f4937d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4935b);
        parcel.writeString(this.f4936c);
        parcel.writeString(this.f4937d);
        parcel.writeByteArray(this.f4938e);
    }
}
